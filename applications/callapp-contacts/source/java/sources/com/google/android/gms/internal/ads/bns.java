package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bns.class */
public final class bns implements dsi<ctz> {

    /* renamed from: a */
    private final dsv<String> f44345a;

    private bns(dsv<String> dsvVar) {
        this.f44345a = dsvVar;
    }

    /* renamed from: a */
    public static bns m17716a(dsv<String> dsvVar) {
        return new bns(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        String mo14005a = this.f44345a.mo14005a();
        ctz ctzVar = new ctz();
        ctzVar.m17225a("request_id", mo14005a);
        return (ctz) dso.m15764b(ctzVar);
    }
}
