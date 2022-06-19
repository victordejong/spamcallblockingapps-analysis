package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ari.class */
public final class ari implements dsi<arf> {

    /* renamed from: a */
    private final dsv<cov> f43093a;

    /* renamed from: b */
    private final dsv<String> f43094b;

    /* renamed from: c */
    private final dsv<bso> f43095c;

    private ari(dsv<cov> dsvVar, dsv<String> dsvVar2, dsv<bso> dsvVar3) {
        this.f43093a = dsvVar;
        this.f43094b = dsvVar2;
        this.f43095c = dsvVar3;
    }

    /* renamed from: a */
    public static ari m18440a(dsv<cov> dsvVar, dsv<String> dsvVar2, dsv<bso> dsvVar3) {
        return new ari(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new arf(this.f43093a.mo14005a(), this.f43094b.mo14005a(), this.f43095c.mo14005a());
    }
}
