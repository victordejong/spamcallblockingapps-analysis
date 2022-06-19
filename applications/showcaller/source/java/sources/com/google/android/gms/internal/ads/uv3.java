package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uv3.class */
public final class uv3 implements uq3 {

    /* renamed from: a */
    public static final br3 f30983a = tv3.f30382b;

    /* renamed from: b */
    private final vv3 f30984b = new vv3(null);

    /* renamed from: c */
    private final C6694la f30985c = new C6694la(2786);

    /* renamed from: d */
    private boolean f30986d;

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: e */
    public final int mo9044e(vq3 vq3Var, rr3 rr3Var) {
        int mo8335c = vq3Var.mo8335c(this.f30985c.m13634q(), 0, 2786);
        if (mo8335c == -1) {
            return -1;
        }
        this.f30985c.m13635p(0);
        this.f30985c.m13637n(mo8335c);
        if (!this.f30986d) {
            this.f30984b.mo8679c(0L, 4);
            this.f30986d = true;
        }
        this.f30984b.mo8678d(this.f30985c);
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0079, code lost:
        if ((r12 - r9) >= 8192) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0088, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0069, code lost:
        r7.mo9884i();
        r12 = r12 + 1;
     */
    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo9043f(com.google.android.gms.internal.ads.vq3 r7) {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.uv3.mo9043f(com.google.android.gms.internal.ads.vq3):boolean");
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: g */
    public final void mo9042g(xq3 xq3Var) {
        this.f30984b.mo8680b(xq3Var, new tx3(Integer.MIN_VALUE, 0, 1));
        xq3Var.mo8688t();
        xq3Var.mo8689r(new tr3(-9223372036854775807L, 0L));
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: h */
    public final void mo9041h(long j, long j2) {
        this.f30986d = false;
        this.f30984b.zza();
    }
}
