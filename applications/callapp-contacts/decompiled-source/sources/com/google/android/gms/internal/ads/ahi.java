package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahi.class */
final class ahi implements clh {

    /* renamed from: a  reason: collision with root package name */
    private final Context f23330a;

    /* renamed from: b  reason: collision with root package name */
    private final zzvt f23331b;

    /* renamed from: c  reason: collision with root package name */
    private final String f23332c;

    /* renamed from: d  reason: collision with root package name */
    private dsv<Context> f23333d;
    private dsv<zzvt> e;
    private dsv<bza> f;
    private dsv<bzz> g;
    private dsv<clb> h;
    private final /* synthetic */ ago i;

    private ahi(ago agoVar, Context context, String str, zzvt zzvtVar) {
        dsv dsvVar;
        bzy bzyVar;
        dsv dsvVar2;
        dsv dsvVar3;
        cpp cppVar;
        this.i = agoVar;
        this.f23330a = context;
        this.f23331b = zzvtVar;
        this.f23332c = str;
        this.f23333d = dsl.a(context);
        this.e = dsl.a(zzvtVar);
        dsvVar = agoVar.m;
        this.f = dsj.a(bzu.a(dsvVar));
        bzyVar = cab.f25473a;
        this.g = dsj.a(bzyVar);
        dsv<Context> dsvVar4 = this.f23333d;
        dsvVar2 = agoVar.n;
        dsv<zzvt> dsvVar5 = this.e;
        dsvVar3 = agoVar.G;
        dsv<bza> dsvVar6 = this.f;
        dsv<bzz> dsvVar7 = this.g;
        cppVar = cpr.f26232a;
        this.h = dsj.a(new cle(dsvVar4, dsvVar2, dsvVar5, dsvVar3, dsvVar6, dsvVar7, cppVar));
    }

    @Override // com.google.android.gms.internal.ads.clh
    public final byy a() {
        return new byy(this.f23330a, this.f23331b, this.f23332c, this.h.a(), this.f.a());
    }
}
