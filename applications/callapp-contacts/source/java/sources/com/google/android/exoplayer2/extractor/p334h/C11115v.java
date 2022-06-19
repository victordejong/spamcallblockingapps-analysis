package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.util.C11597ad;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11628u;
/* renamed from: com.google.android.exoplayer2.extractor.h.v */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/v.class */
final class C11115v {

    /* renamed from: c */
    boolean f36396c;

    /* renamed from: d */
    boolean f36397d;

    /* renamed from: e */
    boolean f36398e;

    /* renamed from: a */
    final C11597ad f36394a = new C11597ad(0);

    /* renamed from: f */
    long f36399f = -9223372036854775807L;

    /* renamed from: g */
    long f36400g = -9223372036854775807L;

    /* renamed from: h */
    long f36401h = -9223372036854775807L;

    /* renamed from: b */
    final C11628u f36395b = new C11628u();

    /* renamed from: a */
    public static int m21450a(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    /* renamed from: a */
    public static long m21452a(C11628u c11628u) {
        int i = c11628u.f38734b;
        if (c11628u.m19812a() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        c11628u.m19807a(bArr, 0, 9);
        c11628u.m19801d(i);
        if (m21451a(bArr)) {
            return m21449b(bArr);
        }
        return -9223372036854775807L;
    }

    /* renamed from: a */
    private static boolean m21451a(byte[] bArr) {
        return (bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3;
    }

    /* renamed from: b */
    private static long m21449b(byte[] bArr) {
        return (((bArr[0] & 56) >> 3) << 30) | ((bArr[0] & 3) << 28) | ((bArr[1] & 255) << 20) | (((bArr[2] & 248) >> 3) << 15) | ((bArr[2] & 3) << 13) | ((bArr[3] & 255) << 5) | ((bArr[4] & 248) >> 3);
    }

    /* renamed from: a */
    public final int m21453a(AbstractC11121i abstractC11121i) {
        C11628u c11628u = this.f36395b;
        byte[] bArr = C11599af.f38653f;
        c11628u.m19808a(bArr, bArr.length);
        this.f36396c = true;
        abstractC11121i.mo21406a();
        return 0;
    }
}
