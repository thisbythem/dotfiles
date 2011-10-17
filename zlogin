export PATH="/usr/local/php5/bin:/usr/local/apache2/sbin:/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/local/mysql/bin:/usr/local/subversion/bin:/Developer/SDKs/flex_sdk_3/bin:~/Scripts:/usr/local/share/npm/bin:$PATH"
export CC=/usr/bin/gcc-4.2

# adds the current branch name in green
git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo "[%{$fg_bold[green]%}${ref#refs/heads/}%{$reset_color%}]"
  fi
}

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1

# expand functions in the prompt
setopt prompt_subst

# prompt
export PS1='$(git_prompt_info)[${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%~%{$reset_color%}] '

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

export PATH="./bin:$PATH"
