package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ow3.class */
final class ow3 {

    /* renamed from: a */
    private final yr3 f27756a;

    /* renamed from: d */
    private final C6731ma f27759d;

    /* renamed from: e */
    private final byte[] f27760e;

    /* renamed from: f */
    private int f27761f;

    /* renamed from: g */
    private long f27762g;

    /* renamed from: h */
    private long f27763h;

    /* renamed from: l */
    private long f27767l;

    /* renamed from: m */
    private long f27768m;

    /* renamed from: n */
    private boolean f27769n;

    /* renamed from: b */
    private final SparseArray<C6285aa> f27757b = new SparseArray<>();

    /* renamed from: c */
    private final SparseArray<C7211z9> f27758c = new SparseArray<>();

    /* renamed from: i */
    private final nw3 f27764i = new nw3(null);

    /* renamed from: j */
    private final nw3 f27765j = new nw3(null);

    /* renamed from: k */
    private boolean f27766k = false;

    public ow3(yr3 yr3Var, boolean z, boolean z2) {
        this.f27756a = yr3Var;
        byte[] bArr = new byte[128];
        this.f27760e = bArr;
        this.f27759d = new C6731ma(bArr, 0, 0);
    }

    /* renamed from: a */
    public final void m12484a(C6285aa c6285aa) {
        this.f27757b.append(c6285aa.f19862d, c6285aa);
    }

    /* renamed from: b */
    public final void m12483b(C7211z9 c7211z9) {
        this.f27758c.append(c7211z9.f32846a, c7211z9);
    }

    /* renamed from: c */
    public final void m12482c() {
        this.f27766k = false;
    }

    /* renamed from: d */
    public final void m12481d(long j, int i, long j2) {
        this.f27761f = i;
        this.f27763h = j2;
        this.f27762g = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0097, code lost:
        if (r0 == 1) goto L18;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m12480e(long r10, int r12, boolean r13, boolean r14) {
        /*
            r9 = this;
            r0 = r9
            int r0 = r0.f27761f
            r15 = r0
            r0 = 0
            r16 = r0
            r0 = r15
            r1 = 9
            if (r0 == r1) goto L13
            goto L77
        L13:
            r0 = r13
            if (r0 == 0) goto L5d
            r0 = r9
            boolean r0 = r0.f27766k
            if (r0 == 0) goto L5d
            r0 = r9
            long r0 = r0.f27762g
            r17 = r0
            r0 = r10
            r1 = r17
            long r0 = r0 - r1
            int r0 = (int) r0
            r19 = r0
            r0 = r9
            long r0 = r0.f27768m
            r20 = r0
            r0 = r20
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L5d
            r0 = r9
            boolean r0 = r0.f27769n
            r15 = r0
            r0 = r9
            long r0 = r0.f27767l
            r10 = r0
            r0 = r9
            com.google.android.gms.internal.ads.yr3 r0 = r0.f27756a
            r1 = r20
            r2 = r15
            r3 = r17
            r4 = r10
            long r3 = r3 - r4
            int r3 = (int) r3
            r4 = r12
            r5 = r19
            int r4 = r4 + r5
            r5 = 0
            r0.mo8705c(r1, r2, r3, r4, r5)
        L5d:
            r0 = r9
            r1 = r9
            long r1 = r1.f27762g
            r0.f27767l = r1
            r0 = r9
            r1 = r9
            long r1 = r1.f27763h
            r0.f27768m = r1
            r0 = r9
            r1 = 0
            r0.f27769n = r1
            r0 = r9
            r1 = 1
            r0.f27766k = r1
        L77:
            r0 = r9
            boolean r0 = r0.f27769n
            r13 = r0
            r0 = r9
            int r0 = r0.f27761f
            r15 = r0
            r0 = r15
            r1 = 5
            if (r0 == r1) goto L9a
            r0 = r16
            r12 = r0
            r0 = r14
            if (r0 == 0) goto L9c
            r0 = r16
            r12 = r0
            r0 = r15
            r1 = 1
            if (r0 != r1) goto L9c
        L9a:
            r0 = 1
            r12 = r0
        L9c:
            r0 = r13
            r1 = r12
            r0 = r0 | r1
            r13 = r0
            r0 = r9
            r1 = r13
            r0.f27769n = r1
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ow3.m12480e(long, int, boolean, boolean):boolean");
    }
}
