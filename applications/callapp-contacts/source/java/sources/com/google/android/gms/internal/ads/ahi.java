package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahi.class */
final class ahi implements clh {

    /* renamed from: a */
    private final Context f41482a;

    /* renamed from: b */
    private final zzvt f41483b;

    /* renamed from: c */
    private final String f41484c;

    /* renamed from: d */
    private dsv<Context> f41485d;

    /* renamed from: e */
    private dsv<zzvt> f41486e;

    /* renamed from: f */
    private dsv<bza> f41487f;

    /* renamed from: g */
    private dsv<bzz> f41488g;

    /* renamed from: h */
    private dsv<clb> f41489h;

    /* renamed from: i */
    private final /* synthetic */ ago f41490i;

    /* JADX INFO: Access modifiers changed from: private */
    public ahi(ago agoVar, Context context, String str, zzvt zzvtVar) {
        dsv dsvVar;
        bzy bzyVar;
        dsv dsvVar2;
        dsv dsvVar3;
        cpp cppVar;
        this.f41490i = agoVar;
        this.f41482a = context;
        this.f41483b = zzvtVar;
        this.f41484c = str;
        this.f41485d = dsl.m15771a(context);
        this.f41486e = dsl.m15771a(zzvtVar);
        dsvVar = agoVar.f40233m;
        this.f41487f = dsj.m15774a(bzu.m17536a(dsvVar));
        bzyVar = cab.f45186a;
        this.f41488g = dsj.m15774a(bzyVar);
        dsv<Context> dsvVar4 = this.f41485d;
        dsvVar2 = agoVar.f40234n;
        dsv<zzvt> dsvVar5 = this.f41486e;
        dsvVar3 = agoVar.f40187G;
        dsv<bza> dsvVar6 = this.f41487f;
        dsv<bzz> dsvVar7 = this.f41488g;
        cppVar = cpr.f46354a;
        this.f41489h = dsj.m15774a(new cle(dsvVar4, dsvVar2, dsvVar5, dsvVar3, dsvVar6, dsvVar7, cppVar));
    }

    @Override // com.google.android.gms.internal.ads.clh
    /* renamed from: a */
    public final byy mo17419a() {
        return new byy(this.f41482a, this.f41483b, this.f41484c, this.f41489h.mo14005a(), this.f41487f.mo14005a());
    }
}
