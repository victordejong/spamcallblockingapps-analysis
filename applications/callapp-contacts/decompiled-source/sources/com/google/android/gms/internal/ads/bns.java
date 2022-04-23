package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bns.class */
public final class bns implements dsi<ctz> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<String> f24763a;

    private bns(dsv<String> dsvVar) {
        this.f24763a = dsvVar;
    }

    public static bns a(dsv<String> dsvVar) {
        return new bns(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        String a2 = this.f24763a.a();
        ctz ctzVar = new ctz();
        ctzVar.a("request_id", a2);
        return (ctz) dso.b(ctzVar);
    }
}
