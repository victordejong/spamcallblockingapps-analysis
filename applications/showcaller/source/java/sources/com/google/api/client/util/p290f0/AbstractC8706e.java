package com.google.api.client.util.p290f0;
/* renamed from: com.google.api.client.util.f0.e */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/f0/e.class */
public abstract class AbstractC8706e extends AbstractC8702b {
    /* renamed from: b */
    protected static int m2898b(CharSequence charSequence, int i, int i2) {
        if (i < i2) {
            int i3 = i + 1;
            char charAt = charSequence.charAt(i);
            if (charAt < 55296 || charAt > 57343) {
                return charAt;
            }
            if (charAt > 56319) {
                throw new IllegalArgumentException("Unexpected low surrogate character '" + charAt + "' with value " + ((int) charAt) + " at index " + (i3 - 1));
            } else if (i3 == i2) {
                return -charAt;
            } else {
                char charAt2 = charSequence.charAt(i3);
                if (Character.isLowSurrogate(charAt2)) {
                    return Character.toCodePoint(charAt, charAt2);
                }
                throw new IllegalArgumentException("Expected low surrogate but got char '" + charAt2 + "' with value " + ((int) charAt2) + " at index " + i3);
            }
        }
        throw new IndexOutOfBoundsException("Index exceeds specified range");
    }

    /* renamed from: e */
    private static char[] m2895e(char[] cArr, int i, int i2) {
        char[] cArr2 = new char[i2];
        if (i > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i);
        }
        return cArr2;
    }

    /* renamed from: c */
    protected abstract char[] mo2897c(int i);

    /* renamed from: d */
    public final String m2896d(String str, int i) {
        int length = str.length();
        char[] m2900a = C8704d.m2900a();
        int i2 = 0;
        int i3 = 0;
        int i4 = i;
        while (true) {
            int i5 = i3;
            if (i4 >= length) {
                int i6 = length - i2;
                char[] cArr = m2900a;
                int i7 = i5;
                if (i6 > 0) {
                    i7 = i6 + i5;
                    cArr = m2900a;
                    if (m2900a.length < i7) {
                        cArr = m2895e(m2900a, i5, i7);
                    }
                    str.getChars(i2, length, cArr, i5);
                }
                return new String(cArr, 0, i7);
            }
            int m2898b = m2898b(str, i4, length);
            if (m2898b < 0) {
                throw new IllegalArgumentException("Trailing high surrogate at end of input");
            }
            char[] mo2897c = mo2897c(m2898b);
            int i8 = (Character.isSupplementaryCodePoint(m2898b) ? 2 : 1) + i4;
            char[] cArr2 = m2900a;
            int i9 = i2;
            i3 = i5;
            if (mo2897c != null) {
                int i10 = i4 - i2;
                int i11 = i5 + i10;
                int length2 = mo2897c.length + i11;
                cArr2 = m2900a;
                if (m2900a.length < length2) {
                    cArr2 = m2895e(m2900a, i5, ((length2 + length) - i4) + 32);
                }
                int i12 = i5;
                if (i10 > 0) {
                    str.getChars(i2, i4, cArr2, i5);
                    i12 = i11;
                }
                int i13 = i12;
                if (mo2897c.length > 0) {
                    System.arraycopy(mo2897c, 0, cArr2, i12, mo2897c.length);
                    i13 = i12 + mo2897c.length;
                }
                i9 = i8;
                i3 = i13;
            }
            i4 = mo2894f(str, i8, length);
            m2900a = cArr2;
            i2 = i9;
        }
    }

    /* renamed from: f */
    protected abstract int mo2894f(CharSequence charSequence, int i, int i2);
}
