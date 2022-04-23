package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chq.class */
public final class chq implements dsi<chp> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<xz> f25852a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f25853b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<ScheduledExecutorService> f25854c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<Executor> f25855d;
    private final dsv<Integer> e;

    public chq(dsv<xz> dsvVar, dsv<Context> dsvVar2, dsv<ScheduledExecutorService> dsvVar3, dsv<Executor> dsvVar4, dsv<Integer> dsvVar5) {
        this.f25852a = dsvVar;
        this.f25853b = dsvVar2;
        this.f25854c = dsvVar3;
        this.f25855d = dsvVar4;
        this.e = dsvVar5;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new chp(this.f25852a.a(), this.f25853b.a(), this.f25854c.a(), this.f25855d.a(), this.e.a().intValue());
    }
}
