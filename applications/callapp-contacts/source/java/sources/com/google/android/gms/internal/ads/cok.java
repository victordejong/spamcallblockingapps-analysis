package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cok.class */
public final class cok implements dsi<coa> {

    /* renamed from: a */
    private final dsv<Context> f46191a;

    /* renamed from: b */
    private final dsv<Executor> f46192b;

    /* renamed from: c */
    private final dsv<afq> f46193c;

    /* renamed from: d */
    private final dsv<cmh<bhx, bhu>> f46194d;

    /* renamed from: e */
    private final dsv<cnc> f46195e;

    /* renamed from: f */
    private final dsv<cpq> f46196f;

    /* renamed from: g */
    private final dsv<cpj> f46197g;

    public cok(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<afq> dsvVar3, dsv<cmh<bhx, bhu>> dsvVar4, dsv<cnc> dsvVar5, dsv<cpq> dsvVar6, dsv<cpj> dsvVar7) {
        this.f46191a = dsvVar;
        this.f46192b = dsvVar2;
        this.f46193c = dsvVar3;
        this.f46194d = dsvVar4;
        this.f46195e = dsvVar5;
        this.f46196f = dsvVar6;
        this.f46197g = dsvVar7;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new coa(this.f46191a.mo14005a(), this.f46192b.mo14005a(), this.f46193c.mo14005a(), this.f46194d.mo14005a(), this.f46195e.mo14005a(), this.f46196f.mo14005a(), this.f46197g.mo14005a());
    }
}
