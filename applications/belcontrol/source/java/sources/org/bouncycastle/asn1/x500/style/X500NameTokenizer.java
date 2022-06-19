package org.bouncycastle.asn1.x500.style;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x500/style/X500NameTokenizer.class */
public class X500NameTokenizer {
    private StringBuffer buf;
    private int index;
    private char seperator;
    private String value;

    public X500NameTokenizer(String str) {
        this(str, ',');
    }

    public X500NameTokenizer(String str, char c) {
        this.buf = new StringBuffer();
        this.value = str;
        this.index = -1;
        this.seperator = c;
    }

    public boolean hasMoreTokens() {
        return this.index != this.value.length();
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0097, code lost:
        if (r0.charAt(r0.length() - 1) == '=') goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009a, code lost:
        r4.buf.append('\\');
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b4, code lost:
        if (r4.seperator != '+') goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String nextToken() {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x500.style.X500NameTokenizer.nextToken():java.lang.String");
    }
}
