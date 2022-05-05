package org.spongycastle.i18n.filter;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/i18n/filter/SQLFilter.class */
public class SQLFilter implements Filter {
    @Override // org.spongycastle.i18n.filter.Filter
    public String doFilter(String str) {
        StringBuffer stringBuffer = new StringBuffer(str);
        int i = 0;
        while (i < stringBuffer.length()) {
            char charAt = stringBuffer.charAt(i);
            if (charAt == '\n') {
                int i2 = i + 1;
                stringBuffer.replace(i, i2, "\\n");
                i = i2;
            } else if (charAt == '\r') {
                int i3 = i + 1;
                stringBuffer.replace(i, i3, "\\r");
                i = i3;
            } else if (charAt == '\"') {
                int i4 = i + 1;
                stringBuffer.replace(i, i4, "\\\"");
                i = i4;
            } else if (charAt == '\'') {
                int i5 = i + 1;
                stringBuffer.replace(i, i5, "\\'");
                i = i5;
            } else if (charAt == '-') {
                int i6 = i + 1;
                stringBuffer.replace(i, i6, "\\-");
                i = i6;
            } else if (charAt == '/') {
                int i7 = i + 1;
                stringBuffer.replace(i, i7, "\\/");
                i = i7;
            } else if (charAt == ';') {
                int i8 = i + 1;
                stringBuffer.replace(i, i8, "\\;");
                i = i8;
            } else if (charAt == '=') {
                int i9 = i + 1;
                stringBuffer.replace(i, i9, "\\=");
                i = i9;
            } else if (charAt == '\\') {
                int i10 = i + 1;
                stringBuffer.replace(i, i10, "\\\\");
                i = i10;
            }
            i++;
        }
        return stringBuffer.toString();
    }

    @Override // org.spongycastle.i18n.filter.Filter
    public String doFilterUrl(String str) {
        return doFilter(str);
    }
}
