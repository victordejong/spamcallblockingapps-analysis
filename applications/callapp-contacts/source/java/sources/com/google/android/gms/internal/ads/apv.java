package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apv.class */
public final class apv implements dsi<ayi<atk>> {

    /* renamed from: a */
    private final dsv<aue> f42600a;

    /* renamed from: b */
    private final dsv<Executor> f42601b;

    private apv(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        this.f42600a = dsvVar;
        this.f42601b = dsvVar2;
    }

    /* renamed from: a */
    public static apv m18480a(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        return new apv(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f42600a.mo14005a(), this.f42601b.mo14005a()));
    }
}
