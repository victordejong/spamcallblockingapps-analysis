package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ble.class */
public final class ble implements dsi<blf> {

    /* renamed from: a */
    private final dsv<bln> f44186a;

    /* renamed from: b */
    private final dsv<C13075yo> f44187b;

    private ble(dsv<bln> dsvVar, dsv<C13075yo> dsvVar2) {
        this.f44186a = dsvVar;
        this.f44187b = dsvVar2;
    }

    /* renamed from: a */
    public static ble m17772a(dsv<bln> dsvVar, dsv<C13075yo> dsvVar2) {
        return new ble(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new blf(this.f44186a.mo14005a(), this.f44187b.mo14005a());
    }
}
