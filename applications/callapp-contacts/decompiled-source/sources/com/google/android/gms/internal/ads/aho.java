package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aho.class */
final class aho implements cmz {

    /* renamed from: a  reason: collision with root package name */
    private dsv<Context> f23353a;

    /* renamed from: b  reason: collision with root package name */
    private dsv<zzvt> f23354b;

    /* renamed from: c  reason: collision with root package name */
    private dsv<String> f23355c;

    /* renamed from: d  reason: collision with root package name */
    private dsv<bza> f23356d;
    private dsv<cnc> e;
    private dsv<cmr> f;
    private dsv<caa> g;
    private final /* synthetic */ ago h;

    private aho(ago agoVar, Context context, String str, zzvt zzvtVar) {
        dsv dsvVar;
        dsv dsvVar2;
        dsv dsvVar3;
        dsv dsvVar4;
        cpp cppVar;
        this.h = agoVar;
        this.f23353a = dsl.a(context);
        this.f23354b = dsl.a(zzvtVar);
        this.f23355c = dsl.a(str);
        dsvVar = agoVar.m;
        this.f23356d = dsj.a(bzu.a(dsvVar));
        dsvVar2 = agoVar.aj;
        this.e = dsj.a(cny.a(dsvVar2));
        dsv<Context> dsvVar5 = this.f23353a;
        dsvVar3 = agoVar.n;
        dsvVar4 = agoVar.G;
        dsv<bza> dsvVar6 = this.f23356d;
        dsv<cnc> dsvVar7 = this.e;
        cppVar = cpr.f26232a;
        dsv<cmr> a2 = dsj.a(new cnb(dsvVar5, dsvVar3, dsvVar4, dsvVar6, dsvVar7, cppVar));
        this.f = a2;
        this.g = dsj.a(new cac(this.f23353a, this.f23354b, this.f23355c, a2, this.f23356d, this.e));
    }

    @Override // com.google.android.gms.internal.ads.cmz
    public final caa a() {
        return this.g.a();
    }
}
