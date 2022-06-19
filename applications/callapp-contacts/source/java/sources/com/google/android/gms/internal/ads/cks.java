package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cks.class */
public final class cks implements dsi<ckp> {

    /* renamed from: a */
    private final dsv<Context> f45982a;

    /* renamed from: b */
    private final dsv<Executor> f45983b;

    /* renamed from: c */
    private final dsv<afq> f45984c;

    /* renamed from: d */
    private final dsv<cmh<alf, all>> f45985d;

    /* renamed from: e */
    private final dsv<ckb> f45986e;

    /* renamed from: f */
    private final dsv<cpq> f45987f;

    public cks(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<afq> dsvVar3, dsv<cmh<alf, all>> dsvVar4, dsv<ckb> dsvVar5, dsv<cpq> dsvVar6) {
        this.f45982a = dsvVar;
        this.f45983b = dsvVar2;
        this.f45984c = dsvVar3;
        this.f45985d = dsvVar4;
        this.f45986e = dsvVar5;
        this.f45987f = dsvVar6;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new ckp(this.f45982a.mo14005a(), this.f45983b.mo14005a(), this.f45984c.mo14005a(), this.f45985d.mo14005a(), this.f45986e.mo14005a(), this.f45987f.mo14005a());
    }
}
