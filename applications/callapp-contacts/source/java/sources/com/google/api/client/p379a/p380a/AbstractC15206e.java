package com.google.api.client.p379a.p380a;
/* renamed from: com.google.api.client.a.a.e */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/a/e.class */
public abstract class AbstractC15206e extends AbstractC15202b {
    /* renamed from: a */
    private static char[] m9284a(char[] cArr, int i, int i2) {
        char[] cArr2 = new char[i2];
        if (i > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i);
        }
        return cArr2;
    }

    /* renamed from: a */
    protected abstract int mo9286a(CharSequence charSequence, int i, int i2);

    /* renamed from: a */
    public final String m9285a(String str, int i) {
        int length = str.length();
        char[] m9288a = C15204d.m9288a();
        int i2 = 0;
        int i3 = 0;
        int i4 = i;
        while (true) {
            int i5 = i3;
            if (i4 >= length) {
                int i6 = length - i2;
                char[] cArr = m9288a;
                int i7 = i5;
                if (i6 > 0) {
                    i7 = i6 + i5;
                    cArr = m9288a;
                    if (m9288a.length < i7) {
                        cArr = m9284a(m9288a, i5, i7);
                    }
                    str.getChars(i2, length, cArr, i5);
                }
                return new String(cArr, 0, i7);
            } else if (i4 >= length) {
                throw new IndexOutOfBoundsException("Index exceeds specified range");
            } else {
                int i8 = i4 + 1;
                char charAt = str.charAt(i4);
                int i9 = 1;
                char c = charAt;
                if (charAt >= 55296) {
                    if (charAt > 57343) {
                        c = charAt;
                    } else if (charAt > 56319) {
                        throw new IllegalArgumentException("Unexpected low surrogate character '" + charAt + "' with value " + ((int) charAt) + " at index " + (i8 - 1));
                    } else if (i8 == length) {
                        c = -charAt;
                    } else {
                        char charAt2 = str.charAt(i8);
                        if (!Character.isLowSurrogate(charAt2)) {
                            throw new IllegalArgumentException("Expected low surrogate but got char '" + charAt2 + "' with value " + ((int) charAt2) + " at index " + i8);
                        }
                        c = Character.toCodePoint(charAt, charAt2);
                    }
                }
                if (c < 0) {
                    throw new IllegalArgumentException("Trailing high surrogate at end of input");
                }
                char[] mo9287a = mo9287a(c);
                if (Character.isSupplementaryCodePoint(c)) {
                    i9 = 2;
                }
                int i10 = i9 + i4;
                char[] cArr2 = m9288a;
                int i11 = i2;
                i3 = i5;
                if (mo9287a != null) {
                    int i12 = i4 - i2;
                    int i13 = i5 + i12;
                    int length2 = mo9287a.length + i13;
                    cArr2 = m9288a;
                    if (m9288a.length < length2) {
                        cArr2 = m9284a(m9288a, i5, ((length2 + length) - i4) + 32);
                    }
                    int i14 = i5;
                    if (i12 > 0) {
                        str.getChars(i2, i4, cArr2, i5);
                        i14 = i13;
                    }
                    int i15 = i14;
                    if (mo9287a.length > 0) {
                        System.arraycopy(mo9287a, 0, cArr2, i14, mo9287a.length);
                        i15 = i14 + mo9287a.length;
                    }
                    i11 = i10;
                    i3 = i15;
                }
                i4 = mo9286a(str, i10, length);
                m9288a = cArr2;
                i2 = i11;
            }
        }
    }

    /* renamed from: a */
    protected abstract char[] mo9287a(int i);
}
