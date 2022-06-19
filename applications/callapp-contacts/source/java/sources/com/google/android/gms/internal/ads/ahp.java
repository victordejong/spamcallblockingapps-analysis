package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahp.class */
final class ahp implements bhz {

    /* renamed from: a */
    private awm f41784a;

    /* renamed from: b */
    private aqz f41785b;

    /* renamed from: c */
    private cpk f41786c;

    /* renamed from: d */
    private cmp f41787d;

    /* renamed from: e */
    private clq f41788e;

    /* renamed from: f */
    private final /* synthetic */ ago f41789f;

    /* JADX INFO: Access modifiers changed from: private */
    public ahp(ago agoVar) {
        this.f41789f = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    /* renamed from: a */
    public final /* synthetic */ aqw<bhx> mo18456a(clq clqVar) {
        this.f41788e = clqVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    /* renamed from: a */
    public final /* synthetic */ aqw<bhx> mo18455a(cmp cmpVar) {
        this.f41787d = cmpVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.aqw
    /* renamed from: a */
    public final /* synthetic */ aqw<bhx> mo18454a(cpk cpkVar) {
        this.f41786c = cpkVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.bhz
    /* renamed from: a */
    public final bhx mo18453b() {
        dso.m15766a(this.f41784a, awm.class);
        dso.m15766a(this.f41785b, aqz.class);
        return new ahs(this.f41789f, new aow(), new cqk(), new aqi(), new blv(), this.f41784a, this.f41785b, new cqo(), this.f41786c, this.f41787d, this.f41788e);
    }

    @Override // com.google.android.gms.internal.ads.bhz
    /* renamed from: a */
    public final /* synthetic */ bhz mo17836a(aqz aqzVar) {
        this.f41785b = (aqz) dso.m15767a(aqzVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.bhz
    /* renamed from: a */
    public final /* synthetic */ bhz mo17835a(awm awmVar) {
        this.f41784a = (awm) dso.m15767a(awmVar);
        return this;
    }
}
