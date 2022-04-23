package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.util.u;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ae.class */
public final class ae {
    private ae() {
    }

    public static int a(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] != 71) {
            i++;
        }
        return i;
    }

    public static long a(u uVar, int i, int i2) {
        uVar.d(i);
        if (uVar.a() < 5) {
            return -9223372036854775807L;
        }
        int j = uVar.j();
        if ((8388608 & j) != 0 || ((2096896 & j) >> 8) != i2) {
            return -9223372036854775807L;
        }
        boolean z = true;
        if (!((j & 32) != 0) || uVar.c() < 7 || uVar.a() < 7) {
            return -9223372036854775807L;
        }
        if ((uVar.c() & 16) != 16) {
            z = false;
        }
        if (!z) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        uVar.a(bArr, 0, 6);
        return a(bArr);
    }

    private static long a(byte[] bArr) {
        return ((bArr[0] & 255) << 25) | ((bArr[1] & 255) << 17) | ((bArr[2] & 255) << 9) | ((bArr[3] & 255) << 1) | ((255 & bArr[4]) >> 7);
    }
}
