package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lw3.class */
public final class lw3 implements gw3 {

    /* renamed from: a */
    private static final float[] f26307a = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* renamed from: b */
    private final wx3 f26308b;

    /* renamed from: g */
    private kw3 f26313g;

    /* renamed from: h */
    private long f26314h;

    /* renamed from: i */
    private String f26315i;

    /* renamed from: j */
    private yr3 f26316j;

    /* renamed from: k */
    private boolean f26317k;

    /* renamed from: d */
    private final boolean[] f26310d = new boolean[4];

    /* renamed from: e */
    private final jw3 f26311e = new jw3(128);

    /* renamed from: l */
    private long f26318l = -9223372036854775807L;

    /* renamed from: f */
    private final vw3 f26312f = new vw3(178, 128);

    /* renamed from: c */
    private final C6694la f26309c = new C6694la();

    public lw3(wx3 wx3Var) {
        this.f26308b = wx3Var;
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: a */
    public final void mo8681a() {
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: b */
    public final void mo8680b(xq3 xq3Var, tx3 tx3Var) {
        tx3Var.m10475a();
        this.f26315i = tx3Var.m10473c();
        yr3 mo8690o = xq3Var.mo8690o(tx3Var.m10474b(), 2);
        this.f26316j = mo8690o;
        this.f26313g = new kw3(mo8690o);
        this.f26308b.m9426a(xq3Var, tx3Var);
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: c */
    public final void mo8679c(long j, int i) {
        if (j != -9223372036854775807L) {
            this.f26318l = j;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0212  */
    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo8678d(com.google.android.gms.internal.ads.C6694la r7) {
        /*
            Method dump skipped, instructions count: 897
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.lw3.mo8678d(com.google.android.gms.internal.ads.la):void");
    }

    @Override // com.google.android.gms.internal.ads.gw3
    public final void zza() {
        C6322ba.m16419e(this.f26310d);
        this.f26311e.m14026a();
        kw3 kw3Var = this.f26313g;
        if (kw3Var != null) {
            kw3Var.m13766a();
        }
        this.f26312f.m9848a();
        this.f26314h = 0L;
        this.f26318l = -9223372036854775807L;
    }
}
