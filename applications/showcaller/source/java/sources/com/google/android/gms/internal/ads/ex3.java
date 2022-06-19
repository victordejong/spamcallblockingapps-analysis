package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ex3.class */
public final class ex3 implements uq3 {

    /* renamed from: a */
    public static final br3 f22599a = cx3.f21407b;

    /* renamed from: f */
    private boolean f22604f;

    /* renamed from: g */
    private boolean f22605g;

    /* renamed from: h */
    private boolean f22606h;

    /* renamed from: i */
    private long f22607i;

    /* renamed from: j */
    private ax3 f22608j;

    /* renamed from: k */
    private xq3 f22609k;

    /* renamed from: l */
    private boolean f22610l;

    /* renamed from: b */
    private final C6990ta f22600b = new C6990ta(0);

    /* renamed from: d */
    private final C6694la f22602d = new C6694la(4096);

    /* renamed from: c */
    private final SparseArray<dx3> f22601c = new SparseArray<>();

    /* renamed from: e */
    private final bx3 f22603e = new bx3();

    /* JADX WARN: Removed duplicated region for block: B:63:0x0245  */
    /* JADX WARN: Type inference failed for: r0v145, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo9044e(com.google.android.gms.internal.ads.vq3 r9, com.google.android.gms.internal.ads.rr3 r10) {
        /*
            Method dump skipped, instructions count: 817
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ex3.mo9044e(com.google.android.gms.internal.ads.vq3, com.google.android.gms.internal.ads.rr3):int");
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: f */
    public final boolean mo9043f(vq3 vq3Var) {
        byte[] bArr = new byte[14];
        pq3 pq3Var = (pq3) vq3Var;
        pq3Var.mo9882l(bArr, 0, 14, false);
        if ((((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) == 442 && (bArr[4] & 196) == 68 && (bArr[6] & 4) == 4 && (bArr[8] & 4) == 4 && (bArr[9] & 1) == 1 && (bArr[12] & 3) == 3) {
            pq3Var.m12195q(bArr[13] & 7, false);
            pq3Var.mo9882l(bArr, 0, 3, false);
            return ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255)) == 1;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: g */
    public final void mo9042g(xq3 xq3Var) {
        this.f22609k = xq3Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
        if (r0 != r8) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005a A[LOOP:0: B:14:0x004e->B:16:0x005a, LOOP_END] */
    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo9041h(long r6, long r8) {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.internal.ads.ta r0 = r0.f22600b
            long r0 = r0.m10758c()
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L2a
            r0 = r5
            com.google.android.gms.internal.ads.ta r0 = r0.f22600b
            long r0 = r0.m10760a()
            r6 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L32
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L32
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L32
        L2a:
            r0 = r5
            com.google.android.gms.internal.ads.ta r0 = r0.f22600b
            r1 = r8
            r0.m10757d(r1)
        L32:
            r0 = r5
            com.google.android.gms.internal.ads.ax3 r0 = r0.f22608j
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r10
            if (r0 == 0) goto L4e
            r0 = r10
            r1 = r8
            r0.m13428b(r1)
            r0 = r11
            r12 = r0
        L4e:
            r0 = r12
            r1 = r5
            android.util.SparseArray<com.google.android.gms.internal.ads.dx3> r1 = r1.f22601c
            int r1 = r1.size()
            if (r0 >= r1) goto L6f
            r0 = r5
            android.util.SparseArray<com.google.android.gms.internal.ads.dx3> r0 = r0.f22601c
            r1 = r12
            java.lang.Object r0 = r0.valueAt(r1)
            com.google.android.gms.internal.ads.dx3 r0 = (com.google.android.gms.internal.ads.dx3) r0
            r0.m15654a()
            int r12 = r12 + 1
            goto L4e
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ex3.mo9041h(long, long):void");
    }
}
