package androidx.media2.exoplayer.external.extractor.e;

import androidx.media2.exoplayer.external.util.p;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/ai.class */
public final class ai {
    private ai() {
    }

    public static int a(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] != 71) {
            i++;
        }
        return i;
    }

    public static long a(p pVar, int i, int i2) {
        pVar.c(i);
        if (pVar.b() < 5) {
            return -9223372036854775807L;
        }
        int i3 = pVar.i();
        if ((8388608 & i3) != 0 || ((2096896 & i3) >> 8) != i2) {
            return -9223372036854775807L;
        }
        boolean z = true;
        if (!((i3 & 32) != 0) || pVar.c() < 7 || pVar.b() < 7) {
            return -9223372036854775807L;
        }
        if ((pVar.c() & 16) != 16) {
            z = false;
        }
        if (!z) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        pVar.a(bArr, 0, 6);
        return a(bArr);
    }

    private static long a(byte[] bArr) {
        return ((bArr[0] & 255) << 25) | ((bArr[1] & 255) << 17) | ((bArr[2] & 255) << 9) | ((bArr[3] & 255) << 1) | ((255 & bArr[4]) >> 7);
    }
}
