package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apt.class */
public final class apt implements dsi<ayi<asd>> {

    /* renamed from: a */
    private final dsv<aue> f42595a;

    /* renamed from: b */
    private final dsv<Executor> f42596b;

    private apt(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        this.f42595a = dsvVar;
        this.f42596b = dsvVar2;
    }

    /* renamed from: a */
    public static apt m18482a(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        return new apt(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f42595a.mo14005a(), this.f42596b.mo14005a()));
    }
}
