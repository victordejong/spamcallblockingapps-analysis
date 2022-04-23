package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgp.class */
public final class bgp implements dsi<bgk> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bcf> f24400a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bcr> f24401b;

    private bgp(dsv<bcf> dsvVar, dsv<bcr> dsvVar2) {
        this.f24400a = dsvVar;
        this.f24401b = dsvVar2;
    }

    public static bgp a(dsv<bcf> dsvVar, dsv<bcr> dsvVar2) {
        return new bgp(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bgk(this.f24400a.a(), this.f24401b.a());
    }
}
