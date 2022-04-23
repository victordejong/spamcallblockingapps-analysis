package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/baf.class */
public final class baf implements dsi<bag> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<atj> f24072a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<aye> f24073b;

    private baf(dsv<atj> dsvVar, dsv<aye> dsvVar2) {
        this.f24072a = dsvVar;
        this.f24073b = dsvVar2;
    }

    public static baf a(dsv<atj> dsvVar, dsv<aye> dsvVar2) {
        return new baf(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bag(this.f24072a.a(), this.f24073b.a());
    }
}
