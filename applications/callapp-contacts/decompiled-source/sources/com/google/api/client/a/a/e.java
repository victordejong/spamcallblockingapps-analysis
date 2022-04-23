package com.google.api.client.a.a;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/a/e.class */
public abstract class e extends b {
    private static char[] a(char[] cArr, int i, int i2) {
        char[] cArr2 = new char[i2];
        if (i > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i);
        }
        return cArr2;
    }

    protected abstract int a(CharSequence charSequence, int i, int i2);

    /* JADX INFO: Access modifiers changed from: protected */
    public final String a(String str, int i) {
        int length = str.length();
        char[] a2 = d.a();
        int i2 = 0;
        int i3 = 0;
        int i4 = i;
        while (i4 < length) {
            if (i4 < length) {
                int i5 = i4 + 1;
                char charAt = str.charAt(i4);
                int i6 = 1;
                int i7 = charAt;
                if (charAt >= 55296) {
                    if (charAt > 57343) {
                        i7 = charAt;
                    } else if (charAt > 56319) {
                        throw new IllegalArgumentException("Unexpected low surrogate character '" + charAt + "' with value " + ((int) charAt) + " at index " + (i5 - 1));
                    } else if (i5 == length) {
                        i7 = -charAt;
                    } else {
                        char charAt2 = str.charAt(i5);
                        if (Character.isLowSurrogate(charAt2)) {
                            i7 = Character.toCodePoint(charAt, charAt2);
                        } else {
                            throw new IllegalArgumentException("Expected low surrogate but got char '" + charAt2 + "' with value " + ((int) charAt2) + " at index " + i5);
                        }
                    }
                }
                if (i7 >= 0) {
                    char[] a3 = a(i7);
                    if (Character.isSupplementaryCodePoint(i7)) {
                        i6 = 2;
                    }
                    int i8 = i6 + i4;
                    a2 = a2;
                    i2 = i2;
                    i3 = i3;
                    if (a3 != null) {
                        int i9 = i4 - i2;
                        int i10 = i3 + i9;
                        int length2 = a3.length + i10;
                        a2 = a2;
                        if (a2.length < length2) {
                            a2 = a(a2, i3, ((length2 + length) - i4) + 32);
                        }
                        int i11 = i3;
                        if (i9 > 0) {
                            str.getChars(i2, i4, a2, i3);
                            i11 = i10;
                        }
                        i3 = i11;
                        if (a3.length > 0) {
                            System.arraycopy(a3, 0, a2, i11, a3.length);
                            i3 = i11 + a3.length;
                        }
                        i2 = i8;
                    }
                    i4 = a(str, i8, length);
                } else {
                    throw new IllegalArgumentException("Trailing high surrogate at end of input");
                }
            } else {
                throw new IndexOutOfBoundsException("Index exceeds specified range");
            }
        }
        int i12 = length - i2;
        char[] cArr = a2;
        int i13 = i3;
        if (i12 > 0) {
            i13 = i12 + i3;
            cArr = a2;
            if (a2.length < i13) {
                cArr = a(a2, i3, i13);
            }
            str.getChars(i2, length, cArr, i3);
        }
        return new String(cArr, 0, i13);
    }

    protected abstract char[] a(int i);
}
