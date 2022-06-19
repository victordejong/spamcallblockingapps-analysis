package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chq.class */
public final class chq implements dsi<chp> {

    /* renamed from: a */
    private final dsv<AbstractC13059xz> f45811a;

    /* renamed from: b */
    private final dsv<Context> f45812b;

    /* renamed from: c */
    private final dsv<ScheduledExecutorService> f45813c;

    /* renamed from: d */
    private final dsv<Executor> f45814d;

    /* renamed from: e */
    private final dsv<Integer> f45815e;

    public chq(dsv<AbstractC13059xz> dsvVar, dsv<Context> dsvVar2, dsv<ScheduledExecutorService> dsvVar3, dsv<Executor> dsvVar4, dsv<Integer> dsvVar5) {
        this.f45811a = dsvVar;
        this.f45812b = dsvVar2;
        this.f45813c = dsvVar3;
        this.f45814d = dsvVar4;
        this.f45815e = dsvVar5;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new chp(this.f45811a.mo14005a(), this.f45812b.mo14005a(), this.f45813c.mo14005a(), this.f45814d.mo14005a(), this.f45815e.mo14005a().intValue());
    }
}
