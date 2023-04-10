function peco_checkout_pull_request
  if test -n $query
    set peco_flags --query "$query"
  end

  gh pr list | peco $peco_flags | awk '{ print $1 }' | read line

  if [ $line ]
    gh pr checkout $line
  end
end
