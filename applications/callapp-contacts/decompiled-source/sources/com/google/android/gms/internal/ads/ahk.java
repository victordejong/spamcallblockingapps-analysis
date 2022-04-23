package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahk.class */
final class ahk implements bah {

    /* renamed from: a  reason: collision with root package name */
    private awm f23338a;

    /* renamed from: b  reason: collision with root package name */
    private aqz f23339b;

    /* renamed from: c  reason: collision with root package name */
    private byb f23340c;

    /* renamed from: d  reason: collision with root package name */
    private cpk f23341d;
    private cmp e;
    private clq f;
    private final /* synthetic */ ago g;

    private ahk(ago agoVar) {
        this.g = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ aqw<bai> a(clq clqVar) {
        this.f = clqVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ aqw<bai> a(cmp cmpVar) {
        this.e = cmpVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ aqw<bai> a(cpk cpkVar) {
        this.f23341d = cpkVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.bah
    public final /* synthetic */ bah a(aqz aqzVar) {
        this.f23339b = (aqz) dso.a(aqzVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.bah
    public final /* synthetic */ bah a(awm awmVar) {
        this.f23338a = (awm) dso.a(awmVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.bah
    public final /* synthetic */ bah a(byb bybVar) {
        this.f23340c = (byb) dso.a(bybVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.bah
    /* renamed from: a */
    public final bai b() {
        dso.a(this.f23338a, awm.class);
        dso.a(this.f23339b, aqz.class);
        dso.a(this.f23340c, byb.class);
        return new ahj(this.g, new aow(), new cqk(), new aqi(), new blv(), this.f23338a, this.f23339b, new cqo(), this.f23340c, this.f23341d, this.e, this.f);
    }
}
