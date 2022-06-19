package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/iw3.class */
public final class iw3 implements gw3 {

    /* renamed from: a */
    private static final double[] f24512a = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: b */
    private String f24513b;

    /* renamed from: c */
    private yr3 f24514c;

    /* renamed from: d */
    private final wx3 f24515d;

    /* renamed from: e */
    private final C6694la f24516e;

    /* renamed from: f */
    private final vw3 f24517f;

    /* renamed from: g */
    private final boolean[] f24518g = new boolean[4];

    /* renamed from: h */
    private final hw3 f24519h = new hw3(128);

    /* renamed from: i */
    private long f24520i;

    /* renamed from: j */
    private boolean f24521j;

    /* renamed from: k */
    private boolean f24522k;

    /* renamed from: l */
    private long f24523l;

    /* renamed from: m */
    private long f24524m;

    /* renamed from: n */
    private long f24525n;

    /* renamed from: o */
    private long f24526o;

    /* renamed from: p */
    private boolean f24527p;

    /* renamed from: q */
    private boolean f24528q;

    public iw3(wx3 wx3Var) {
        C6694la c6694la;
        this.f24515d = wx3Var;
        if (wx3Var != null) {
            this.f24517f = new vw3(178, 128);
            c6694la = new C6694la();
        } else {
            c6694la = null;
            this.f24517f = null;
        }
        this.f24516e = c6694la;
        this.f24524m = -9223372036854775807L;
        this.f24526o = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: a */
    public final void mo8681a() {
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: b */
    public final void mo8680b(xq3 xq3Var, tx3 tx3Var) {
        tx3Var.m10475a();
        this.f24513b = tx3Var.m10473c();
        this.f24514c = xq3Var.mo8690o(tx3Var.m10474b(), 2);
        wx3 wx3Var = this.f24515d;
        if (wx3Var != null) {
            wx3Var.m9426a(xq3Var, tx3Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: c */
    public final void mo8679c(long j, int i) {
        this.f24524m = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01c1  */
    /* JADX WARN: Type inference failed for: r0v171, types: [double[]] */
    /* JADX WARN: Type inference failed for: r0v172 */
    /* JADX WARN: Type inference failed for: r0v183, types: [long] */
    /* JADX WARN: Type inference failed for: r0v185, types: [double] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* JADX WARN: Type inference failed for: r1v74, types: [long] */
    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo8678d(com.google.android.gms.internal.ads.C6694la r10) {
        /*
            Method dump skipped, instructions count: 975
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.iw3.mo8678d(com.google.android.gms.internal.ads.la):void");
    }

    @Override // com.google.android.gms.internal.ads.gw3
    public final void zza() {
        C6322ba.m16419e(this.f24518g);
        this.f24519h.m14529a();
        vw3 vw3Var = this.f24517f;
        if (vw3Var != null) {
            vw3Var.m9848a();
        }
        this.f24520i = 0L;
        this.f24521j = false;
        this.f24524m = -9223372036854775807L;
        this.f24526o = -9223372036854775807L;
    }
}
