package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbk.class */
public final class cbk implements dsi<caw> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<afq> f25535a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f25536b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<die> f25537c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<zzbar> f25538d;
    private final dsv<cqd<bgy>> e;
    private final dsv<dbs> f;
    private final dsv<ScheduledExecutorService> g;

    public cbk(dsv<afq> dsvVar, dsv<Context> dsvVar2, dsv<die> dsvVar3, dsv<zzbar> dsvVar4, dsv<cqd<bgy>> dsvVar5, dsv<dbs> dsvVar6, dsv<ScheduledExecutorService> dsvVar7) {
        this.f25535a = dsvVar;
        this.f25536b = dsvVar2;
        this.f25537c = dsvVar3;
        this.f25538d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
        this.g = dsvVar7;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new caw(this.f25535a.a(), this.f25536b.a(), this.f25537c.a(), this.f25538d.a(), this.e.a(), this.f.a(), this.g.a());
    }
}
