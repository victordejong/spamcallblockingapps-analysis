package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2018p;
import androidx.media2.exoplayer.external.util.C2030z;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.w */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/w.class */
final class C1583w {

    /* renamed from: c */
    boolean f6241c;

    /* renamed from: d */
    boolean f6242d;

    /* renamed from: e */
    boolean f6243e;

    /* renamed from: a */
    final C2030z f6239a = new C2030z(0);

    /* renamed from: f */
    long f6244f = -9223372036854775807L;

    /* renamed from: g */
    long f6245g = -9223372036854775807L;

    /* renamed from: h */
    long f6246h = -9223372036854775807L;

    /* renamed from: b */
    final C2018p f6240b = new C2018p();

    /* renamed from: a */
    public static int m42635a(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    /* renamed from: a */
    public static long m42637a(C2018p c2018p) {
        int i = c2018p.f8132b;
        if (c2018p.m41536b() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        c2018p.m41537a(bArr, 0, 9);
        c2018p.m41533c(i);
        if (m42636a(bArr)) {
            return m42634b(bArr);
        }
        return -9223372036854775807L;
    }

    /* renamed from: a */
    private static boolean m42636a(byte[] bArr) {
        return (bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3;
    }

    /* renamed from: b */
    private static long m42634b(byte[] bArr) {
        return (((bArr[0] & 56) >> 3) << 30) | ((bArr[0] & 3) << 28) | ((bArr[1] & 255) << 20) | (((bArr[2] & 248) >> 3) << 15) | ((bArr[2] & 3) << 13) | ((bArr[3] & 255) << 5) | ((bArr[4] & 248) >> 3);
    }

    /* renamed from: a */
    public final int m42638a(AbstractC1600h abstractC1600h) {
        C2018p c2018p = this.f6240b;
        byte[] bArr = C1996ac.f8067f;
        c2018p.m41538a(bArr, bArr.length);
        this.f6241c = true;
        abstractC1600h.mo42612a();
        return 0;
    }
}
