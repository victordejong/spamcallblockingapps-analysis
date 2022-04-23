package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/agt.class */
final class agt implements ale {

    /* renamed from: a  reason: collision with root package name */
    private awm f23271a;

    /* renamed from: b  reason: collision with root package name */
    private aqz f23272b;

    /* renamed from: c  reason: collision with root package name */
    private cpk f23273c;

    /* renamed from: d  reason: collision with root package name */
    private cmp f23274d;
    private clq e;
    private final /* synthetic */ ago f;

    private agt(ago agoVar) {
        this.f = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.ale
    @Deprecated
    public final /* synthetic */ ale a(alp alpVar) {
        dso.a(alpVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.ale
    public final /* synthetic */ ale a(aqz aqzVar) {
        this.f23272b = (aqz) dso.a(aqzVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.ale
    public final /* synthetic */ ale a(awm awmVar) {
        this.f23271a = (awm) dso.a(awmVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ aqw<alf> a(clq clqVar) {
        this.e = clqVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ aqw<alf> a(cmp cmpVar) {
        this.f23274d = cmpVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ aqw<alf> a(cpk cpkVar) {
        this.f23273c = cpkVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ alf b() {
        dso.a(this.f23271a, awm.class);
        dso.a(this.f23272b, aqz.class);
        return new agw(this.f, new aow(), new cqk(), new aqi(), new blv(), this.f23271a, this.f23272b, new cqo(), this.f23273c, this.f23274d, this.e);
    }
}
