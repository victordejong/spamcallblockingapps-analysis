package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apg.class */
public final class apg implements dsi<ayi<eir>> {

    /* renamed from: a */
    private final dsv<ajk> f42569a;

    /* renamed from: b */
    private final dsv<Executor> f42570b;

    private apg(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        this.f42569a = dsvVar;
        this.f42570b = dsvVar2;
    }

    /* renamed from: a */
    public static apg m18493a(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        return new apg(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f42569a.mo14005a(), this.f42570b.mo14005a()));
    }
}
