#!/bin/bash
sudo apt install -y update
wait$!
sudo apt install -y tree python3-pip git 
sudo python3 -m pip install flake8 venv pipenv
sudo git clone https://github.com/w0rp/ale.git ~/.vim/pack/git-plugins/start/ale
echo -e set number\\nset nocompatible\\nsyntax enable\\nfiletype plugin indent on\\nautocmd FileType python set omnifunc=syntaxcomplete#Complete\\ncolorscheme slate\\nlet g:ale_sign_column_always = 1\\nlet g:ale_completion_enabled = 1 > .vimrc
