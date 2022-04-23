package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/agu.class */
final class agu extends cht {

    /* renamed from: a  reason: collision with root package name */
    private final cja f23275a;

    /* renamed from: b  reason: collision with root package name */
    private dsv<Integer> f23276b;

    /* renamed from: c  reason: collision with root package name */
    private dsv<chp> f23277c;

    /* renamed from: d  reason: collision with root package name */
    private dsv<String> f23278d;
    private dsv<cia> e;
    private dsv<cie> f;
    private dsv<cik> g;
    private dsv<cip> h;
    private dsv<ciz> i;
    private dsv<cjj> j;
    private dsv<String> k;
    private dsv<bkt> l;
    private dsv<bkt> m;
    private dsv<bkt> n;
    private dsv<bkt> o;
    private dsv<Map<ctj, bkt>> p;
    private dsv<Set<ayi<cto>>> q;
    private dsv<Set<ayi<cto>>> r;
    private dsv s;
    private dsv<cti> t;
    private final /* synthetic */ ago u;

    private agu(ago agoVar, cja cjaVar) {
        ais aisVar;
        dsv dsvVar;
        dsv dsvVar2;
        csh cshVar;
        agf agfVar;
        dsv dsvVar3;
        csh cshVar2;
        ais aisVar2;
        dsv dsvVar4;
        dsv dsvVar5;
        dsv dsvVar6;
        csh cshVar3;
        aim aimVar;
        csh cshVar4;
        dsv dsvVar7;
        aio aioVar;
        csh cshVar5;
        aiq aiqVar;
        dsv dsvVar8;
        dsv dsvVar9;
        csh cshVar6;
        bki bkiVar;
        bkg bkgVar;
        bkk bkkVar;
        bkm bkmVar;
        dsv dsvVar10;
        csh cshVar7;
        csh cshVar8;
        dsv dsvVar11;
        this.u = agoVar;
        this.f23275a = cjaVar;
        this.f23276b = new cjc(cjaVar);
        aisVar = air.f23404a;
        dsvVar = agoVar.f;
        dsvVar2 = agoVar.l;
        cshVar = csk.f26340a;
        this.f23277c = new chq(aisVar, dsvVar, dsvVar2, cshVar, this.f23276b);
        this.f23278d = new cjd(cjaVar);
        agfVar = age.f23247a;
        dsvVar3 = agoVar.f;
        dsv<String> dsvVar12 = this.f23278d;
        cshVar2 = csk.f26340a;
        this.e = new cic(agfVar, dsvVar3, dsvVar12, cshVar2);
        aisVar2 = air.f23404a;
        dsv<Integer> dsvVar13 = this.f23276b;
        dsvVar4 = agoVar.f;
        dsvVar5 = agoVar.Q;
        dsvVar6 = agoVar.l;
        cshVar3 = csk.f26340a;
        this.f = new cii(aisVar2, dsvVar13, dsvVar4, dsvVar5, dsvVar6, cshVar3);
        aimVar = ail.f23401a;
        cshVar4 = csk.f26340a;
        dsvVar7 = agoVar.f;
        this.g = new cim(aimVar, cshVar4, dsvVar7);
        aioVar = ain.f23402a;
        cshVar5 = csk.f26340a;
        this.h = new cir(aioVar, cshVar5, this.f23278d);
        aiqVar = aip.f23403a;
        dsvVar8 = agoVar.l;
        dsvVar9 = agoVar.f;
        this.i = new cjb(aiqVar, dsvVar8, dsvVar9);
        cshVar6 = csk.f26340a;
        this.j = new cjl(cshVar6);
        this.k = new cje(cjaVar);
        bkiVar = bkl.f24588a;
        this.l = dsj.a(bkiVar);
        bkgVar = bkj.f24587a;
        this.m = dsj.a(bkgVar);
        bkkVar = bkn.f24589a;
        this.n = dsj.a(bkkVar);
        bkmVar = bkp.f24594a;
        this.o = dsj.a(bkmVar);
        this.p = ((dsm) ((dsm) ((dsm) ((dsm) dsk.a(4).a(ctj.GMS_SIGNALS, this.l)).a(ctj.BUILD_URL, this.m)).a(ctj.HTTP, this.n)).a(ctj.PRE_PROCESS, this.o)).a();
        dsv<String> dsvVar14 = this.k;
        dsvVar10 = agoVar.f;
        cshVar7 = csk.f26340a;
        this.q = dsj.a(new bko(dsvVar14, dsvVar10, cshVar7, this.p));
        dsr a2 = dsr.a(0, 1).b(this.q).a();
        this.r = a2;
        this.s = ctq.a(a2);
        cshVar8 = csk.f26340a;
        dsvVar11 = agoVar.l;
        this.t = dsj.a(ctr.a(cshVar8, dsvVar11, this.s));
    }

    private final cit d() {
        return new cit((ad) dso.b(new ad()), csh.b(), (List) dso.b(this.f23275a.f25926a.zzdvy));
    }

    private final chv e() {
        return new chv(ais.b(), csh.b(), (String) dso.b(this.f23275a.f25926a.zzdys.getString("ms")), this.f23275a.f25926a.zzdvo, this.f23275a.f25927b);
    }

    @Override // com.google.android.gms.internal.ads.cht
    public final cha<JSONObject> a() {
        dsv dsvVar;
        dsv dsvVar2;
        afp afpVar;
        dsv dsvVar3;
        afp afpVar2;
        dsv dsvVar4;
        dsv dsvVar5;
        dsv dsvVar6;
        afp afpVar3;
        afp afpVar4;
        afp afpVar5;
        dsv dsvVar7;
        dsv dsvVar8;
        dsv dsvVar9;
        dbs b2 = csh.b();
        cip cipVar = new cip(aio.b(), csh.b(), cjd.a(this.f23275a));
        dsvVar = this.u.l;
        chb chbVar = (chb) dso.b(new cfp(cipVar, 0L, (ScheduledExecutorService) dsvVar.a()));
        rc b3 = aiq.b();
        dsvVar2 = this.u.l;
        afpVar = this.u.f23251a;
        ciz cizVar = new ciz(b3, (ScheduledExecutorService) dsvVar2.a(), afs.a(afpVar));
        dsvVar3 = this.u.l;
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) dsvVar3.a();
        af<Long> afVar = aq.ci;
        xz b4 = ais.b();
        afpVar2 = this.u.f23251a;
        Context a2 = afs.a(afpVar2);
        dsvVar4 = this.u.l;
        chp chpVar = new chp(b4, a2, (ScheduledExecutorService) dsvVar4.a(), csh.b(), this.f23275a.f25927b);
        dsvVar5 = this.u.l;
        cjj cjjVar = new cjj(csh.b());
        dsvVar6 = this.u.l;
        afpVar3 = this.u.f23251a;
        cia ciaVar = new cia(null, afs.a(afpVar3), cjd.a(this.f23275a), csh.b());
        eha b5 = aim.b();
        dbs b6 = csh.b();
        afpVar4 = this.u.f23251a;
        xz b7 = ais.b();
        int i = this.f23275a.f25927b;
        afpVar5 = this.u.f23251a;
        Context a3 = afs.a(afpVar5);
        dsvVar7 = this.u.Q;
        dsvVar8 = this.u.l;
        dsvVar9 = this.u.an;
        return chf.a(b2, czc.a(chbVar, (chb) dso.b(new cfp(cizVar, ((Long) ekb.e().a(afVar)).longValue(), scheduledExecutorService)), (chb) dso.b(new cfp(chpVar, 0L, (ScheduledExecutorService) dsvVar5.a())), (chb) dso.b(new cfp(cjjVar, 0L, (ScheduledExecutorService) dsvVar6.a())), (chb) dso.b(cjg.f25935a), ciaVar, new cik(b5, b6, afs.a(afpVar4)), d(), e(), new cie(b7, i, a3, (yd) dsvVar7.a(), (ScheduledExecutorService) dsvVar8.a(), csh.b()), (chb) dsvVar9.a()));
    }

    @Override // com.google.android.gms.internal.ads.cht
    public final cha<JSONObject> b() {
        dsv dsvVar;
        dsv dsvVar2;
        aio.b();
        dsvVar = this.u.an;
        Object a2 = dsvVar.a();
        chv e = e();
        cit d2 = d();
        dsb b2 = dsj.b(this.f23277c);
        dsb b3 = dsj.b(this.e);
        dsb b4 = dsj.b(this.f);
        dsb b5 = dsj.b(this.g);
        dsj.b(this.h);
        dsb b6 = dsj.b(this.i);
        dsb b7 = dsj.b(this.j);
        dbs b8 = csh.b();
        dsvVar2 = this.u.l;
        dsvVar2.a();
        cil cilVar = (cil) a2;
        HashSet hashSet = new HashSet();
        hashSet.add(cilVar);
        hashSet.add(e);
        hashSet.add(d2);
        if (((Boolean) ekb.e().a(aq.dq)).booleanValue()) {
            hashSet.add((chb) b2.a());
        }
        if (((Boolean) ekb.e().a(aq.dr)).booleanValue()) {
            hashSet.add((chb) b3.a());
        }
        if (((Boolean) ekb.e().a(aq.ds)).booleanValue()) {
            hashSet.add((chb) b4.a());
        }
        if (((Boolean) ekb.e().a(aq.dt)).booleanValue()) {
            hashSet.add((chb) b5.a());
        }
        if (((Boolean) ekb.e().a(aq.dv)).booleanValue()) {
            hashSet.add((chb) b6.a());
        }
        if (((Boolean) ekb.e().a(aq.dw)).booleanValue()) {
            hashSet.add((chb) b7.a());
        }
        return (cha) dso.b(new cha(b8, hashSet));
    }

    @Override // com.google.android.gms.internal.ads.cht
    public final cti c() {
        return this.t.a();
    }
}
