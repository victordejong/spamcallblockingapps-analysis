package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahu.class */
final class ahu implements cat {

    /* renamed from: a */
    private aqz f42154a;

    /* renamed from: b */
    private cbj f42155b;

    /* renamed from: c */
    private final /* synthetic */ ago f42156c;

    /* JADX INFO: Access modifiers changed from: private */
    public ahu(ago agoVar) {
        this.f42156c = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.cat
    /* renamed from: a */
    public final /* synthetic */ cat mo17522a(aqz aqzVar) {
        this.f42154a = (aqz) dso.m15767a(aqzVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cat
    @Deprecated
    /* renamed from: a */
    public final /* synthetic */ cat mo17521a(awm awmVar) {
        dso.m15767a(awmVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cat
    /* renamed from: a */
    public final /* synthetic */ cat mo17520a(cbj cbjVar) {
        this.f42155b = (cbj) dso.m15767a(cbjVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cat
    /* renamed from: a */
    public final cau mo17523a() {
        dso.m15766a(this.f42154a, aqz.class);
        dso.m15766a(this.f42155b, cbj.class);
        return new aht(this.f42156c, this.f42155b, new aow(), new blv(), this.f42154a, new cqo());
    }
}
