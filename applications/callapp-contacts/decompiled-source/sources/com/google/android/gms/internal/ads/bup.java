package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bup.class */
public final class bup implements dsi<buj> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f25144a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<zzbar> f25145b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<cpo> f25146c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<Executor> f25147d;
    private final dsv<bai> e;
    private final dsv<bif> f;
    private final dsv<hn> g;

    public bup(dsv<Context> dsvVar, dsv<zzbar> dsvVar2, dsv<cpo> dsvVar3, dsv<Executor> dsvVar4, dsv<bai> dsvVar5, dsv<bif> dsvVar6, dsv<hn> dsvVar7) {
        this.f25144a = dsvVar;
        this.f25145b = dsvVar2;
        this.f25146c = dsvVar3;
        this.f25147d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
        this.g = dsvVar7;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new buj(this.f25144a.a(), this.f25145b.a(), this.f25146c.a(), this.f25147d.a(), this.e.a(), this.f.a(), this.g.a());
    }
}
