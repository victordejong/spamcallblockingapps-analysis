package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahg.class */
final class ahg implements anc {

    /* renamed from: a */
    private final anb f41462a;

    /* renamed from: b */
    private dsv<cpk> f41463b;

    /* renamed from: c */
    private dsv<cov> f41464c;

    /* renamed from: d */
    private dsv<Set<ayi<asg>>> f41465d;

    /* renamed from: e */
    private dsv<asj> f41466e;

    /* renamed from: f */
    private dsv<Set<ayi<atb>>> f41467f;

    /* renamed from: g */
    private dsv<ata> f41468g;

    /* renamed from: h */
    private dsv<String> f41469h;

    /* renamed from: i */
    private dsv<arf> f41470i;

    /* renamed from: j */
    private dsv<aue> f41471j;

    /* renamed from: k */
    private dsv<ans> f41472k;

    /* renamed from: l */
    private dsv<AbstractC12558fn> f41473l;

    /* renamed from: m */
    private dsv<Runnable> f41474m;

    /* renamed from: n */
    private dsv<amx> f41475n;

    /* renamed from: o */
    private final /* synthetic */ ahe f41476o;

    /* JADX INFO: Access modifiers changed from: private */
    public ahg(ahe aheVar, aof aofVar, anb anbVar) {
        avl avlVar;
        dsv dsvVar;
        this.f41476o = aheVar;
        this.f41462a = anbVar;
        this.f41463b = aoj.m18514a(aofVar);
        this.f41464c = aoi.m18516a(aofVar);
        dsr m15761a = dsr.m15763a(0, 2).m15759b(aheVar.f41444m).m15759b(aheVar.f41445n).m15761a();
        this.f41465d = m15761a;
        this.f41466e = dsj.m15774a(asm.m18429a(m15761a));
        dsr m15761a2 = dsr.m15763a(4, 3).m15760a(aheVar.f41278B).m15760a(aheVar.f41279C).m15760a(aheVar.f41280D).m15759b(aheVar.f41288L).m15759b(aheVar.f41289M).m15759b(aheVar.f41290N).m15760a(aheVar.f41281E).m15761a();
        this.f41467f = m15761a2;
        this.f41468g = dsj.m15774a(atc.m18421a(m15761a2));
        aoh m18518a = aoh.m18518a(aofVar);
        this.f41469h = m18518a;
        this.f41470i = ari.m18440a(this.f41464c, m18518a, aheVar.f41440i);
        avlVar = avo.f43217a;
        this.f41471j = dsj.m15774a(avlVar);
        this.f41472k = apn.m18486a(this.f41463b, this.f41464c, this.f41466e, this.f41468g, aheVar.f41291O, this.f41470i, this.f41471j);
        this.f41473l = new and(anbVar);
        ane aneVar = new ane(anbVar);
        this.f41474m = aneVar;
        dsv<ans> dsvVar2 = this.f41472k;
        dsv<AbstractC12558fn> dsvVar3 = this.f41473l;
        dsvVar = aheVar.f41296T.f40234n;
        this.f41475n = dsj.m15774a(new anf(dsvVar2, dsvVar3, aneVar, dsvVar));
    }

    @Override // com.google.android.gms.internal.ads.anc
    /* renamed from: a */
    public final alq mo18539a() {
        return (alq) dso.m15764b(this.f41475n.mo14005a());
    }
}
