package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cii.class */
public final class cii implements dsi<cie> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<xz> f25887a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Integer> f25888b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Context> f25889c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<yd> f25890d;
    private final dsv<ScheduledExecutorService> e;
    private final dsv<Executor> f;

    public cii(dsv<xz> dsvVar, dsv<Integer> dsvVar2, dsv<Context> dsvVar3, dsv<yd> dsvVar4, dsv<ScheduledExecutorService> dsvVar5, dsv<Executor> dsvVar6) {
        this.f25887a = dsvVar;
        this.f25888b = dsvVar2;
        this.f25889c = dsvVar3;
        this.f25890d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cie(this.f25887a.a(), this.f25888b.a().intValue(), this.f25889c.a(), this.f25890d.a(), this.e.a(), this.f.a());
    }
}
