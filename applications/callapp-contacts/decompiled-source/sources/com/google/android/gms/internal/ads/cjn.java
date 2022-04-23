package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cjn.class */
public final class cjn implements dsi<cjk> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f25944a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f25945b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<afq> f25946c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<cmh<akt, alb>> f25947d;
    private final dsv<ckb> e;
    private final dsv<cpq> f;

    public cjn(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<afq> dsvVar3, dsv<cmh<akt, alb>> dsvVar4, dsv<ckb> dsvVar5, dsv<cpq> dsvVar6) {
        this.f25944a = dsvVar;
        this.f25945b = dsvVar2;
        this.f25946c = dsvVar3;
        this.f25947d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cjk(this.f25944a.a(), this.f25945b.a(), this.f25946c.a(), this.f25947d.a(), this.e.a(), this.f.a());
    }
}
