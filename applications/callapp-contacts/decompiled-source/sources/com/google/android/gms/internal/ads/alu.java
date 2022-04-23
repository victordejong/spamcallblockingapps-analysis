package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/alu.class */
public final class alu implements dsi<als> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<ans> f23543a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f23544b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<coy> f23545c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<View> f23546d;
    private final dsv<adt> e;
    private final dsv<anq> f;
    private final dsv<bcy> g;
    private final dsv<aym> h;
    private final dsv<byu> i;
    private final dsv<Executor> j;

    public alu(dsv<ans> dsvVar, dsv<Context> dsvVar2, dsv<coy> dsvVar3, dsv<View> dsvVar4, dsv<adt> dsvVar5, dsv<anq> dsvVar6, dsv<bcy> dsvVar7, dsv<aym> dsvVar8, dsv<byu> dsvVar9, dsv<Executor> dsvVar10) {
        this.f23543a = dsvVar;
        this.f23544b = dsvVar2;
        this.f23545c = dsvVar3;
        this.f23546d = dsvVar4;
        this.e = dsvVar5;
        this.f = dsvVar6;
        this.g = dsvVar7;
        this.h = dsvVar8;
        this.i = dsvVar9;
        this.j = dsvVar10;
    }

    public static als a(ans ansVar, Context context, coy coyVar, View view, adt adtVar, anq anqVar, bcy bcyVar, aym aymVar, dsb<byu> dsbVar, Executor executor) {
        return new als(ansVar, context, coyVar, view, adtVar, anqVar, bcyVar, aymVar, dsbVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f23543a.a(), this.f23544b.a(), this.f23545c.a(), this.f23546d.a(), this.e.a(), this.f.a(), this.g.a(), this.h.a(), dsj.b(this.i), this.j.a());
    }
}
