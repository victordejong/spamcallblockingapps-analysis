package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apb.class */
public final class apb implements dsi<ayi<ash>> {

    /* renamed from: a  reason: collision with root package name */
    private final aow f23692a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<apf> f23693b;

    private apb(aow aowVar, dsv<apf> dsvVar) {
        this.f23692a = aowVar;
        this.f23693b = dsvVar;
    }

    public static apb a(aow aowVar, dsv<apf> dsvVar) {
        return new apb(aowVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23693b.a(), zd.f));
    }
}
