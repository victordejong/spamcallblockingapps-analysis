package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.d0.i0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/i0.class */
public final class C4939i0 {
    /* renamed from: a */
    public static int m21152a(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] != 71) {
            i++;
        }
        return i;
    }

    /* renamed from: b */
    public static long m21151b(C5536v c5536v, int i, int i2) {
        c5536v.m18680M(i);
        if (c5536v.m18678a() < 5) {
            return -9223372036854775807L;
        }
        int m18668k = c5536v.m18668k();
        if ((8388608 & m18668k) != 0 || ((2096896 & m18668k) >> 8) != i2) {
            return -9223372036854775807L;
        }
        if (!((m18668k & 32) != 0) || c5536v.m18653z() < 7 || c5536v.m18678a() < 7) {
            return -9223372036854775807L;
        }
        if (!((c5536v.m18653z() & 16) == 16)) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        c5536v.m18671h(bArr, 0, 6);
        return m21150c(bArr);
    }

    /* renamed from: c */
    private static long m21150c(byte[] bArr) {
        return ((bArr[0] & 255) << 25) | ((bArr[1] & 255) << 17) | ((bArr[2] & 255) << 9) | ((bArr[3] & 255) << 1) | ((255 & bArr[4]) >> 7);
    }
}
