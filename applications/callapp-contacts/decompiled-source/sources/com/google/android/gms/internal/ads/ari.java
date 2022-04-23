package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ari.class */
public final class ari implements dsi<arf> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cov> f23819a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<String> f23820b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bso> f23821c;

    private ari(dsv<cov> dsvVar, dsv<String> dsvVar2, dsv<bso> dsvVar3) {
        this.f23819a = dsvVar;
        this.f23820b = dsvVar2;
        this.f23821c = dsvVar3;
    }

    public static ari a(dsv<cov> dsvVar, dsv<String> dsvVar2, dsv<bso> dsvVar3) {
        return new ari(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new arf(this.f23819a.a(), this.f23820b.a(), this.f23821c.a());
    }
}
