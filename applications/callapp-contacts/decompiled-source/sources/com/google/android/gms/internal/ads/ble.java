package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ble.class */
public final class ble implements dsi<blf> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bln> f24628a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<yo> f24629b;

    private ble(dsv<bln> dsvVar, dsv<yo> dsvVar2) {
        this.f24628a = dsvVar;
        this.f24629b = dsvVar2;
    }

    public static ble a(dsv<bln> dsvVar, dsv<yo> dsvVar2) {
        return new ble(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new blf(this.f24628a.a(), this.f24629b.a());
    }
}
