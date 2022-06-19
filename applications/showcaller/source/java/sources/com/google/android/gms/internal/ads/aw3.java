package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/aw3.class */
public final class aw3 implements uq3 {

    /* renamed from: a */
    public static final br3 f20154a = zv3.f33435b;

    /* renamed from: d */
    private final C6694la f20157d;

    /* renamed from: e */
    private final C6657ka f20158e;

    /* renamed from: f */
    private xq3 f20159f;

    /* renamed from: g */
    private long f20160g;

    /* renamed from: i */
    private boolean f20162i;

    /* renamed from: j */
    private boolean f20163j;

    /* renamed from: b */
    private final bw3 f20155b = new bw3(true, null);

    /* renamed from: c */
    private final C6694la f20156c = new C6694la(2048);

    /* renamed from: h */
    private long f20161h = -1;

    public aw3(int i) {
        C6694la c6694la = new C6694la(10);
        this.f20157d = c6694la;
        byte[] m13634q = c6694la.m13634q();
        this.f20158e = new C6657ka(m13634q, m13634q.length);
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: e */
    public final int mo9044e(vq3 vq3Var, rr3 rr3Var) {
        C7173y8.m8894e(this.f20159f);
        int mo8335c = vq3Var.mo8335c(this.f20156c.m13634q(), 0, 2048);
        if (!this.f20163j) {
            this.f20159f.mo8689r(new tr3(-9223372036854775807L, 0L));
            this.f20163j = true;
        }
        if (mo8335c == -1) {
            return -1;
        }
        this.f20156c.m13635p(0);
        this.f20156c.m13637n(mo8335c);
        if (!this.f20162i) {
            this.f20155b.mo8679c(this.f20160g, 4);
            this.f20162i = true;
        }
        this.f20155b.mo8678d(this.f20156c);
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0082, code lost:
        r7.mo9884i();
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0092, code lost:
        if ((r11 - r8) >= 8192) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00a1, code lost:
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
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aw3.mo9043f(com.google.android.gms.internal.ads.vq3):boolean");
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: g */
    public final void mo9042g(xq3 xq3Var) {
        this.f20159f = xq3Var;
        this.f20155b.mo8680b(xq3Var, new tx3(Integer.MIN_VALUE, 0, 1));
        xq3Var.mo8688t();
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: h */
    public final void mo9041h(long j, long j2) {
        this.f20162i = false;
        this.f20155b.zza();
        this.f20160g = j2;
    }
}
