package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqn.class */
public final class aqn implements dsi<aqm> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<asc> f23777a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cov> f23778b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<ScheduledExecutorService> f23779c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<Executor> f23780d;

    private aqn(dsv<asc> dsvVar, dsv<cov> dsvVar2, dsv<ScheduledExecutorService> dsvVar3, dsv<Executor> dsvVar4) {
        this.f23777a = dsvVar;
        this.f23778b = dsvVar2;
        this.f23779c = dsvVar3;
        this.f23780d = dsvVar4;
    }

    public static aqn a(dsv<asc> dsvVar, dsv<cov> dsvVar2, dsv<ScheduledExecutorService> dsvVar3, dsv<Executor> dsvVar4) {
        return new aqn(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new aqm(this.f23777a.a(), this.f23778b.a(), this.f23779c.a(), this.f23780d.a());
    }
}
