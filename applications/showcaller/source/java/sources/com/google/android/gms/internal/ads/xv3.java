package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xv3.class */
public final class xv3 implements uq3 {

    /* renamed from: a */
    public static final br3 f32314a = wv3.f31804b;

    /* renamed from: b */
    private final yv3 f32315b = new yv3(null);

    /* renamed from: c */
    private final C6694la f32316c = new C6694la(16384);

    /* renamed from: d */
    private boolean f32317d;

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: e */
    public final int mo9044e(vq3 vq3Var, rr3 rr3Var) {
        int mo8335c = vq3Var.mo8335c(this.f32316c.m13634q(), 0, 16384);
        if (mo8335c == -1) {
            return -1;
        }
        this.f32316c.m13635p(0);
        this.f32316c.m13637n(mo8335c);
        if (!this.f32317d) {
            this.f32315b.mo8679c(0L, 4);
            this.f32317d = true;
        }
        this.f32315b.mo8678d(this.f32316c);
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x007b, code lost:
        r7.mo9884i();
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x008b, code lost:
        if ((r12 - r9) >= 8192) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x009a, code lost:
        return false;
     */
    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo9043f(com.google.android.gms.internal.ads.vq3 r7) {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.xv3.mo9043f(com.google.android.gms.internal.ads.vq3):boolean");
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: g */
    public final void mo9042g(xq3 xq3Var) {
        this.f32315b.mo8680b(xq3Var, new tx3(Integer.MIN_VALUE, 0, 1));
        xq3Var.mo8688t();
        xq3Var.mo8689r(new tr3(-9223372036854775807L, 0L));
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: h */
    public final void mo9041h(long j, long j2) {
        this.f32317d = false;
        this.f32315b.zza();
    }
}
