TEX = main.tex
PDF = main.pdf

.PHONY: all clean distclean

all: $(PDF)

$(PDF): $(TEX) assets/portas.jpg
	latexmk -pdf -interaction=nonstopmode -halt-on-error $(TEX)

clean:
	latexmk -c $(TEX)

distclean:
	latexmk -C $(TEX)
