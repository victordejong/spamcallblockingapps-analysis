package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajm.class */
public final class ajm implements dsi<ajk> {

    /* renamed from: a */
    private final dsv<Context> f42223a;

    /* renamed from: b */
    private final dsv<Executor> f42224b;

    /* renamed from: c */
    private final dsv<ScheduledExecutorService> f42225c;

    /* renamed from: d */
    private final dsv<cpk> f42226d;

    /* renamed from: e */
    private final dsv<cov> f42227e;

    /* renamed from: f */
    private final dsv<cuq> f42228f;

    /* renamed from: g */
    private final dsv<cpu> f42229g;

    /* renamed from: h */
    private final dsv<View> f42230h;

    /* renamed from: i */
    private final dsv<die> f42231i;

    /* renamed from: j */
    private final dsv<C12256bw> f42232j;

    /* renamed from: k */
    private final dsv<AbstractC12257bx> f42233k;

    private ajm(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<ScheduledExecutorService> dsvVar3, dsv<cpk> dsvVar4, dsv<cov> dsvVar5, dsv<cuq> dsvVar6, dsv<cpu> dsvVar7, dsv<View> dsvVar8, dsv<die> dsvVar9, dsv<C12256bw> dsvVar10, dsv<AbstractC12257bx> dsvVar11) {
        this.f42223a = dsvVar;
        this.f42224b = dsvVar2;
        this.f42225c = dsvVar3;
        this.f42226d = dsvVar4;
        this.f42227e = dsvVar5;
        this.f42228f = dsvVar6;
        this.f42229g = dsvVar7;
        this.f42230h = dsvVar8;
        this.f42231i = dsvVar9;
        this.f42232j = dsvVar10;
        this.f42233k = dsvVar11;
    }

    /* renamed from: a */
    public static ajm m18634a(dsv<Context> dsvVar, dsv<Executor> dsvVar2, dsv<ScheduledExecutorService> dsvVar3, dsv<cpk> dsvVar4, dsv<cov> dsvVar5, dsv<cuq> dsvVar6, dsv<cpu> dsvVar7, dsv<View> dsvVar8, dsv<die> dsvVar9, dsv<C12256bw> dsvVar10, dsv<AbstractC12257bx> dsvVar11) {
        return new ajm(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5, dsvVar6, dsvVar7, dsvVar8, dsvVar9, dsvVar10, dsvVar11);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new ajk(this.f42223a.mo14005a(), this.f42224b.mo14005a(), this.f42225c.mo14005a(), this.f42226d.mo14005a(), this.f42227e.mo14005a(), this.f42228f.mo14005a(), this.f42229g.mo14005a(), this.f42230h.mo14005a(), this.f42231i.mo14005a(), this.f42232j.mo14005a(), this.f42233k.mo14005a());
    }
}
