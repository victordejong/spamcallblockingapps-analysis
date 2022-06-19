package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bjp.class */
public final class bjp implements dsi<ayi<arp>> {

    /* renamed from: a */
    private final dsv<bjz> f44112a;

    /* renamed from: b */
    private final dsv<Executor> f44113b;

    private bjp(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        this.f44112a = dsvVar;
        this.f44113b = dsvVar2;
    }

    /* renamed from: a */
    public static bjp m17804a(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        return new bjp(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f44112a.mo14005a(), this.f44113b.mo14005a()));
    }
}
