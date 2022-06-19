package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bls.class */
public final class bls implements dsi<bln> {

    /* renamed from: a */
    private final dsv<Executor> f44223a;

    /* renamed from: b */
    private final dsv<C13090zc> f44224b;

    /* renamed from: c */
    private final dsv<cuh> f44225c;

    /* renamed from: d */
    private final dsv<cuj> f44226d;

    public bls(dsv<Executor> dsvVar, dsv<C13090zc> dsvVar2, dsv<cuh> dsvVar3, dsv<cuj> dsvVar4) {
        this.f44223a = dsvVar;
        this.f44224b = dsvVar2;
        this.f44225c = dsvVar3;
        this.f44226d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bln(this.f44223a.mo14005a(), this.f44224b.mo14005a(), this.f44225c.mo14005a(), this.f44226d.mo14005a());
    }
}
