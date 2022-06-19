package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahq.class */
final class ahq implements con {

    /* renamed from: a */
    private dsv<Context> f41790a;

    /* renamed from: b */
    private dsv<cmh<bhx, bhu>> f41791b;

    /* renamed from: c */
    private dsv<cnc> f41792c;

    /* renamed from: d */
    private dsv<cpj> f41793d;

    /* renamed from: e */
    private dsv<coa> f41794e;

    /* renamed from: f */
    private dsv<cop> f41795f;

    /* renamed from: g */
    private dsv<String> f41796g;

    /* renamed from: h */
    private dsv<coj> f41797h;

    /* renamed from: i */
    private final /* synthetic */ ago f41798i;

    /* JADX INFO: Access modifiers changed from: private */
    public ahq(ago agoVar, Context context, String str) {
        dsv dsvVar;
        dsv dsvVar2;
        dsv dsvVar3;
        cpm cpmVar;
        dsv dsvVar4;
        dsv dsvVar5;
        cpp cppVar;
        this.f41798i = agoVar;
        dsi m15771a = dsl.m15771a(context);
        this.f41790a = m15771a;
        dsvVar = agoVar.f40217aj;
        dsvVar2 = agoVar.f40218ak;
        this.f41791b = new cmq(m15771a, dsvVar, dsvVar2);
        dsvVar3 = agoVar.f40217aj;
        this.f41792c = dsj.m15774a(cny.m17392a(dsvVar3));
        cpmVar = cpl.f46320a;
        this.f41793d = dsj.m15774a(cpmVar);
        dsv<Context> dsvVar6 = this.f41790a;
        dsvVar4 = agoVar.f40234n;
        dsvVar5 = agoVar.f40187G;
        dsv<cmh<bhx, bhu>> dsvVar7 = this.f41791b;
        dsv<cnc> dsvVar8 = this.f41792c;
        cppVar = cpr.f46354a;
        dsv<coa> m15774a = dsj.m15774a(new cok(dsvVar6, dsvVar4, dsvVar5, dsvVar7, dsvVar8, cppVar, this.f41793d));
        this.f41794e = m15774a;
        this.f41795f = dsj.m15774a(new cou(m15774a, this.f41792c, this.f41793d));
        dsi m15770b = dsl.m15770b(str);
        this.f41796g = m15770b;
        this.f41797h = dsj.m15774a(new coo(m15770b, this.f41794e, this.f41790a, this.f41792c, this.f41793d));
    }

    @Override // com.google.android.gms.internal.ads.con
    /* renamed from: a */
    public final cop mo17381a() {
        return this.f41795f.mo14005a();
    }

    @Override // com.google.android.gms.internal.ads.con
    /* renamed from: b */
    public final coj mo17380b() {
        return this.f41797h.mo14005a();
    }
}
