package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqp.class */
public final class dqp {

    /* renamed from: a */
    private static final dqq f47449a;

    static {
        f47449a = (!(dqm.m15996a() && dqm.m15983b()) || dlp.m16504a()) ? new dqt() : new dqv();
    }

    /* renamed from: a */
    public static int m15944a(int i, byte[] bArr, int i2, int i3) {
        return f47449a.mo15926a(i, bArr, i2, i3);
    }

    /* renamed from: a */
    public static int m15943a(CharSequence charSequence) {
        int i;
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        while (i3 < length && charSequence.charAt(i3) < 128) {
            i3++;
        }
        int i4 = length;
        while (true) {
            i = i4;
            if (i3 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i3);
            if (charAt < 2048) {
                i4 += (127 - charAt) >>> 31;
                i3++;
            } else {
                int length2 = charSequence.length();
                int i5 = 0;
                while (i3 < length2) {
                    char charAt2 = charSequence.charAt(i3);
                    if (charAt2 < 2048) {
                        i5 += (127 - charAt2) >>> 31;
                        i2 = i3;
                    } else {
                        int i6 = i5 + 2;
                        i5 = i6;
                        i2 = i3;
                        if (55296 <= charAt2) {
                            i5 = i6;
                            i2 = i3;
                            if (charAt2 > 57343) {
                                continue;
                            } else if (Character.codePointAt(charSequence, i3) < 65536) {
                                throw new dqs(i3, length2);
                            } else {
                                i2 = i3 + 1;
                                i5 = i6;
                            }
                        } else {
                            continue;
                        }
                    }
                    i3 = i2 + 1;
                }
                i = i4 + i5;
            }
        }
        if (i >= length) {
            return i;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("UTF-8 length does not fit in int: ");
        sb.append(i + 4294967296L);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: a */
    public static int m15942a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f47449a.mo15925a(charSequence, bArr, i, i2);
    }

    /* renamed from: a */
    public static boolean m15941a(byte[] bArr) {
        return f47449a.m15934a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static boolean m15940a(byte[] bArr, int i, int i2) {
        return f47449a.m15934a(bArr, i, i2);
    }

    /* renamed from: b */
    public static int m15939b(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: b */
    public static int m15938b(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* renamed from: b */
    public static int m15937b(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* renamed from: b */
    public static String m15936b(byte[] bArr, int i, int i2) throws zzenn {
        return f47449a.mo15923b(bArr, i, i2);
    }

    /* renamed from: c */
    public static /* synthetic */ int m15935c(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 != 0) {
            if (i3 == 1) {
                return m15938b(b, bArr[i]);
            }
            if (i3 != 2) {
                throw new AssertionError();
            }
            return m15937b(b, bArr[i], bArr[i + 1]);
        }
        return m15939b(b);
    }
}
