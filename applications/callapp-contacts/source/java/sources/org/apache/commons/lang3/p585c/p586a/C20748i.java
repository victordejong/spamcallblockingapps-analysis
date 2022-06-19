package org.apache.commons.lang3.p585c.p586a;

import java.io.IOException;
import java.io.Writer;
@Deprecated
/* renamed from: org.apache.commons.lang3.c.a.i */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/i.class */
public final class C20748i extends AbstractC20740b {
    /* renamed from: a */
    private static boolean m535a(char c) {
        return c >= '0' && c <= '7';
    }

    @Override // org.apache.commons.lang3.p585c.p586a.AbstractC20740b
    /* renamed from: a */
    public final int mo515a(CharSequence charSequence, int i, Writer writer) throws IOException {
        int length = (charSequence.length() - i) - 1;
        StringBuilder sb = new StringBuilder();
        if (charSequence.charAt(i) != '\\' || length <= 0) {
            return 0;
        }
        int i2 = i + 1;
        if (!m535a(charSequence.charAt(i2))) {
            return 0;
        }
        int i3 = i + 2;
        int i4 = i + 3;
        sb.append(charSequence.charAt(i2));
        if (length > 1 && m535a(charSequence.charAt(i3))) {
            sb.append(charSequence.charAt(i3));
            if (length > 2) {
                char charAt = charSequence.charAt(i2);
                boolean z = false;
                if (charAt >= '0') {
                    z = false;
                    if (charAt <= '3') {
                        z = true;
                    }
                }
                if (z && m535a(charSequence.charAt(i4))) {
                    sb.append(charSequence.charAt(i4));
                }
            }
        }
        writer.write(Integer.parseInt(sb.toString(), 8));
        return sb.length() + 1;
    }
}
