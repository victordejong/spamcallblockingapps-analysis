package org.spongycastle.asn1.x509;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x509/X509NameTokenizer.class */
public class X509NameTokenizer {
    private StringBuffer buf;
    private int index;
    private char separator;
    private String value;

    public X509NameTokenizer(String str) {
        this(str, ',');
    }

    public X509NameTokenizer(String str, char c) {
        this.buf = new StringBuffer();
        this.value = str;
        this.index = -1;
        this.separator = c;
    }

    public boolean hasMoreTokens() {
        return this.index != this.value.length();
    }

    public String nextToken() {
        if (this.index == this.value.length()) {
            return null;
        }
        int i = this.index + 1;
        this.buf.setLength(0);
        boolean z = false;
        boolean z2 = false;
        while (i != this.value.length()) {
            char charAt = this.value.charAt(i);
            if (charAt == '\"') {
                z2 = z2;
                if (!z) {
                    z2 = !z2;
                }
                this.buf.append(charAt);
            } else if (z || z2) {
                this.buf.append(charAt);
            } else {
                if (charAt == '\\') {
                    this.buf.append(charAt);
                    z = true;
                } else if (charAt == this.separator) {
                    break;
                } else {
                    this.buf.append(charAt);
                    z = z;
                }
                i++;
            }
            z = false;
            i++;
        }
        this.index = i;
        return this.buf.toString();
    }
}
