package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vx3.class */
public final class vx3 {
    /* renamed from: a */
    public static int m9837a(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] != 71) {
            i++;
        }
        return i;
    }

    /* renamed from: b */
    public static long m9836b(C6694la c6694la, int i, int i2) {
        c6694la.m13635p(i);
        if (c6694la.m13639l() < 5) {
            return -9223372036854775807L;
        }
        int m13655D = c6694la.m13655D();
        if ((8388608 & m13655D) != 0 || ((m13655D >> 8) & 8191) != i2 || (m13655D & 32) == 0 || c6694la.m13629v() < 7 || c6694la.m13639l() < 7 || (c6694la.m13629v() & 16) != 16) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        c6694la.m13630u(bArr, 0, 6);
        byte b = bArr[0];
        byte b2 = bArr[1];
        byte b3 = bArr[2];
        long j = bArr[3] & 255;
        return ((b2 & 255) << 17) | ((b & 255) << 25) | ((b3 & 255) << 9) | (j + j) | ((bArr[4] & 255) >> 7);
    }
}
