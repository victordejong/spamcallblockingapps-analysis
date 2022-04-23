package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bkh.class */
public final class bkh implements dsi<bjz> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<ehk> f24585a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cmp> f24586b;

    private bkh(dsv<ehk> dsvVar, dsv<cmp> dsvVar2) {
        this.f24585a = dsvVar;
        this.f24586b = dsvVar2;
    }

    public static bkh a(dsv<ehk> dsvVar, dsv<cmp> dsvVar2) {
        return new bkh(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bjz(this.f24585a.a(), this.f24586b.a());
    }
}
