package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cok.class */
public final class cok implements dsi<coa> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f26158a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f26159b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<afq> f26160c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<cmh<bhx, bhu>> f26161d;
    private final dsv<cnc> e;
    private final dsv<cpq> f;
    private final dsv<cpj> g;

    public cok(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<afq> dsvVar3, dsv<cmh<bhx, bhu>> dsvVar4, dsv<cnc> dsvVar5, dsv<cpq> dsvVar6, dsv<cpj> dsvVar7) {
        this.f26158a = dsvVar;
        this.f26159b = dsvVar2;
        this.f26160c = dsvVar3;
        this.f26161d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
        this.g = dsvVar7;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new coa(this.f26158a.a(), this.f26159b.a(), this.f26160c.a(), this.f26161d.a(), this.e.a(), this.f.a(), this.g.a());
    }
}
