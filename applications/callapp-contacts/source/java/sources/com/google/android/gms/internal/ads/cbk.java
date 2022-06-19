package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbk.class */
public final class cbk implements dsi<caw> {

    /* renamed from: a */
    private final dsv<afq> f45453a;

    /* renamed from: b */
    private final dsv<Context> f45454b;

    /* renamed from: c */
    private final dsv<die> f45455c;

    /* renamed from: d */
    private final dsv<zzbar> f45456d;

    /* renamed from: e */
    private final dsv<cqd<bgy>> f45457e;

    /* renamed from: f */
    private final dsv<dbs> f45458f;

    /* renamed from: g */
    private final dsv<ScheduledExecutorService> f45459g;

    public cbk(dsv<afq> dsvVar, dsv<Context> dsvVar2, dsv<die> dsvVar3, dsv<zzbar> dsvVar4, dsv<cqd<bgy>> dsvVar5, dsv<dbs> dsvVar6, dsv<ScheduledExecutorService> dsvVar7) {
        this.f45453a = dsvVar;
        this.f45454b = dsvVar2;
        this.f45455c = dsvVar3;
        this.f45456d = dsvVar4;
        this.f45457e = dsvVar5;
        this.f45458f = dsvVar6;
        this.f45459g = dsvVar7;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new caw(this.f45453a.mo14005a(), this.f45454b.mo14005a(), this.f45455c.mo14005a(), this.f45456d.mo14005a(), this.f45457e.mo14005a(), this.f45458f.mo14005a(), this.f45459g.mo14005a());
    }
}
