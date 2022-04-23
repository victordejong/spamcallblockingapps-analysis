package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqd.class */
public final class aqd implements dsi<ayi<atb>> {

    /* renamed from: a  reason: collision with root package name */
    private final app f23752a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<aqq> f23753b;

    private aqd(app appVar, dsv<aqq> dsvVar) {
        this.f23752a = appVar;
        this.f23753b = dsvVar;
    }

    public static aqd a(app appVar, dsv<aqq> dsvVar) {
        return new aqd(appVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23753b.a(), zd.f));
    }
}
