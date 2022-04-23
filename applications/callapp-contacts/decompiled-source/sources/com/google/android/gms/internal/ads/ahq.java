package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahq.class */
final class ahq implements con {

    /* renamed from: a  reason: collision with root package name */
    private dsv<Context> f23361a;

    /* renamed from: b  reason: collision with root package name */
    private dsv<cmh<bhx, bhu>> f23362b;

    /* renamed from: c  reason: collision with root package name */
    private dsv<cnc> f23363c;

    /* renamed from: d  reason: collision with root package name */
    private dsv<cpj> f23364d;
    private dsv<coa> e;
    private dsv<cop> f;
    private dsv<String> g;
    private dsv<coj> h;
    private final /* synthetic */ ago i;

    private ahq(ago agoVar, Context context, String str) {
        dsv dsvVar;
        dsv dsvVar2;
        dsv dsvVar3;
        cpm cpmVar;
        dsv dsvVar4;
        dsv dsvVar5;
        cpp cppVar;
        this.i = agoVar;
        dsi a2 = dsl.a(context);
        this.f23361a = a2;
        dsvVar = agoVar.aj;
        dsvVar2 = agoVar.ak;
        this.f23362b = new cmq(a2, dsvVar, dsvVar2);
        dsvVar3 = agoVar.aj;
        this.f23363c = dsj.a(cny.a(dsvVar3));
        cpmVar = cpl.f26223a;
        this.f23364d = dsj.a(cpmVar);
        dsv<Context> dsvVar6 = this.f23361a;
        dsvVar4 = agoVar.n;
        dsvVar5 = agoVar.G;
        dsv<cmh<bhx, bhu>> dsvVar7 = this.f23362b;
        dsv<cnc> dsvVar8 = this.f23363c;
        cppVar = cpr.f26232a;
        dsv<coa> a3 = dsj.a(new cok(dsvVar6, dsvVar4, dsvVar5, dsvVar7, dsvVar8, cppVar, this.f23364d));
        this.e = a3;
        this.f = dsj.a(new cou(a3, this.f23363c, this.f23364d));
        dsi b2 = dsl.b(str);
        this.g = b2;
        this.h = dsj.a(new coo(b2, this.e, this.f23361a, this.f23363c, this.f23364d));
    }

    @Override // com.google.android.gms.internal.ads.con
    public final cop a() {
        return this.f.a();
    }

    @Override // com.google.android.gms.internal.ads.con
    public final coj b() {
        return this.h.a();
    }
}
