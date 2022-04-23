package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajm.class */
public final class ajm implements dsi<ajk> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f23428a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23429b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<ScheduledExecutorService> f23430c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<cpk> f23431d;
    private final dsv<cov> e;
    private final dsv<cuq> f;
    private final dsv<cpu> g;
    private final dsv<View> h;
    private final dsv<die> i;
    private final dsv<bw> j;
    private final dsv<bx> k;

    private ajm(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<ScheduledExecutorService> dsvVar3, dsv<cpk> dsvVar4, dsv<cov> dsvVar5, dsv<cuq> dsvVar6, dsv<cpu> dsvVar7, dsv<View> dsvVar8, dsv<die> dsvVar9, dsv<bw> dsvVar10, dsv<bx> dsvVar11) {
        this.f23428a = dsvVar;
        this.f23429b = dsvVar2;
        this.f23430c = dsvVar3;
        this.f23431d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
        this.g = dsvVar7;
        this.h = dsvVar8;
        this.i = dsvVar9;
        this.j = dsvVar10;
        this.k = dsvVar11;
    }

    public static ajm a(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<ScheduledExecutorService> dsvVar3, dsv<cpk> dsvVar4, dsv<cov> dsvVar5, dsv<cuq> dsvVar6, dsv<cpu> dsvVar7, dsv<View> dsvVar8, dsv<die> dsvVar9, dsv<bw> dsvVar10, dsv<bx> dsvVar11) {
        return new ajm(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5, dsvVar6, dsvVar7, dsvVar8, dsvVar9, dsvVar10, dsvVar11);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new ajk(this.f23428a.a(), this.f23429b.a(), this.f23430c.a(), this.f23431d.a(), this.e.a(), this.f.a(), this.g.a(), this.h.a(), this.i.a(), this.j.a(), this.k.a());
    }
}
