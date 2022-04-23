package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bfp.class */
public final class bfp implements dsi<bfi> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f24344a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bey> f24345b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<die> f24346c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<zzbar> f24347d;
    private final dsv<zzb> e;
    private final dsv<ehk> f;
    private final dsv<Executor> g;
    private final dsv<cpo> h;
    private final dsv<bfv> i;
    private final dsv<ScheduledExecutorService> j;

    public bfp(dsv<Context> dsvVar, dsv<bey> dsvVar2, dsv<die> dsvVar3, dsv<zzbar> dsvVar4, dsv<zzb> dsvVar5, dsv<ehk> dsvVar6, dsv<Executor> dsvVar7, dsv<cpo> dsvVar8, dsv<bfv> dsvVar9, dsv<ScheduledExecutorService> dsvVar10) {
        this.f24344a = dsvVar;
        this.f24345b = dsvVar2;
        this.f24346c = dsvVar3;
        this.f24347d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
        this.g = dsvVar7;
        this.h = dsvVar8;
        this.i = dsvVar9;
        this.j = dsvVar10;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bfi(this.f24344a.a(), this.f24345b.a(), this.f24346c.a(), this.f24347d.a(), this.e.a(), this.f.a(), this.g.a(), this.h.a(), this.i.a(), this.j.a());
    }
}
