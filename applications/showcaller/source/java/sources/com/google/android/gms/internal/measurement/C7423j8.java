package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.j8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/j8.class */
final class C7423j8 {
    /* renamed from: a */
    public static /* synthetic */ boolean m7240a(byte b) {
        return b >= 0;
    }

    /* renamed from: b */
    public static /* synthetic */ void m7239b(byte b, byte b2, char[] cArr, int i) {
        if (b < -62 || m7236e(b2)) {
            throw zzib.zzf();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    /* renamed from: c */
    public static /* synthetic */ void m7238c(byte b, byte b2, byte b3, char[] cArr, int i) {
        if (!m7236e(b2)) {
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
            if (!m7236e(b3)) {
                cArr[i] = (char) (((b5 & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
                return;
            }
        }
        throw zzib.zzf();
    }

    /* renamed from: d */
    public static /* synthetic */ void m7237d(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) {
        if (m7236e(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m7236e(b3) || m7236e(b4)) {
            throw zzib.zzf();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    /* renamed from: e */
    private static boolean m7236e(byte b) {
        return b > -65;
    }
}
