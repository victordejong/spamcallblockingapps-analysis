package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gf2.class */
final class gf2 {
    /* renamed from: a */
    public static /* synthetic */ boolean m7395a(byte b) {
        return b >= 0;
    }

    /* renamed from: b */
    public static /* synthetic */ void m7394b(byte b, byte b2, char[] cArr, int i) {
        if (b < -62 || m7391e(b2)) {
            throw zzett.zzj();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    /* renamed from: c */
    public static /* synthetic */ void m7393c(byte b, byte b2, byte b3, char[] cArr, int i) {
        if (!m7391e(b2)) {
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
            if (!m7391e(b3)) {
                cArr[i] = (char) (((b5 & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
                return;
            }
        }
        throw zzett.zzj();
    }

    /* renamed from: d */
    public static /* synthetic */ void m7392d(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) {
        if (m7391e(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m7391e(b3) || m7391e(b4)) {
            throw zzett.zzj();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    /* renamed from: e */
    private static boolean m7391e(byte b) {
        return b > -65;
    }
}
