package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bfp.class */
public final class bfp implements dsi<bfi> {

    /* renamed from: a */
    private final dsv<Context> f43818a;

    /* renamed from: b */
    private final dsv<bey> f43819b;

    /* renamed from: c */
    private final dsv<die> f43820c;

    /* renamed from: d */
    private final dsv<zzbar> f43821d;

    /* renamed from: e */
    private final dsv<zzb> f43822e;

    /* renamed from: f */
    private final dsv<ehk> f43823f;

    /* renamed from: g */
    private final dsv<Executor> f43824g;

    /* renamed from: h */
    private final dsv<cpo> f43825h;

    /* renamed from: i */
    private final dsv<bfv> f43826i;

    /* renamed from: j */
    private final dsv<ScheduledExecutorService> f43827j;

    public bfp(dsv<Context> dsvVar, dsv<bey> dsvVar2, dsv<die> dsvVar3, dsv<zzbar> dsvVar4, dsv<zzb> dsvVar5, dsv<ehk> dsvVar6, dsv<Executor> dsvVar7, dsv<cpo> dsvVar8, dsv<bfv> dsvVar9, dsv<ScheduledExecutorService> dsvVar10) {
        this.f43818a = dsvVar;
        this.f43819b = dsvVar2;
        this.f43820c = dsvVar3;
        this.f43821d = dsvVar4;
        this.f43822e = dsvVar5;
        this.f43823f = dsvVar6;
        this.f43824g = dsvVar7;
        this.f43825h = dsvVar8;
        this.f43826i = dsvVar9;
        this.f43827j = dsvVar10;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bfi(this.f43818a.mo14005a(), this.f43819b.mo14005a(), this.f43820c.mo14005a(), this.f43821d.mo14005a(), this.f43822e.mo14005a(), this.f43823f.mo14005a(), this.f43824g.mo14005a(), this.f43825h.mo14005a(), this.f43826i.mo14005a(), this.f43827j.mo14005a());
    }
}
