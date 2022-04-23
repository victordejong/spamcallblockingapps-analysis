package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/anf.class */
public final class anf implements dsi<amx> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<ans> f23612a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<fn> f23613b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Runnable> f23614c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<Executor> f23615d;

    public anf(dsv<ans> dsvVar, dsv<fn> dsvVar2, dsv<Runnable> dsvVar3, dsv<Executor> dsvVar4) {
        this.f23612a = dsvVar;
        this.f23613b = dsvVar2;
        this.f23614c = dsvVar3;
        this.f23615d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new amx(this.f23612a.a(), this.f23613b.a(), this.f23614c.a(), this.f23615d.a());
    }
}
