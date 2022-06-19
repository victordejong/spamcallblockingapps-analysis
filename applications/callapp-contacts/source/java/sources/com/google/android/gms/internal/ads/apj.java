package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apj.class */
public final class apj implements dsi<ayi<aro>> {

    /* renamed from: a */
    private final dsv<ajk> f42575a;

    /* renamed from: b */
    private final dsv<Executor> f42576b;

    private apj(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        this.f42575a = dsvVar;
        this.f42576b = dsvVar2;
    }

    /* renamed from: a */
    public static apj m18490a(dsv<ajk> dsvVar, dsv<Executor> dsvVar2) {
        return new apj(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f42575a.mo14005a(), this.f42576b.mo14005a()));
    }
}
