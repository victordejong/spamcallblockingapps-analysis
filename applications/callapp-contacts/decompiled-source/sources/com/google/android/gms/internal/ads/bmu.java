package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmu.class */
public final class bmu implements dsi<bmi> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Executor> f24723a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f24724b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<WeakReference<Context>> f24725c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<Executor> f24726d;
    private final dsv<bjg> e;
    private final dsv<ScheduledExecutorService> f;
    private final dsv<blr> g;
    private final dsv<zzbar> h;
    private final dsv<axn> i;

    public bmu(dsv<Executor> dsvVar, dsv<Context> dsvVar2, dsv<WeakReference<Context>> dsvVar3, dsv<Executor> dsvVar4, dsv<bjg> dsvVar5, dsv<ScheduledExecutorService> dsvVar6, dsv<blr> dsvVar7, dsv<zzbar> dsvVar8, dsv<axn> dsvVar9) {
        this.f24723a = dsvVar;
        this.f24724b = dsvVar2;
        this.f24725c = dsvVar3;
        this.f24726d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
        this.g = dsvVar7;
        this.h = dsvVar8;
        this.i = dsvVar9;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bmi(this.f24723a.a(), this.f24724b.a(), this.f24725c.a(), this.f24726d.a(), this.e.a(), this.f.a(), this.g.a(), this.h.a(), this.i.a());
    }
}
