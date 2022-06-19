package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.util.C11628u;
/* renamed from: com.google.android.exoplayer2.extractor.h.ae */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ae.class */
public final class C11084ae {
    private C11084ae() {
    }

    /* renamed from: a */
    public static int m21522a(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] != 71) {
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public static long m21524a(C11628u c11628u, int i, int i2) {
        c11628u.m19801d(i);
        if (c11628u.m19812a() < 5) {
            return -9223372036854775807L;
        }
        int m19792j = c11628u.m19792j();
        if ((8388608 & m19792j) != 0 || ((2096896 & m19792j) >> 8) != i2) {
            return -9223372036854775807L;
        }
        if (!((m19792j & 32) != 0) || c11628u.m19804c() < 7 || c11628u.m19812a() < 7) {
            return -9223372036854775807L;
        }
        if (!((c11628u.m19804c() & 16) == 16)) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        c11628u.m19807a(bArr, 0, 6);
        return m21523a(bArr);
    }

    /* renamed from: a */
    private static long m21523a(byte[] bArr) {
        return ((bArr[0] & 255) << 25) | ((bArr[1] & 255) << 17) | ((bArr[2] & 255) << 9) | ((bArr[3] & 255) << 1) | ((255 & bArr[4]) >> 7);
    }
}
