package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmu.class */
public final class bmu implements dsi<bmi> {

    /* renamed from: a */
    private final dsv<Executor> f44299a;

    /* renamed from: b */
    private final dsv<Context> f44300b;

    /* renamed from: c */
    private final dsv<WeakReference<Context>> f44301c;

    /* renamed from: d */
    private final dsv<Executor> f44302d;

    /* renamed from: e */
    private final dsv<bjg> f44303e;

    /* renamed from: f */
    private final dsv<ScheduledExecutorService> f44304f;

    /* renamed from: g */
    private final dsv<blr> f44305g;

    /* renamed from: h */
    private final dsv<zzbar> f44306h;

    /* renamed from: i */
    private final dsv<axn> f44307i;

    public bmu(dsv<Executor> dsvVar, dsv<Context> dsvVar2, dsv<WeakReference<Context>> dsvVar3, dsv<Executor> dsvVar4, dsv<bjg> dsvVar5, dsv<ScheduledExecutorService> dsvVar6, dsv<blr> dsvVar7, dsv<zzbar> dsvVar8, dsv<axn> dsvVar9) {
        this.f44299a = dsvVar;
        this.f44300b = dsvVar2;
        this.f44301c = dsvVar3;
        this.f44302d = dsvVar4;
        this.f44303e = dsvVar5;
        this.f44304f = dsvVar6;
        this.f44305g = dsvVar7;
        this.f44306h = dsvVar8;
        this.f44307i = dsvVar9;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bmi(this.f44299a.mo14005a(), this.f44300b.mo14005a(), this.f44301c.mo14005a(), this.f44302d.mo14005a(), this.f44303e.mo14005a(), this.f44304f.mo14005a(), this.f44305g.mo14005a(), this.f44306h.mo14005a(), this.f44307i.mo14005a());
    }
}
