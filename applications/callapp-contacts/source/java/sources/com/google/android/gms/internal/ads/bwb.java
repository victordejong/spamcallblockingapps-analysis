package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwb.class */
public final class bwb implements dsi<bvz> {

    /* renamed from: a */
    private final dsv<cpz> f44916a;

    /* renamed from: b */
    private final dsv<bja> f44917b;

    /* renamed from: c */
    private final dsv<bli> f44918c;

    /* renamed from: d */
    private final dsv<cty> f44919d;

    private bwb(dsv<cpz> dsvVar, dsv<bja> dsvVar2, dsv<bli> dsvVar3, dsv<cty> dsvVar4) {
        this.f44916a = dsvVar;
        this.f44917b = dsvVar2;
        this.f44918c = dsvVar3;
        this.f44919d = dsvVar4;
    }

    /* renamed from: a */
    public static bwb m17596a(dsv<cpz> dsvVar, dsv<bja> dsvVar2, dsv<bli> dsvVar3, dsv<cty> dsvVar4) {
        return new bwb(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bvz(this.f44916a.mo14005a(), this.f44917b.mo14005a(), this.f44918c.mo14005a(), this.f44919d.mo14005a());
    }
}
