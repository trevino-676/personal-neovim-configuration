call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-surround'
Plug 'joshdick/onedark.vim' " Tema que se usa actualmente
Plug 'scrooloose/nerdtree' " Arbol de documentos
Plug 'vim-airline/vim-airline' " Barra de estado inferior
Plug 'vim-airline/vim-airline-themes' " Temas para airline
Plug 'Yggdroot/indentLine' " Guias de identacion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax' " Fuente general de auto completado
Plug 'ervandew/supertab' " Permite navegar entre las sugerencias de deoplete con tab
Plug 'Shougo/echodoc.vim' " Muestra la firma de la funcion actual
Plug 'w0rp/ale' " Muestra los errores del codigo
Plug 'jiangmiao/auto-pairs' " Cierra automaticamente las comillas, parentesis, etc.
Plug 'scrooloose/nerdcommenter' " Facilita agregar y quitar comentario
Plug 'tpope/vim-fugitive'
call plug#end()

set relativenumber
set title
set mouse=a

set nowrap

set cursorline
set colorcolumn=90

" identacion a 4 espacios
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab

set hidden

set ignorecase
set smartcase

set spelllang=en,es

set termguicolors
set background=dark
colorscheme onedark

let g:mapleader = ' '

nnoremap <leader>s :w<CR>
nnoremap <leader>e :e $MYVIMRC<CR>
nnoremap <leader>r :so $MYVIMRC<CR>
nnoremap <leader>z :PlugInstall<CR>

" Copiar en el portapapeles
vnoremap <leader>y 
nnoremap <leader>y

" Cortar en el portapapeles
vnoremap <leader>d
nnoremap <leader>d

" Pegar en el portapapeles
nnoremap <leader>p
vnoremap <leader>p
nnoremap <leader>P
vnoremap <leader>P

" Mover al buffer siguiente
nnoremap <leader>l :bnext<CR>

" Mover al buffer anterior
nnoremap <leader>j :bprevious<CR>

" Cerrar al buffer actual
nnoremap <leader>q :bdelete<CR>

" Configuracion para nerdtree
let g:NERDTreeChDirMode = 2 " Cambia el directorio actual al nodo padre actual

" Abrir/cerrar NERDTree con F2
map <F2> :NERDTreeToggle<CR>

" Configuracion de airline
let g:airline#extensions#tabline#enabled = 1 " Mostrar los buffers abiertos
let g:airline#extensions#tabline#fnamemod = ':t' " Mostrar solo el nombre del archivo

" Cargar fuente Powerline y simbolos
" let g:airline_powerline_fonts = 1
set noshowmode

" Configuracion de indentLine
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" Configuracion de deoplete (autocompletado)
" Activar deoplete al inicio de nvim
let g:deoplete#enable_at_startup = 1

" Cerrar automaticamente la ventana de vista previa (donde se muestra la
" documentacion)
augroup deopleteCompleteDoneAu
    autocmd!
    autocmd CompleteDone * silent! pclose!
augroup END

" Configuracion de supertab
let g:SuperTabDefaultCompletionType = '<c-n>'

" Configuracion de echodoc
let g:echodoc_enable_at_startup = 1

" Configuracion de ALE
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Configuracion de nerdcommenter
let g:NERDSpaceDelims = 1 " Agregar un espacio despues del delimitador de columnas
let g:NERDTrimTrailingWhitespace = 1 " Quitar espacios al quitar el comentario


" Shortcouts para git
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
