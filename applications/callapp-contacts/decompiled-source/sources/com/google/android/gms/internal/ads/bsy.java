package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bsy.class */
public final class bsy implements dsi<bsr> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<alf> f25037a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f25038b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f25039c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<bif> f25040d;
    private final dsv<cpo> e;
    private final dsv<zzbar> f;
    private final dsv<hn> g;

    public bsy(dsv<alf> dsvVar, dsv<Context> dsvVar2, dsv<Executor> dsvVar3, dsv<bif> dsvVar4, dsv<cpo> dsvVar5, dsv<zzbar> dsvVar6, dsv<hn> dsvVar7) {
        this.f25037a = dsvVar;
        this.f25038b = dsvVar2;
        this.f25039c = dsvVar3;
        this.f25040d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
        this.g = dsvVar7;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bsr(this.f25037a.a(), this.f25038b.a(), this.f25039c.a(), this.f25040d.a(), this.e.a(), this.f.a(), this.g.a());
    }
}
