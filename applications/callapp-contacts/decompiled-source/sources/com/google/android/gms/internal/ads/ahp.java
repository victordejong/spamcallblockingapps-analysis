package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahp.class */
final class ahp implements bhz {

    /* renamed from: a  reason: collision with root package name */
    private awm f23357a;

    /* renamed from: b  reason: collision with root package name */
    private aqz f23358b;

    /* renamed from: c  reason: collision with root package name */
    private cpk f23359c;

    /* renamed from: d  reason: collision with root package name */
    private cmp f23360d;
    private clq e;
    private final /* synthetic */ ago f;

    private ahp(ago agoVar) {
        this.f = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ aqw<bhx> a(clq clqVar) {
        this.e = clqVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ aqw<bhx> a(cmp cmpVar) {
        this.f23360d = cmpVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ aqw<bhx> a(cpk cpkVar) {
        this.f23359c = cpkVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.bhz
    /* renamed from: a */
    public final bhx b() {
        dso.a(this.f23357a, awm.class);
        dso.a(this.f23358b, aqz.class);
        return new ahs(this.f, new aow(), new cqk(), new aqi(), new blv(), this.f23357a, this.f23358b, new cqo(), this.f23359c, this.f23360d, this.e);
    }

    @Override // com.google.android.gms.internal.ads.bhz
    public final /* synthetic */ bhz a(aqz aqzVar) {
        this.f23358b = (aqz) dso.a(aqzVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.bhz
    public final /* synthetic */ bhz a(awm awmVar) {
        this.f23357a = (awm) dso.a(awmVar);
        return this;
    }
}
