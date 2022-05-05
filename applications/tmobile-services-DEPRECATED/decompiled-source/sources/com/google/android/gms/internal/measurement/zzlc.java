package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlc.class */
final class zzlc {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static void m12027f(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws zzih {
        if (m12018o(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m12018o(b3) || m12018o(b4)) {
            throw zzih.m12378h();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public static void m12026g(byte b, byte b2, byte b3, char[] cArr, int i) throws zzih {
        if (m12018o(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || m12018o(b3)))) {
            throw zzih.m12378h();
        }
        cArr[i] = (char) (((b & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public static void m12025h(byte b, byte b2, char[] cArr, int i) throws zzih {
        if (b < -62 || m12018o(b2)) {
            throw zzih.m12378h();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public static void m12024i(byte b, char[] cArr, int i) {
        cArr[i] = (char) b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public static boolean m12021l(byte b) {
        return b >= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public static boolean m12020m(byte b) {
        return b < -32;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public static boolean m12019n(byte b) {
        return b < -16;
    }

    /* renamed from: o */
    private static boolean m12018o(byte b) {
        return b > -65;
    }
}
