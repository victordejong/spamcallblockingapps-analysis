package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahg.class */
final class ahg implements anc {

    /* renamed from: a  reason: collision with root package name */
    private final anb f23322a;

    /* renamed from: b  reason: collision with root package name */
    private dsv<cpk> f23323b;

    /* renamed from: c  reason: collision with root package name */
    private dsv<cov> f23324c;

    /* renamed from: d  reason: collision with root package name */
    private dsv<Set<ayi<asg>>> f23325d;
    private dsv<asj> e;
    private dsv<Set<ayi<atb>>> f;
    private dsv<ata> g;
    private dsv<String> h;
    private dsv<arf> i;
    private dsv<aue> j;
    private dsv<ans> k;
    private dsv<fn> l;
    private dsv<Runnable> m;
    private dsv<amx> n;
    private final /* synthetic */ ahe o;

    private ahg(ahe aheVar, aof aofVar, anb anbVar) {
        avl avlVar;
        dsv dsvVar;
        this.o = aheVar;
        this.f23322a = anbVar;
        this.f23323b = aoj.a(aofVar);
        this.f23324c = aoi.a(aofVar);
        dsr a2 = dsr.a(0, 2).b(aheVar.m).b(aheVar.n).a();
        this.f23325d = a2;
        this.e = dsj.a(asm.a(a2));
        dsr a3 = dsr.a(4, 3).a(aheVar.B).a(aheVar.C).a(aheVar.D).b(aheVar.L).b(aheVar.M).b(aheVar.N).a(aheVar.E).a();
        this.f = a3;
        this.g = dsj.a(atc.a(a3));
        aoh a4 = aoh.a(aofVar);
        this.h = a4;
        this.i = ari.a(this.f23324c, a4, aheVar.i);
        avlVar = avo.f23928a;
        this.j = dsj.a(avlVar);
        this.k = apn.a(this.f23323b, this.f23324c, this.e, this.g, aheVar.O, this.i, this.j);
        this.l = new and(anbVar);
        ane aneVar = new ane(anbVar);
        this.m = aneVar;
        dsv<ans> dsvVar2 = this.k;
        dsv<fn> dsvVar3 = this.l;
        dsvVar = aheVar.T.n;
        this.n = dsj.a(new anf(dsvVar2, dsvVar3, aneVar, dsvVar));
    }

    @Override // com.google.android.gms.internal.ads.anc
    public final alq a() {
        return (alq) dso.b(this.n.a());
    }
}
