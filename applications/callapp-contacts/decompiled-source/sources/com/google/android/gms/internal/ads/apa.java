package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apa.class */
public final class apa implements dsi<ayi<atb>> {

    /* renamed from: a  reason: collision with root package name */
    private final aow f23690a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<apf> f23691b;

    private apa(aow aowVar, dsv<apf> dsvVar) {
        this.f23690a = aowVar;
        this.f23691b = dsvVar;
    }

    public static apa a(aow aowVar, dsv<apf> dsvVar) {
        return new apa(aowVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23691b.a(), zd.f));
    }
}
