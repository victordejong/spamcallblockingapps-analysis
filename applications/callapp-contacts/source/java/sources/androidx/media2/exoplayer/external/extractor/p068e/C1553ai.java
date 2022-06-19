package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.util.C2018p;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.ai */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/ai.class */
public final class C1553ai {
    private C1553ai() {
    }

    /* renamed from: a */
    public static int m42702a(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] != 71) {
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public static long m42704a(C2018p c2018p, int i, int i2) {
        c2018p.m41533c(i);
        if (c2018p.m41536b() < 5) {
            return -9223372036854775807L;
        }
        int m41524i = c2018p.m41524i();
        if ((8388608 & m41524i) != 0 || ((2096896 & m41524i) >> 8) != i2) {
            return -9223372036854775807L;
        }
        if (!((m41524i & 32) != 0) || c2018p.m41534c() < 7 || c2018p.m41536b() < 7) {
            return -9223372036854775807L;
        }
        if (!((c2018p.m41534c() & 16) == 16)) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        c2018p.m41537a(bArr, 0, 6);
        return m42703a(bArr);
    }

    /* renamed from: a */
    private static long m42703a(byte[] bArr) {
        return ((bArr[0] & 255) << 25) | ((bArr[1] & 255) << 17) | ((bArr[2] & 255) << 9) | ((bArr[3] & 255) << 1) | ((255 & bArr[4]) >> 7);
    }
}
