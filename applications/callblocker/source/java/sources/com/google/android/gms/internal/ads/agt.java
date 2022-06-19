package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agt.class */
final class agt implements alt {

    /* renamed from: a */
    private final alw f8962a;

    /* renamed from: b */
    private dig<chd> f8963b;

    /* renamed from: c */
    private dig<cgr> f8964c;

    /* renamed from: d */
    private dig<Set<auq<aql>>> f8965d;

    /* renamed from: e */
    private dig<aqk> f8966e;

    /* renamed from: f */
    private dig<Set<auq<arg>>> f8967f;

    /* renamed from: g */
    private dig<arb> f8968g;

    /* renamed from: h */
    private dig<String> f8969h;

    /* renamed from: i */
    private dig<apk> f8970i;

    /* renamed from: j */
    private dig<amk> f8971j;

    /* renamed from: k */
    private dig<AbstractC3008dp> f8972k;

    /* renamed from: l */
    private dig<Runnable> f8973l;

    /* renamed from: m */
    private dig<als> f8974m;

    /* renamed from: n */
    private final /* synthetic */ agr f8975n;

    /* JADX INFO: Access modifiers changed from: private */
    public agt(agr agrVar, amy amyVar, alw alwVar) {
        dig digVar;
        dig digVar2;
        dig digVar3;
        dig digVar4;
        dig digVar5;
        dig digVar6;
        dig digVar7;
        dig digVar8;
        dig digVar9;
        dig digVar10;
        dig digVar11;
        this.f8975n = agrVar;
        this.f8962a = alwVar;
        this.f8963b = and.m12901a(amyVar);
        this.f8964c = anb.m12904a(amyVar);
        die m9437a = dic.m9437a(0, 2);
        digVar = this.f8975n.f8864bG;
        die m9433b = m9437a.m9433b(digVar);
        digVar2 = this.f8975n.f8865bH;
        this.f8965d = m9433b.m9433b(digVar2).m9435a();
        this.f8966e = dhu.m9447a(aqr.m12799a(this.f8965d));
        die m9437a2 = dic.m9437a(4, 3);
        digVar3 = this.f8975n.f8879bV;
        die m9434a = m9437a2.m9434a(digVar3);
        digVar4 = this.f8975n.f8880bW;
        die m9434a2 = m9434a.m9434a(digVar4);
        digVar5 = this.f8975n.f8881bX;
        die m9434a3 = m9434a2.m9434a(digVar5);
        digVar6 = this.f8975n.f8919ci;
        die m9433b2 = m9434a3.m9433b(digVar6);
        digVar7 = this.f8975n.f8920cj;
        die m9433b3 = m9433b2.m9433b(digVar7);
        digVar8 = this.f8975n.f8921ck;
        die m9433b4 = m9433b3.m9433b(digVar8);
        digVar9 = this.f8975n.f8882bY;
        this.f8967f = m9433b4.m9434a(digVar9).m9435a();
        this.f8968g = dhu.m9447a(ard.m12797a(this.f8967f));
        this.f8969h = ana.m12906a(amyVar);
        this.f8970i = apj.m12819a(this.f8964c, this.f8969h);
        dig<chd> digVar12 = this.f8963b;
        dig<cgr> digVar13 = this.f8964c;
        dig<aqk> digVar14 = this.f8966e;
        dig<arb> digVar15 = this.f8968g;
        digVar10 = this.f8975n.f8922cl;
        this.f8971j = aoc.m12869a(digVar12, digVar13, digVar14, digVar15, digVar10, this.f8970i);
        this.f8972k = new aly(alwVar);
        this.f8973l = new alv(alwVar);
        dig<amk> digVar16 = this.f8971j;
        dig<AbstractC3008dp> digVar17 = this.f8972k;
        dig<Runnable> digVar18 = this.f8973l;
        digVar11 = this.f8975n.f8804a.f8154c;
        this.f8974m = dhu.m9447a(new alx(digVar16, digVar17, digVar18, digVar11));
    }

    @Override // com.google.android.gms.internal.ads.alt
    /* renamed from: a */
    public final akk mo12954a() {
        return (akk) dhz.m9438a(this.f8974m.mo9430a(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
