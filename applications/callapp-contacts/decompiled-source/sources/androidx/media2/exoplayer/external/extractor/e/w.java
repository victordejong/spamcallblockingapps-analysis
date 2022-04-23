package androidx.media2.exoplayer.external.extractor.e;

import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.p;
import androidx.media2.exoplayer.external.util.z;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/w.class */
final class w {

    /* renamed from: c  reason: collision with root package name */
    boolean f3270c;

    /* renamed from: d  reason: collision with root package name */
    boolean f3271d;
    boolean e;

    /* renamed from: a  reason: collision with root package name */
    final z f3268a = new z(0);
    long f = -9223372036854775807L;
    long g = -9223372036854775807L;
    long h = -9223372036854775807L;

    /* renamed from: b  reason: collision with root package name */
    final p f3269b = new p();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public static long a(p pVar) {
        int i = pVar.f4167b;
        if (pVar.b() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        pVar.a(bArr, 0, 9);
        pVar.c(i);
        if (!a(bArr)) {
            return -9223372036854775807L;
        }
        return b(bArr);
    }

    private static boolean a(byte[] bArr) {
        return (bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3;
    }

    private static long b(byte[] bArr) {
        return (((bArr[0] & 56) >> 3) << 30) | ((bArr[0] & 3) << 28) | ((bArr[1] & 255) << 20) | (((bArr[2] & 248) >> 3) << 15) | ((bArr[2] & 3) << 13) | ((bArr[3] & 255) << 5) | ((bArr[4] & 248) >> 3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(h hVar) {
        p pVar = this.f3269b;
        byte[] bArr = ac.f;
        pVar.a(bArr, bArr.length);
        this.f3270c = true;
        hVar.a();
        return 0;
    }
}
