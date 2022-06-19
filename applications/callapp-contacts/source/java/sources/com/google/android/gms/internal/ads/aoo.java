package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aoo.class */
public final class aoo implements dsi<ayi<atk>> {

    /* renamed from: a */
    private final dsv<att> f42530a;

    /* renamed from: b */
    private final dsv<Executor> f42531b;

    private aoo(dsv<att> dsvVar, dsv<Executor> dsvVar2) {
        this.f42530a = dsvVar;
        this.f42531b = dsvVar2;
    }

    /* renamed from: a */
    public static aoo m18510a(dsv<att> dsvVar, dsv<Executor> dsvVar2) {
        return new aoo(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f42530a.mo14005a(), this.f42531b.mo14005a()));
    }
}
