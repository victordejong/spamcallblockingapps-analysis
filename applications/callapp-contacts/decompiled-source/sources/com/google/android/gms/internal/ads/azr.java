package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azr.class */
public final class azr implements dsi<ayi<atb>> {

    /* renamed from: a  reason: collision with root package name */
    private final azj f24050a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bar> f24051b;

    private azr(azj azjVar, dsv<bar> dsvVar) {
        this.f24050a = azjVar;
        this.f24051b = dsvVar;
    }

    public static azr a(azj azjVar, dsv<bar> dsvVar) {
        return new azr(azjVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f24051b.a(), zd.e));
    }
}
