package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ch3.class */
final class ch3 {
    /* renamed from: a */
    public static /* synthetic */ boolean m16049a(byte b) {
        return b >= 0;
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m16048b(byte b) {
        return b < -32;
    }

    /* renamed from: c */
    public static /* synthetic */ boolean m16047c(byte b) {
        return b < -16;
    }

    /* renamed from: d */
    public static /* synthetic */ void m16046d(byte b, byte b2, char[] cArr, int i) {
        if (b < -62 || m16043g(b2)) {
            throw zzggm.zzl();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    /* renamed from: e */
    public static /* synthetic */ void m16045e(byte b, byte b2, byte b3, char[] cArr, int i) {
        if (!m16043g(b2)) {
            byte b4 = b;
            if (b == -32) {
                if (b2 >= -96) {
                    b4 = -32;
                }
            }
            byte b5 = b4;
            if (b4 == -19) {
                if (b2 < -96) {
                    b5 = -19;
                }
            }
            if (!m16043g(b3)) {
                cArr[i] = (char) (((b5 & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
                return;
            }
        }
        throw zzggm.zzl();
    }

    /* renamed from: f */
    public static /* synthetic */ void m16044f(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) {
        if (m16043g(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m16043g(b3) || m16043g(b4)) {
            throw zzggm.zzl();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    /* renamed from: g */
    private static boolean m16043g(byte b) {
        return b > -65;
    }
}
