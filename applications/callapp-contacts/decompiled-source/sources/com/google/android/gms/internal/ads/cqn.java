package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqn.class */
public final class cqn implements dsi<ayi<arp>> {

    /* renamed from: a  reason: collision with root package name */
    private final cqk f26263a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cqm> f26264b;

    private cqn(cqk cqkVar, dsv<cqm> dsvVar) {
        this.f26263a = cqkVar;
        this.f26264b = dsvVar;
    }

    public static cqn a(cqk cqkVar, dsv<cqm> dsvVar) {
        return new cqn(cqkVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f26264b.a(), zd.f));
    }
}
