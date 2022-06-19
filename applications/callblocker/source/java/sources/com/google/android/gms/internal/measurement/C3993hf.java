package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.hf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/hf.class */
final class C3993hf {
    /* renamed from: b */
    public static void m5226b(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) {
        if (m5218g(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m5218g(b3) || m5218g(b4)) {
            throw zzft.m4847h();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) (55232 + (i2 >>> 10));
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    /* renamed from: b */
    public static void m5225b(byte b, byte b2, byte b3, char[] cArr, int i) {
        if (m5218g(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || m5218g(b3)))) {
            throw zzft.m4847h();
        }
        cArr[i] = (char) (((b & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
    }

    /* renamed from: b */
    public static void m5224b(byte b, byte b2, char[] cArr, int i) {
        if (b < -62 || m5218g(b2)) {
            throw zzft.m4847h();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    /* renamed from: b */
    public static void m5223b(byte b, char[] cArr, int i) {
        cArr[i] = (char) b;
    }

    /* renamed from: d */
    public static boolean m5221d(byte b) {
        return b >= 0;
    }

    /* renamed from: e */
    public static boolean m5220e(byte b) {
        return b < -32;
    }

    /* renamed from: f */
    public static boolean m5219f(byte b) {
        return b < -16;
    }

    /* renamed from: g */
    private static boolean m5218g(byte b) {
        return b > -65;
    }
}
