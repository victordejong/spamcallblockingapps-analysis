package org.apache.commons.lang3.p585c.p586a;

import java.io.IOException;
import java.io.Writer;
@Deprecated
/* renamed from: org.apache.commons.lang3.c.a.k */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/k.class */
public final class C20750k extends AbstractC20740b {
    @Override // org.apache.commons.lang3.p585c.p586a.AbstractC20740b
    /* renamed from: a */
    public final int mo515a(CharSequence charSequence, int i, Writer writer) throws IOException {
        int i2;
        int i3;
        if (charSequence.charAt(i) == '\\' && (i2 = i + 1) < charSequence.length() && charSequence.charAt(i2) == 'u') {
            int i4 = 2;
            while (true) {
                i3 = i + i4;
                if (i3 >= charSequence.length() || charSequence.charAt(i3) != 'u') {
                    break;
                }
                i4++;
            }
            int i5 = i4;
            if (i3 < charSequence.length()) {
                i5 = i4;
                if (charSequence.charAt(i3) == '+') {
                    i5 = i4 + 1;
                }
            }
            int i6 = i + i5;
            int i7 = i6 + 4;
            if (i7 > charSequence.length()) {
                throw new IllegalArgumentException("Less than 4 hex digits in unicode value: '" + ((Object) charSequence.subSequence(i, charSequence.length())) + "' due to end of CharSequence");
            }
            CharSequence subSequence = charSequence.subSequence(i6, i7);
            try {
                writer.write((char) Integer.parseInt(subSequence.toString(), 16));
                return i5 + 4;
            } catch (NumberFormatException e) {
                throw new IllegalArgumentException("Unable to parse unicode value: ".concat(String.valueOf(subSequence)), e);
            }
        }
        return 0;
    }
}
