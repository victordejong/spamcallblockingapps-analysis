package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/agy.class */
final class agy implements akw {

    /* renamed from: a  reason: collision with root package name */
    private awm f23291a;

    /* renamed from: b  reason: collision with root package name */
    private aqz f23292b;

    /* renamed from: c  reason: collision with root package name */
    private cpk f23293c;

    /* renamed from: d  reason: collision with root package name */
    private cmp f23294d;
    private clq e;
    private final /* synthetic */ ago f;

    private agy(ago agoVar) {
        this.f = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.akw
    @Deprecated
    public final /* synthetic */ akw a(alp alpVar) {
        dso.a(alpVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.akw
    public final /* synthetic */ akw a(aqz aqzVar) {
        this.f23292b = (aqz) dso.a(aqzVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.akw
    public final /* synthetic */ akw a(awm awmVar) {
        this.f23291a = (awm) dso.a(awmVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ aqw<akt> a(clq clqVar) {
        this.e = clqVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ aqw<akt> a(cmp cmpVar) {
        this.f23294d = cmpVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ aqw<akt> a(cpk cpkVar) {
        this.f23293c = cpkVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    public final /* synthetic */ akt b() {
        dso.a(this.f23291a, awm.class);
        dso.a(this.f23292b, aqz.class);
        return new agx(this.f, new aow(), new cqk(), new aqi(), new blv(), this.f23291a, this.f23292b, new cqo(), this.f23293c, this.f23294d, this.e);
    }
}
