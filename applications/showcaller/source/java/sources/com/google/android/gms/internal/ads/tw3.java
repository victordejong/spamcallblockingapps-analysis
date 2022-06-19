package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tw3.class */
public final class tw3 implements gw3 {

    /* renamed from: a */
    private final String f30388a;

    /* renamed from: b */
    private final C6694la f30389b;

    /* renamed from: c */
    private final C6657ka f30390c;

    /* renamed from: d */
    private yr3 f30391d;

    /* renamed from: e */
    private String f30392e;

    /* renamed from: f */
    private C7021u4 f30393f;

    /* renamed from: g */
    private int f30394g;

    /* renamed from: h */
    private int f30395h;

    /* renamed from: i */
    private int f30396i;

    /* renamed from: j */
    private int f30397j;

    /* renamed from: k */
    private long f30398k = -9223372036854775807L;

    /* renamed from: l */
    private boolean f30399l;

    /* renamed from: m */
    private int f30400m;

    /* renamed from: n */
    private int f30401n;

    /* renamed from: o */
    private int f30402o;

    /* renamed from: p */
    private boolean f30403p;

    /* renamed from: q */
    private long f30404q;

    /* renamed from: r */
    private int f30405r;

    /* renamed from: s */
    private long f30406s;

    /* renamed from: t */
    private int f30407t;

    /* renamed from: u */
    private String f30408u;

    public tw3(String str) {
        this.f30388a = str;
        C6694la c6694la = new C6694la(1024);
        this.f30389b = c6694la;
        byte[] m13634q = c6694la.m13634q();
        this.f30390c = new C6657ka(m13634q, m13634q.length);
    }

    /* renamed from: e */
    private final int m10479e(C6657ka c6657ka) {
        int m13953b = c6657ka.m13953b();
        vp3 m9088b = xp3.m9088b(c6657ka, true);
        this.f30408u = m9088b.f31290c;
        this.f30405r = m9088b.f31288a;
        this.f30407t = m9088b.f31289b;
        return m13953b - c6657ka.m13953b();
    }

    /* renamed from: f */
    private static long m10478f(C6657ka c6657ka) {
        return c6657ka.m13947h((c6657ka.m13947h(2) + 1) * 8);
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: a */
    public final void mo8681a() {
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: b */
    public final void mo8680b(xq3 xq3Var, tx3 tx3Var) {
        tx3Var.m10475a();
        this.f30391d = xq3Var.mo8690o(tx3Var.m10474b(), 1);
        this.f30392e = tx3Var.m10473c();
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: c */
    public final void mo8679c(long j, int i) {
        if (j != -9223372036854775807L) {
            this.f30398k = j;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x024e, code lost:
        if (r8.f30399l == false) goto L93;
     */
    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo8678d(com.google.android.gms.internal.ads.C6694la r9) {
        /*
            Method dump skipped, instructions count: 936
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.tw3.mo8678d(com.google.android.gms.internal.ads.la):void");
    }

    @Override // com.google.android.gms.internal.ads.gw3
    public final void zza() {
        this.f30394g = 0;
        this.f30398k = -9223372036854775807L;
        this.f30399l = false;
    }
}
