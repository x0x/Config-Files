""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin("~/.config/nvim/plugged")
        Plug 'scrooloose/nerdtree'
        Plug 'neoclide/coc.nvim'
        Plug 'morhetz/gruvbox'
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.4'}
        Plug 'ryanoasis/vim-devicons'
        Plug 'szw/vim-maximizer'
        Plug 'christoomey/vim-tmux-navigator'
        Plug 'catppuccin/vim', { 'as': 'catppuccin' }
        Plug 'Pocco81/auto-save.nvim'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
syntax on
set nocompatible
set encoding=utf-8
set updatetime=300
set signcolumn=yes
set showmatch
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set textwidth=85
set relativenumber
set clipboard=unnamedplus
set noswapfile
set background=dark
set nobackup
set foldmethod=syntax
set nowritebackup
set termguicolors
colorscheme gruvbox
let g:airline_theme='gruvbox'
"let g:lightline = {'colorscheme': 'catppuccin_mocha'}
let mapleader=" "

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Splits
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Remap splits navigation to just <C> + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusting split size a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz & vice versa
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" templates
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufRead,BufNewFile *.cpp if filereadable(expand("~/.config/nvim/templates/template.cpp")) 
    \ && getline(1) == '' 
    \ | execute "0r ~/.config/nvim/templates/template.cpp" 
    \ | execute "normal! 4G"
    \ | endif

autocmd BufRead,BufNewFile *.go if filereadable(expand("~/.config/nvim/templates/template.go")) 
    \ && getline(1) == '' 
    \ | execute "0r ~/.config/nvim/templates/template.go" 
    \ | execute "normal! 22G"
    \ | endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tmux_nagigator mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:tmux_navigator_no_mappings = 1

noremap <silent> <C-h> :<C-U>TmuxNavigateLeft<cr>
noremap <silent> <C-j> :<C-U>TmuxNavigateDown<cr>
noremap <silent> <C-k> :<C-U>TmuxNavigateUp<cr>
noremap <silent> <C-l> :<C-U>TmuxNavigateRight<cr>
noremap <silent> <C-p> :<C-U>TmuxNavigatePrevious<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>nt :NERDTreeToggle<CR> 
let g:NERDTreeWinSize=40
let g:NERDTreeFileLines=1
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1
        \ && exists('b:NERDTree') && b:NERDTree.isTabTree() 
        \ | quit | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Telescope 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fr <cmd>Telescope registers<cr>
nnoremap <leader>fgc <cmd>Telescope git_commits<cr>
nnoremap <leader>fgst <cmd>Telescope git_stash<cr>
nnoremap <leader>fgs <cmd>Telescope git_status<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" lsp 
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add missing


let g:NerdTreeDirArrowExpandable="+"
let g:NerdTreeDirArrowCollapsible="~"

