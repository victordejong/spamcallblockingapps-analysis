package org.simpleframework.xml.stream;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/stream/Splitter.class */
abstract class Splitter {
    protected StringBuilder builder = new StringBuilder();
    protected int count;
    protected int off;
    protected char[] text;

    public Splitter(String str) {
        char[] charArray = str.toCharArray();
        this.text = charArray;
        this.count = charArray.length;
    }

    private boolean acronym() {
        int i = this.off;
        boolean z = false;
        int i2 = 0;
        while (i < this.count && isUpper(this.text[i])) {
            i2++;
            i++;
        }
        if (i2 > 1) {
            int i3 = i;
            if (i < this.count) {
                i3 = i;
                if (isUpper(this.text[i - 1])) {
                    i3 = i - 1;
                }
            }
            char[] cArr = this.text;
            int i4 = this.off;
            commit(cArr, i4, i3 - i4);
            this.off = i3;
        }
        if (i2 > 1) {
            z = true;
        }
        return z;
    }

    private boolean isDigit(char c) {
        return Character.isDigit(c);
    }

    private boolean isLetter(char c) {
        return Character.isLetter(c);
    }

    private boolean isSpecial(char c) {
        return !Character.isLetterOrDigit(c);
    }

    private boolean isUpper(char c) {
        return Character.isUpperCase(c);
    }

    private boolean number() {
        int i = this.off;
        boolean z = false;
        int i2 = 0;
        while (i < this.count && isDigit(this.text[i])) {
            i2++;
            i++;
        }
        if (i2 > 0) {
            char[] cArr = this.text;
            int i3 = this.off;
            commit(cArr, i3, i - i3);
        }
        this.off = i;
        if (i2 > 0) {
            z = true;
        }
        return z;
    }

    private void token() {
        int i = this.off;
        while (i < this.count) {
            char c = this.text[i];
            if (!isLetter(c) || (i > this.off && isUpper(c))) {
                break;
            }
            i++;
        }
        int i2 = this.off;
        if (i > i2) {
            parse(this.text, i2, i - i2);
            char[] cArr = this.text;
            int i3 = this.off;
            commit(cArr, i3, i - i3);
        }
        this.off = i;
    }

    protected abstract void commit(char[] cArr, int i, int i2);

    protected abstract void parse(char[] cArr, int i, int i2);

    public String process() {
        while (this.off < this.count) {
            while (true) {
                int i = this.off;
                if (i >= this.count || !isSpecial(this.text[i])) {
                    break;
                }
                this.off++;
            }
            if (!acronym()) {
                token();
                number();
            }
        }
        return this.builder.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public char toLower(char c) {
        return Character.toLowerCase(c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public char toUpper(char c) {
        return Character.toUpperCase(c);
    }
}
