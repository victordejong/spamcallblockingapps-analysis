package com.google.b.a.a.a;
/* loaded from: classes-dex2jar.jar:com/google/b/a/a/a/b.class */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<char[]> f4430a = new ThreadLocal<char[]>() { // from class: com.google.b.a.a.a.b.1
        @Override // java.lang.ThreadLocal
        protected final /* bridge */ /* synthetic */ char[] initialValue() {
            return new char[1024];
        }
    };

    private static final char[] a(char[] cArr, int i, int i2) {
        char[] cArr2 = new char[i2];
        if (i > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i);
        }
        return cArr2;
    }

    private static int b(CharSequence charSequence, int i, int i2) {
        if (i < i2) {
            int i3 = i + 1;
            char charAt = charSequence.charAt(i);
            int i4 = charAt;
            if (charAt >= 55296) {
                if (charAt > 57343) {
                    i4 = charAt;
                } else if (charAt > 56319) {
                    throw new IllegalArgumentException("Unexpected low surrogate character '" + charAt + "' with value " + ((int) charAt) + " at index " + (i3 - 1));
                } else if (i3 == i2) {
                    i4 = -charAt;
                } else {
                    char charAt2 = charSequence.charAt(i3);
                    if (Character.isLowSurrogate(charAt2)) {
                        i4 = Character.toCodePoint(charAt, charAt2);
                    } else {
                        throw new IllegalArgumentException("Expected low surrogate but got char '" + charAt2 + "' with value " + ((int) charAt2) + " at index " + i3);
                    }
                }
            }
            return i4;
        }
        throw new IndexOutOfBoundsException("Index exceeds specified range");
    }

    protected int a(CharSequence charSequence, int i, int i2) {
        int b2;
        while (i < i2 && (b2 = b(charSequence, i, i2)) >= 0 && a(b2) == null) {
            i += Character.isSupplementaryCodePoint(b2) ? 2 : 1;
        }
        return i;
    }

    public String a(String str) {
        int length = str.length();
        int a2 = a(str, 0, length);
        if (a2 != length) {
            str = a(str, a2);
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String a(String str, int i) {
        int i2;
        int length = str.length();
        char[] cArr = f4430a.get();
        int i3 = 0;
        int i4 = 0;
        int i5 = i;
        while (i5 < length) {
            int b2 = b(str, i5, length);
            if (b2 < 0) {
                throw new IllegalArgumentException("Trailing high surrogate at end of input");
            }
            char[] a2 = a(b2);
            if (a2 != null) {
                int i6 = i5 - i3;
                int length2 = i4 + i6 + a2.length;
                char[] cArr2 = cArr;
                if (cArr.length < length2) {
                    cArr2 = a(cArr, i4, length2 + (length - i5) + 32);
                }
                if (i6 > 0) {
                    str.getChars(i3, i5, cArr2, i4);
                    i2 = i6 + i4;
                } else {
                    i2 = i4;
                }
                i4 = i2;
                cArr = cArr2;
                if (a2.length > 0) {
                    System.arraycopy(a2, 0, cArr2, i2, a2.length);
                    i4 = i2 + a2.length;
                    cArr = cArr2;
                }
            }
            i3 = i5 + (Character.isSupplementaryCodePoint(b2) ? 2 : 1);
            i5 = a(str, i3, length);
        }
        int i7 = length - i3;
        int i8 = i4;
        char[] cArr3 = cArr;
        if (i7 > 0) {
            i8 = i7 + i4;
            cArr3 = cArr;
            if (cArr.length < i8) {
                cArr3 = a(cArr, i4, i8);
            }
            str.getChars(i3, length, cArr3, i4);
        }
        return new String(cArr3, 0, i8);
    }

    protected abstract char[] a(int i);
}
