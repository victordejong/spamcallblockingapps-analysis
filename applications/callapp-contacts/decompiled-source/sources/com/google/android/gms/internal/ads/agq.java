package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/agq.class */
final class agq implements bbd {

    /* renamed from: a  reason: collision with root package name */
    private awm f23259a;

    /* renamed from: b  reason: collision with root package name */
    private aqz f23260b;

    /* renamed from: c  reason: collision with root package name */
    private bba f23261c;

    /* renamed from: d  reason: collision with root package name */
    private alp f23262d;
    private cpk e;
    private cmp f;
    private clq g;
    private final /* synthetic */ ago h;

    private agq(ago agoVar) {
        this.h = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ aqw<bbe> a(clq clqVar) {
        this.g = clqVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ aqw<bbe> a(cmp cmpVar) {
        this.f = cmpVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ aqw<bbe> a(cpk cpkVar) {
        this.e = cpkVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.bbd
    public final /* synthetic */ bbd a(alp alpVar) {
        this.f23262d = (alp) dso.a(alpVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.bbd
    public final /* synthetic */ bbd a(aqz aqzVar) {
        this.f23260b = (aqz) dso.a(aqzVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.bbd
    public final /* synthetic */ bbd a(awm awmVar) {
        this.f23259a = (awm) dso.a(awmVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.bbd
    public final /* synthetic */ bbd a(bba bbaVar) {
        this.f23261c = (bba) dso.a(bbaVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.bbd
    /* renamed from: a */
    public final bbe b() {
        dso.a(this.f23259a, awm.class);
        dso.a(this.f23260b, aqz.class);
        dso.a(this.f23261c, bba.class);
        dso.a(this.f23262d, alp.class);
        return new agp(this.h, this.f23262d, this.f23261c, new aow(), new cqk(), new aqi(), new blv(), this.f23259a, this.f23260b, new cqo(), this.e, this.f, this.g);
    }
}
