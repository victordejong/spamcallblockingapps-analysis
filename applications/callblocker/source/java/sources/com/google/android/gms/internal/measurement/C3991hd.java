package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.hd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/hd.class */
public final class C3991hd {

    /* renamed from: a */
    private static final AbstractC3992he f18270a;

    static {
        f18270a = (!(C3984ha.m5299a() && C3984ha.m5286b()) || C3856cq.m5819a()) ? new C3995hh() : new C3997hj();
    }

    /* renamed from: a */
    public static int m5243a(CharSequence charSequence) {
        int i;
        int i2 = 0;
        int length = charSequence.length();
        int i3 = 0;
        while (i3 < length && charSequence.charAt(i3) < 128) {
            i3++;
        }
        int i4 = length;
        while (true) {
            if (i3 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i3);
            if (charAt < 2048) {
                i4 += (127 - charAt) >>> 31;
                i3++;
            } else {
                int length2 = charSequence.length();
                while (i3 < length2) {
                    char charAt2 = charSequence.charAt(i3);
                    if (charAt2 < 2048) {
                        i2 += (127 - charAt2) >>> 31;
                        i = i3;
                    } else {
                        int i5 = i2 + 2;
                        i = i3;
                        i2 = i5;
                        if (55296 <= charAt2) {
                            i = i3;
                            i2 = i5;
                            if (charAt2 > 57343) {
                                continue;
                            } else if (Character.codePointAt(charSequence, i3) < 65536) {
                                throw new C3994hg(i3, length2);
                            } else {
                                i = i3 + 1;
                                i2 = i5;
                            }
                        } else {
                            continue;
                        }
                    }
                    i3 = i + 1;
                }
                i4 += i2;
            }
        }
        if (i4 < length) {
            throw new IllegalArgumentException(new StringBuilder(54).append("UTF-8 length does not fit in int: ").append(i4 + 4294967296L).toString());
        }
        return i4;
    }

    /* renamed from: a */
    public static int m5242a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f18270a.mo5216a(charSequence, bArr, i, i2);
    }

    /* renamed from: a */
    public static boolean m5241a(byte[] bArr) {
        return f18270a.m5233a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static boolean m5240a(byte[] bArr, int i, int i2) {
        return f18270a.m5233a(bArr, i, i2);
    }

    /* renamed from: b */
    public static int m5239b(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: b */
    public static int m5238b(int i, int i2) {
        return (i > -12 || i2 > -65) ? -1 : (i2 << 8) ^ i;
    }

    /* renamed from: b */
    public static int m5237b(int i, int i2, int i3) {
        return (i > -12 || i2 > -65 || i3 > -65) ? -1 : ((i2 << 8) ^ i) ^ (i3 << 16);
    }

    /* renamed from: b */
    public static String m5236b(byte[] bArr, int i, int i2) {
        return f18270a.mo5214b(bArr, i, i2);
    }

    /* renamed from: d */
    public static int m5234d(byte[] bArr, int i, int i2) {
        int m5237b;
        byte b = bArr[i - 1];
        switch (i2 - i) {
            case 0:
                m5237b = m5239b(b);
                break;
            case 1:
                m5237b = m5238b(b, bArr[i]);
                break;
            case 2:
                m5237b = m5237b(b, bArr[i], bArr[i + 1]);
                break;
            default:
                throw new AssertionError();
        }
        return m5237b;
    }
}
