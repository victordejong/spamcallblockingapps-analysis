package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqh.class */
public final class aqh implements dsi<ayi<auf>> {

    /* renamed from: a  reason: collision with root package name */
    private final aqi f23764a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<aqg> f23765b;

    private aqh(aqi aqiVar, dsv<aqg> dsvVar) {
        this.f23764a = aqiVar;
        this.f23765b = dsvVar;
    }

    public static aqh a(aqi aqiVar, dsv<aqg> dsvVar) {
        return new aqh(aqiVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23765b.a(), zd.f));
    }
}
