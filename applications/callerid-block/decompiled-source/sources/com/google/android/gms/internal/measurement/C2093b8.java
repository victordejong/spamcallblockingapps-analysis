package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.b8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/b8.class */
final class C2093b8 {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ boolean m4425a(byte b) {
        return b >= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ void m4424b(byte b, byte b2, char[] cArr, int i) {
        if (b < -62 || m4421e(b2)) {
            throw zzib.zzf();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static /* synthetic */ void m4423c(byte b, byte b2, byte b3, char[] cArr, int i) {
        if (!m4421e(b2)) {
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
            if (!m4421e(b3)) {
                cArr[i] = (char) (((b5 & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
                return;
            }
        }
        throw zzib.zzf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static /* synthetic */ void m4422d(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) {
        if (m4421e(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m4421e(b3) || m4421e(b4)) {
            throw zzib.zzf();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    /* renamed from: e */
    private static boolean m4421e(byte b) {
        return b > -65;
    }
}
