package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aoy.class */
public final class aoy implements dsi<ayi<aro>> {

    /* renamed from: a  reason: collision with root package name */
    private final aow f23684a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<apf> f23685b;

    private aoy(aow aowVar, dsv<apf> dsvVar) {
        this.f23684a = aowVar;
        this.f23685b = dsvVar;
    }

    public static aoy a(aow aowVar, dsv<apf> dsvVar) {
        return new aoy(aowVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23685b.a(), zd.f));
    }
}
