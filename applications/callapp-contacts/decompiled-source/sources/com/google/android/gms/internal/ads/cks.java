package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cks.class */
public final class cks implements dsi<ckp> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f25991a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f25992b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<afq> f25993c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<cmh<alf, all>> f25994d;
    private final dsv<ckb> e;
    private final dsv<cpq> f;

    public cks(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<afq> dsvVar3, dsv<cmh<alf, all>> dsvVar4, dsv<ckb> dsvVar5, dsv<cpq> dsvVar6) {
        this.f25991a = dsvVar;
        this.f25992b = dsvVar2;
        this.f25993c = dsvVar3;
        this.f25994d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new ckp(this.f25991a.a(), this.f25992b.a(), this.f25993c.a(), this.f25994d.a(), this.e.a(), this.f.a());
    }
}
