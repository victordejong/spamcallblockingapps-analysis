package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqe.class */
public final class aqe implements dsi<ayi<asg>> {

    /* renamed from: a  reason: collision with root package name */
    private final app f23754a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<aqq> f23755b;

    private aqe(app appVar, dsv<aqq> dsvVar) {
        this.f23754a = appVar;
        this.f23755b = dsvVar;
    }

    public static aqe a(app appVar, dsv<aqq> dsvVar) {
        return new aqe(appVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23755b.a(), zd.f));
    }
}
