package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aoz.class */
public final class aoz implements dsi<ayi<eir>> {

    /* renamed from: a  reason: collision with root package name */
    private final aow f23686a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<apf> f23687b;

    private aoz(aow aowVar, dsv<apf> dsvVar) {
        this.f23686a = aowVar;
        this.f23687b = dsvVar;
    }

    public static aoz a(aow aowVar, dsv<apf> dsvVar) {
        return new aoz(aowVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23687b.a(), zd.f));
    }
}
