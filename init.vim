let mapleader =" "

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('$HOME/.config/nvim/autoload/')
Plug 'vim-airline/vim-airline'
Plug 'gabrielelana/vim-markdown'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'kovetskiy/sxhkd-vim'
Plug 'vim-python/python-syntax'
Plug 'ryanoasis/vim-devicons'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'lervag/vimtex'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'folke/zen-mode.nvim'
Plug 'vimwiki/vimwiki'
call plug#end()

set number relativenumber
set path+=**
set showcmd
syntax enable
set noshowmode
set wildmenu
set incsearch
set hidden
set clipboard=unnamedplus
set nobackup
set nocompatible
set showmatch
set expandtab
filetype indent on
set laststatus=2
set lazyredraw
set tabstop=4
set softtabstop=4
let g:python_highlight_all = 1
colorscheme gruvbox
set background=dark
set encoding=utf-8

let g:Hexokinase_highlighters = [ 'backgroundfull' ]

nnoremap c
nmap <leader>c :w! \| !compiler "<c-r>%"<CR>

let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	map <leader>v :VimwikiIndex<CR>
	let g:vimwiki_list = [{'path': '~/.local/share/nvim/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]

map <leader>zz :ZenMode<CR>
