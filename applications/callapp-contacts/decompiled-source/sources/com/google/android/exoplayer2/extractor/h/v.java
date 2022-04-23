package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.util.ad;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.u;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/v.class */
final class v {

    /* renamed from: c  reason: collision with root package name */
    boolean f21269c;

    /* renamed from: d  reason: collision with root package name */
    boolean f21270d;
    boolean e;

    /* renamed from: a  reason: collision with root package name */
    final ad f21267a = new ad(0);
    long f = -9223372036854775807L;
    long g = -9223372036854775807L;
    long h = -9223372036854775807L;

    /* renamed from: b  reason: collision with root package name */
    final u f21268b = new u();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public static long a(u uVar) {
        int i = uVar.f22336b;
        if (uVar.a() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        uVar.a(bArr, 0, 9);
        uVar.d(i);
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
    public final int a(i iVar) {
        u uVar = this.f21268b;
        byte[] bArr = af.f;
        uVar.a(bArr, bArr.length);
        this.f21269c = true;
        iVar.a();
        return 0;
    }
}
