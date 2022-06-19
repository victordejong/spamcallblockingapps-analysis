package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/anf.class */
public final class anf implements dsi<amx> {

    /* renamed from: a */
    private final dsv<ans> f42459a;

    /* renamed from: b */
    private final dsv<AbstractC12558fn> f42460b;

    /* renamed from: c */
    private final dsv<Runnable> f42461c;

    /* renamed from: d */
    private final dsv<Executor> f42462d;

    public anf(dsv<ans> dsvVar, dsv<AbstractC12558fn> dsvVar2, dsv<Runnable> dsvVar3, dsv<Executor> dsvVar4) {
        this.f42459a = dsvVar;
        this.f42460b = dsvVar2;
        this.f42461c = dsvVar3;
        this.f42462d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new amx(this.f42459a.mo14005a(), this.f42460b.mo14005a(), this.f42461c.mo14005a(), this.f42462d.mo14005a());
    }
}
