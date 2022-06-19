package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgd.class */
public final class dgd {

    /* renamed from: a */
    private static final dgf f14259a;

    static {
        f14259a = (!(dgb.m9716a() && dgb.m9703b()) || dbf.m10230a()) ? new dge() : new dgg();
    }

    /* renamed from: a */
    public static int m9645a(int i, byte[] bArr, int i2, int i3) {
        return f14259a.mo9633a(i, bArr, i2, i3);
    }

    /* renamed from: a */
    public static int m9644a(CharSequence charSequence) {
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
                                throw new dgh(i3, length2);
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
    public static int m9643a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f14259a.mo9632a(charSequence, bArr, i, i2);
    }

    /* renamed from: a */
    public static boolean m9642a(byte[] bArr) {
        return f14259a.m9634b(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static boolean m9641a(byte[] bArr, int i, int i2) {
        return f14259a.m9634b(bArr, i, i2);
    }

    /* renamed from: b */
    public static int m9640b(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: b */
    public static int m9639b(int i, int i2) {
        return (i > -12 || i2 > -65) ? -1 : (i2 << 8) ^ i;
    }

    /* renamed from: b */
    public static int m9638b(int i, int i2, int i3) {
        return (i > -12 || i2 > -65 || i3 > -65) ? -1 : ((i2 << 8) ^ i) ^ (i3 << 16);
    }

    /* renamed from: b */
    public static String m9637b(byte[] bArr, int i, int i2) {
        return f14259a.mo9631a(bArr, i, i2);
    }

    /* renamed from: d */
    public static int m9635d(byte[] bArr, int i, int i2) {
        int m9638b;
        byte b = bArr[i - 1];
        switch (i2 - i) {
            case 0:
                m9638b = m9640b(b);
                break;
            case 1:
                m9638b = m9639b(b, bArr[i]);
                break;
            case 2:
                m9638b = m9638b(b, bArr[i], bArr[i + 1]);
                break;
            default:
                throw new AssertionError();
        }
        return m9638b;
    }
}
