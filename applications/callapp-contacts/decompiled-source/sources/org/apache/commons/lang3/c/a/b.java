package org.apache.commons.lang3.c.a;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Locale;
@Deprecated
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/b.class */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    static final char[] f39153a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static String a(int i) {
        return Integer.toHexString(i).toUpperCase(Locale.ENGLISH);
    }

    private void a(CharSequence charSequence, Writer writer) throws IOException {
        if (charSequence != null) {
            int length = charSequence.length();
            int i = 0;
            while (i < length) {
                int a2 = a(charSequence, i, writer);
                if (a2 == 0) {
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
                        if (i3 < a2) {
                            i4 += Character.charCount(Character.codePointAt(charSequence, i4));
                            i3++;
                        }
                    }
                }
            }
        }
    }

    public abstract int a(CharSequence charSequence, int i, Writer writer) throws IOException;

    public final String a(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        try {
            StringWriter stringWriter = new StringWriter(charSequence.length() * 2);
            a(charSequence, stringWriter);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public final b a(b... bVarArr) {
        b[] bVarArr2 = new b[2];
        bVarArr2[0] = this;
        System.arraycopy(bVarArr, 0, bVarArr2, 1, 1);
        return new a(bVarArr2);
    }
}
