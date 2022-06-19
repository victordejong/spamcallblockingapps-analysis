package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bjs.class */
public final class bjs implements dsi<ayi<ash>> {

    /* renamed from: a */
    private final dsv<bjz> f44118a;

    /* renamed from: b */
    private final dsv<Executor> f44119b;

    private bjs(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        this.f44118a = dsvVar;
        this.f44119b = dsvVar2;
    }

    /* renamed from: a */
    public static bjs m17801a(dsv<bjz> dsvVar, dsv<Executor> dsvVar2) {
        return new bjs(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f44118a.mo14005a(), this.f44119b.mo14005a()));
    }
}
