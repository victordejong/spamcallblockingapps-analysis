package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahc.class */
final class ahc implements cjs {

    /* renamed from: a  reason: collision with root package name */
    private dsv<Context> f23306a;

    /* renamed from: b  reason: collision with root package name */
    private dsv<String> f23307b;

    /* renamed from: c  reason: collision with root package name */
    private dsv<cmh<akt, alb>> f23308c;

    /* renamed from: d  reason: collision with root package name */
    private dsv<ckb> f23309d;
    private dsv<cjk> e;
    private dsv<cjm> f;
    private dsv<cmh<alf, all>> g;
    private dsv<ckp> h;
    private dsv<ckr> i;
    private final /* synthetic */ ago j;

    private ahc(ago agoVar, Context context, String str) {
        dsv dsvVar;
        dsv dsvVar2;
        dsv dsvVar3;
        dsv dsvVar4;
        dsv dsvVar5;
        cpp cppVar;
        dsv dsvVar6;
        dsv dsvVar7;
        dsv dsvVar8;
        dsv dsvVar9;
        dsv dsvVar10;
        dsv dsvVar11;
        cpp cppVar2;
        dsv dsvVar12;
        this.j = agoVar;
        this.f23306a = dsl.a(context);
        this.f23307b = dsl.a(str);
        dsv<Context> dsvVar13 = this.f23306a;
        dsvVar = agoVar.aj;
        dsvVar2 = agoVar.ak;
        this.f23308c = new cmn(dsvVar13, dsvVar, dsvVar2);
        dsvVar3 = agoVar.aj;
        this.f23309d = dsj.a(new ckq(dsvVar3));
        dsv<Context> dsvVar14 = this.f23306a;
        dsvVar4 = agoVar.n;
        dsvVar5 = agoVar.G;
        dsv<cmh<akt, alb>> dsvVar15 = this.f23308c;
        dsv<ckb> dsvVar16 = this.f23309d;
        cppVar = cpr.f26232a;
        this.e = dsj.a(new cjn(dsvVar14, dsvVar4, dsvVar5, dsvVar15, dsvVar16, cppVar));
        dsvVar6 = agoVar.G;
        dsv<Context> dsvVar17 = this.f23306a;
        dsv<String> dsvVar18 = this.f23307b;
        dsv<cjk> dsvVar19 = this.e;
        dsv<ckb> dsvVar20 = this.f23309d;
        dsvVar7 = agoVar.g;
        this.f = dsj.a(new cjt(dsvVar6, dsvVar17, dsvVar18, dsvVar19, dsvVar20, dsvVar7));
        dsv<Context> dsvVar21 = this.f23306a;
        dsvVar8 = agoVar.aj;
        dsvVar9 = agoVar.ak;
        this.g = new cmo(dsvVar21, dsvVar8, dsvVar9);
        dsv<Context> dsvVar22 = this.f23306a;
        dsvVar10 = agoVar.n;
        dsvVar11 = agoVar.G;
        dsv<cmh<alf, all>> dsvVar23 = this.g;
        dsv<ckb> dsvVar24 = this.f23309d;
        cppVar2 = cpr.f26232a;
        this.h = dsj.a(new cks(dsvVar22, dsvVar10, dsvVar11, dsvVar23, dsvVar24, cppVar2));
        dsvVar12 = agoVar.G;
        this.i = dsj.a(new ckx(dsvVar12, this.f23306a, this.f23307b, this.h, this.f23309d));
    }

    @Override // com.google.android.gms.internal.ads.cjs
    public final cjm a() {
        return this.f.a();
    }

    @Override // com.google.android.gms.internal.ads.cjs
    public final ckr b() {
        return this.i.a();
    }
}
