package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxi.class */
public final class bxi implements dsi<bxf> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bym> f25333a;

    private bxi(dsv<bym> dsvVar) {
        this.f25333a = dsvVar;
    }

    public static bxi a(dsv<bym> dsvVar) {
        return new bxi(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bxf(this.f25333a.a());
    }
}
