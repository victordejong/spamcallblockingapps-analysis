package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cjn.class */
public final class cjn implements dsi<cjk> {

    /* renamed from: a */
    private final dsv<Context> f45918a;

    /* renamed from: b */
    private final dsv<Executor> f45919b;

    /* renamed from: c */
    private final dsv<afq> f45920c;

    /* renamed from: d */
    private final dsv<cmh<akt, alb>> f45921d;

    /* renamed from: e */
    private final dsv<ckb> f45922e;

    /* renamed from: f */
    private final dsv<cpq> f45923f;

    public cjn(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<afq> dsvVar3, dsv<cmh<akt, alb>> dsvVar4, dsv<ckb> dsvVar5, dsv<cpq> dsvVar6) {
        this.f45918a = dsvVar;
        this.f45919b = dsvVar2;
        this.f45920c = dsvVar3;
        this.f45921d = dsvVar4;
        this.f45922e = dsvVar5;
        this.f45923f = dsvVar6;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cjk(this.f45918a.mo14005a(), this.f45919b.mo14005a(), this.f45920c.mo14005a(), this.f45921d.mo14005a(), this.f45922e.mo14005a(), this.f45923f.mo14005a());
    }
}
