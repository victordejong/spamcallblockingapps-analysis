package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxa.class */
public final class bxa implements dsi<bwp> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f25311a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<zzbar> f25312b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<cpo> f25313c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<Executor> f25314d;
    private final dsv<bhx> e;
    private final dsv<bif> f;
    private final dsv<hn> g;

    public bxa(dsv<Context> dsvVar, dsv<zzbar> dsvVar2, dsv<cpo> dsvVar3, dsv<Executor> dsvVar4, dsv<bhx> dsvVar5, dsv<bif> dsvVar6, dsv<hn> dsvVar7) {
        this.f25311a = dsvVar;
        this.f25312b = dsvVar2;
        this.f25313c = dsvVar3;
        this.f25314d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
        this.g = dsvVar7;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bwp(this.f25311a.a(), this.f25312b.a(), this.f25313c.a(), this.f25314d.a(), this.e.a(), this.f.a(), this.g.a());
    }
}
