package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/alu.class */
public final class alu implements dsi<als> {

    /* renamed from: a */
    private final dsv<ans> f42379a;

    /* renamed from: b */
    private final dsv<Context> f42380b;

    /* renamed from: c */
    private final dsv<coy> f42381c;

    /* renamed from: d */
    private final dsv<View> f42382d;

    /* renamed from: e */
    private final dsv<adt> f42383e;

    /* renamed from: f */
    private final dsv<anq> f42384f;

    /* renamed from: g */
    private final dsv<bcy> f42385g;

    /* renamed from: h */
    private final dsv<aym> f42386h;

    /* renamed from: i */
    private final dsv<byu> f42387i;

    /* renamed from: j */
    private final dsv<Executor> f42388j;

    public alu(dsv<ans> dsvVar, dsv<Context> dsvVar2, dsv<coy> dsvVar3, dsv<View> dsvVar4, dsv<adt> dsvVar5, dsv<anq> dsvVar6, dsv<bcy> dsvVar7, dsv<aym> dsvVar8, dsv<byu> dsvVar9, dsv<Executor> dsvVar10) {
        this.f42379a = dsvVar;
        this.f42380b = dsvVar2;
        this.f42381c = dsvVar3;
        this.f42382d = dsvVar4;
        this.f42383e = dsvVar5;
        this.f42384f = dsvVar6;
        this.f42385g = dsvVar7;
        this.f42386h = dsvVar8;
        this.f42387i = dsvVar9;
        this.f42388j = dsvVar10;
    }

    /* renamed from: a */
    public static als m18574a(ans ansVar, Context context, coy coyVar, View view, adt adtVar, anq anqVar, bcy bcyVar, aym aymVar, dsb<byu> dsbVar, Executor executor) {
        return new als(ansVar, context, coyVar, view, adtVar, anqVar, bcyVar, aymVar, dsbVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m18574a(this.f42379a.mo14005a(), this.f42380b.mo14005a(), this.f42381c.mo14005a(), this.f42382d.mo14005a(), this.f42383e.mo14005a(), this.f42384f.mo14005a(), this.f42385g.mo14005a(), this.f42386h.mo14005a(), dsj.m15773b(this.f42387i), this.f42388j.mo14005a());
    }
}
