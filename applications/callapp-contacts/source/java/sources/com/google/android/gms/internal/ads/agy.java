package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/agy.class */
final class agy implements akw {

    /* renamed from: a */
    private awm f41058a;

    /* renamed from: b */
    private aqz f41059b;

    /* renamed from: c */
    private cpk f41060c;

    /* renamed from: d */
    private cmp f41061d;

    /* renamed from: e */
    private clq f41062e;

    /* renamed from: f */
    private final /* synthetic */ ago f41063f;

    /* JADX INFO: Access modifiers changed from: private */
    public agy(ago agoVar) {
        this.f41063f = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.akw
    @Deprecated
    /* renamed from: a */
    public final /* synthetic */ akw mo18604a(alp alpVar) {
        dso.m15767a(alpVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.akw
    /* renamed from: a */
    public final /* synthetic */ akw mo18603a(aqz aqzVar) {
        this.f41059b = (aqz) dso.m15767a(aqzVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.akw
    /* renamed from: a */
    public final /* synthetic */ akw mo18602a(awm awmVar) {
        this.f41058a = (awm) dso.m15767a(awmVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    /* renamed from: a */
    public final /* synthetic */ aqw<akt> mo18456a(clq clqVar) {
        this.f41062e = clqVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    /* renamed from: a */
    public final /* synthetic */ aqw<akt> mo18455a(cmp cmpVar) {
        this.f41061d = cmpVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    /* renamed from: a */
    public final /* synthetic */ aqw<akt> mo18454a(cpk cpkVar) {
        this.f41060c = cpkVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    /* renamed from: b */
    public final /* synthetic */ akt mo18453b() {
        dso.m15766a(this.f41058a, awm.class);
        dso.m15766a(this.f41059b, aqz.class);
        return new agx(this.f41063f, new aow(), new cqk(), new aqi(), new blv(), this.f41058a, this.f41059b, new cqo(), this.f41060c, this.f41061d, this.f41062e);
    }
}
