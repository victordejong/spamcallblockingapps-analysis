package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahb.class */
final class ahb implements amq {

    /* renamed from: a  reason: collision with root package name */
    private awm f23302a;

    /* renamed from: b  reason: collision with root package name */
    private aqz f23303b;

    /* renamed from: c  reason: collision with root package name */
    private byb f23304c;

    /* renamed from: d  reason: collision with root package name */
    private anl f23305d;
    private alp e;
    private bba f;
    private cpk g;
    private cmp h;
    private clq i;
    private final /* synthetic */ ago j;

    private ahb(ago agoVar) {
        this.j = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.amq
    /* renamed from: a */
    public final amn b() {
        dso.a(this.f23302a, awm.class);
        dso.a(this.f23303b, aqz.class);
        dso.a(this.f23304c, byb.class);
        dso.a(this.f23305d, anl.class);
        dso.a(this.e, alp.class);
        dso.a(this.f, bba.class);
        return new ahe(this.j, this.e, this.f, new aow(), new cqk(), new aqi(), new blv(), this.f23302a, this.f23303b, new cqo(), this.f23304c, this.f23305d, this.g, this.h, this.i);
    }

    @Override // com.google.android.gms.internal.ads.amq
    public final /* synthetic */ amq a(alp alpVar) {
        this.e = (alp) dso.a(alpVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.amq
    public final /* synthetic */ amq a(anl anlVar) {
        this.f23305d = (anl) dso.a(anlVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.amq
    public final /* synthetic */ amq a(aqz aqzVar) {
        this.f23303b = (aqz) dso.a(aqzVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.amq
    public final /* synthetic */ amq a(awm awmVar) {
        this.f23302a = (awm) dso.a(awmVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.amq
    public final /* synthetic */ amq a(bba bbaVar) {
        this.f = (bba) dso.a(bbaVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.amq
    public final /* synthetic */ amq a(byb bybVar) {
        this.f23304c = (byb) dso.a(bybVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ aqw<amn> a(clq clqVar) {
        this.i = clqVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ aqw<amn> a(cmp cmpVar) {
        this.h = cmpVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ aqw<amn> a(cpk cpkVar) {
        this.g = cpkVar;
        return this;
    }
}
