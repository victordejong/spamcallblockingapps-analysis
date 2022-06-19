package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cii.class */
public final class cii implements dsi<cie> {

    /* renamed from: a */
    private final dsv<AbstractC13059xz> f45850a;

    /* renamed from: b */
    private final dsv<Integer> f45851b;

    /* renamed from: c */
    private final dsv<Context> f45852c;

    /* renamed from: d */
    private final dsv<C13064yd> f45853d;

    /* renamed from: e */
    private final dsv<ScheduledExecutorService> f45854e;

    /* renamed from: f */
    private final dsv<Executor> f45855f;

    public cii(dsv<AbstractC13059xz> dsvVar, dsv<Integer> dsvVar2, dsv<Context> dsvVar3, dsv<C13064yd> dsvVar4, dsv<ScheduledExecutorService> dsvVar5, dsv<Executor> dsvVar6) {
        this.f45850a = dsvVar;
        this.f45851b = dsvVar2;
        this.f45852c = dsvVar3;
        this.f45853d = dsvVar4;
        this.f45854e = dsvVar5;
        this.f45855f = dsvVar6;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cie(this.f45850a.mo14005a(), this.f45851b.mo14005a().intValue(), this.f45852c.mo14005a(), this.f45853d.mo14005a(), this.f45854e.mo14005a(), this.f45855f.mo14005a());
    }
}
