package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahc.class */
final class ahc implements cjs {

    /* renamed from: a */
    private dsv<Context> f41162a;

    /* renamed from: b */
    private dsv<String> f41163b;

    /* renamed from: c */
    private dsv<cmh<akt, alb>> f41164c;

    /* renamed from: d */
    private dsv<ckb> f41165d;

    /* renamed from: e */
    private dsv<cjk> f41166e;

    /* renamed from: f */
    private dsv<cjm> f41167f;

    /* renamed from: g */
    private dsv<cmh<alf, all>> f41168g;

    /* renamed from: h */
    private dsv<ckp> f41169h;

    /* renamed from: i */
    private dsv<ckr> f41170i;

    /* renamed from: j */
    private final /* synthetic */ ago f41171j;

    /* JADX INFO: Access modifiers changed from: private */
    public ahc(ago agoVar, Context context, String str) {
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
        this.f41171j = agoVar;
        this.f41162a = dsl.m15771a(context);
        this.f41163b = dsl.m15771a(str);
        dsv<Context> dsvVar13 = this.f41162a;
        dsvVar = agoVar.f40217aj;
        dsvVar2 = agoVar.f40218ak;
        this.f41164c = new cmn(dsvVar13, dsvVar, dsvVar2);
        dsvVar3 = agoVar.f40217aj;
        this.f41165d = dsj.m15774a(new ckq(dsvVar3));
        dsv<Context> dsvVar14 = this.f41162a;
        dsvVar4 = agoVar.f40234n;
        dsvVar5 = agoVar.f40187G;
        dsv<cmh<akt, alb>> dsvVar15 = this.f41164c;
        dsv<ckb> dsvVar16 = this.f41165d;
        cppVar = cpr.f46354a;
        this.f41166e = dsj.m15774a(new cjn(dsvVar14, dsvVar4, dsvVar5, dsvVar15, dsvVar16, cppVar));
        dsvVar6 = agoVar.f40187G;
        dsv<Context> dsvVar17 = this.f41162a;
        dsv<String> dsvVar18 = this.f41163b;
        dsv<cjk> dsvVar19 = this.f41166e;
        dsv<ckb> dsvVar20 = this.f41165d;
        dsvVar7 = agoVar.f40227g;
        this.f41167f = dsj.m15774a(new cjt(dsvVar6, dsvVar17, dsvVar18, dsvVar19, dsvVar20, dsvVar7));
        dsv<Context> dsvVar21 = this.f41162a;
        dsvVar8 = agoVar.f40217aj;
        dsvVar9 = agoVar.f40218ak;
        this.f41168g = new cmo(dsvVar21, dsvVar8, dsvVar9);
        dsv<Context> dsvVar22 = this.f41162a;
        dsvVar10 = agoVar.f40234n;
        dsvVar11 = agoVar.f40187G;
        dsv<cmh<alf, all>> dsvVar23 = this.f41168g;
        dsv<ckb> dsvVar24 = this.f41165d;
        cppVar2 = cpr.f46354a;
        this.f41169h = dsj.m15774a(new cks(dsvVar22, dsvVar10, dsvVar11, dsvVar23, dsvVar24, cppVar2));
        dsvVar12 = agoVar.f40187G;
        this.f41170i = dsj.m15774a(new ckx(dsvVar12, this.f41162a, this.f41163b, this.f41169h, this.f41165d));
    }

    @Override // com.google.android.gms.internal.ads.cjs
    /* renamed from: a */
    public final cjm mo17440a() {
        return this.f41167f.mo14005a();
    }

    @Override // com.google.android.gms.internal.ads.cjs
    /* renamed from: b */
    public final ckr mo17439b() {
        return this.f41170i.mo14005a();
    }
}
