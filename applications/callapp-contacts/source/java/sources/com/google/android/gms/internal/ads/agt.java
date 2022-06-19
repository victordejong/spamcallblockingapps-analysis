package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/agt.class */
final class agt implements ale {

    /* renamed from: a */
    private awm f40622a;

    /* renamed from: b */
    private aqz f40623b;

    /* renamed from: c */
    private cpk f40624c;

    /* renamed from: d */
    private cmp f40625d;

    /* renamed from: e */
    private clq f40626e;

    /* renamed from: f */
    private final /* synthetic */ ago f40627f;

    /* JADX INFO: Access modifiers changed from: private */
    public agt(ago agoVar) {
        this.f40627f = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.ale
    @Deprecated
    /* renamed from: a */
    public final /* synthetic */ ale mo18590a(alp alpVar) {
        dso.m15767a(alpVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.ale
    /* renamed from: a */
    public final /* synthetic */ ale mo18589a(aqz aqzVar) {
        this.f40623b = (aqz) dso.m15767a(aqzVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.ale
    /* renamed from: a */
    public final /* synthetic */ ale mo18588a(awm awmVar) {
        this.f40622a = (awm) dso.m15767a(awmVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    /* renamed from: a */
    public final /* synthetic */ aqw<alf> mo18456a(clq clqVar) {
        this.f40626e = clqVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    /* renamed from: a */
    public final /* synthetic */ aqw<alf> mo18455a(cmp cmpVar) {
        this.f40625d = cmpVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    /* renamed from: a */
    public final /* synthetic */ aqw<alf> mo18454a(cpk cpkVar) {
        this.f40624c = cpkVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    /* renamed from: b */
    public final /* synthetic */ alf mo18453b() {
        dso.m15766a(this.f40622a, awm.class);
        dso.m15766a(this.f40623b, aqz.class);
        return new agw(this.f40627f, new aow(), new cqk(), new aqi(), new blv(), this.f40622a, this.f40623b, new cqo(), this.f40624c, this.f40625d, this.f40626e);
    }
}
