package org.apache.commons.lang3.p585c.p586a;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Locale;
@Deprecated
/* renamed from: org.apache.commons.lang3.c.a.b */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/b.class */
public abstract class AbstractC20740b {

    /* renamed from: a */
    static final char[] f67220a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    public static String m553a(int i) {
        return Integer.toHexString(i).toUpperCase(Locale.ENGLISH);
    }

    /* renamed from: a */
    private void m551a(CharSequence charSequence, Writer writer) throws IOException {
        if (charSequence == null) {
            return;
        }
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int mo515a = mo515a(charSequence, i, writer);
            if (mo515a == 0) {
                char charAt = charSequence.charAt(i);
                writer.write(charAt);
                int i2 = i + 1;
                i = i2;
                if (Character.isHighSurrogate(charAt)) {
                    i = i2;
                    if (i2 < length) {
                        char charAt2 = charSequence.charAt(i2);
                        i = i2;
                        if (Character.isLowSurrogate(charAt2)) {
                            writer.write(charAt2);
                            i = i2 + 1;
                        }
                    }
                }
            } else {
                int i3 = 0;
                int i4 = i;
                while (true) {
                    i = i4;
                    if (i3 < mo515a) {
                        i4 += Character.charCount(Character.codePointAt(charSequence, i4));
                        i3++;
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public abstract int mo515a(CharSequence charSequence, int i, Writer writer) throws IOException;

    /* renamed from: a */
    public final String m552a(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        try {
            StringWriter stringWriter = new StringWriter(charSequence.length() * 2);
            m551a(charSequence, stringWriter);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    public final AbstractC20740b m550a(AbstractC20740b... abstractC20740bArr) {
        AbstractC20740b[] abstractC20740bArr2 = new AbstractC20740b[2];
        abstractC20740bArr2[0] = this;
        System.arraycopy(abstractC20740bArr, 0, abstractC20740bArr2, 1, 1);
        return new C20739a(abstractC20740bArr2);
    }
}
