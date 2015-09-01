function compile() {
  SCSS_FILE="src/"$1;
  CSS_FILE="build/"$2;
  MIN_CSS_FILE="build/"$( echo ${2%.*}.min.css);
  sass ${SCSS_FILE} ${CSS_FILE} --style expanded --sourcemap=none
  sass ${SCSS_FILE} ${MIN_CSS_FILE} --style compressed --sourcemap=none
}

compile formidable.scss formidable.css
compile themes/lighty.scss formidable-lighty.css