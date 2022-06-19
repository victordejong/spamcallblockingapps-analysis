package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aph.class */
public final class aph implements dsi<ayi<ayn>> {

    /* renamed from: a */
    private final dsv<ayq> f42571a;

    /* renamed from: b */
    private final dsv<Executor> f42572b;

    private aph(dsv<ayq> dsvVar, dsv<Executor> dsvVar2) {
        this.f42571a = dsvVar;
        this.f42572b = dsvVar2;
    }

    /* renamed from: a */
    public static aph m18492a(dsv<ayq> dsvVar, dsv<Executor> dsvVar2) {
        return new aph(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f42571a.mo14005a(), this.f42572b.mo14005a()));
    }
}
