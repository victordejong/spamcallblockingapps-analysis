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

    /* renamed from: a */
    private final cja f40628a;

    /* renamed from: b */
    private dsv<Integer> f40629b;

    /* renamed from: c */
    private dsv<chp> f40630c;

    /* renamed from: d */
    private dsv<String> f40631d;

    /* renamed from: e */
    private dsv<cia> f40632e;

    /* renamed from: f */
    private dsv<cie> f40633f;

    /* renamed from: g */
    private dsv<cik> f40634g;

    /* renamed from: h */
    private dsv<cip> f40635h;

    /* renamed from: i */
    private dsv<ciz> f40636i;

    /* renamed from: j */
    private dsv<cjj> f40637j;

    /* renamed from: k */
    private dsv<String> f40638k;

    /* renamed from: l */
    private dsv<bkt> f40639l;

    /* renamed from: m */
    private dsv<bkt> f40640m;

    /* renamed from: n */
    private dsv<bkt> f40641n;

    /* renamed from: o */
    private dsv<bkt> f40642o;

    /* renamed from: p */
    private dsv<Map<ctj, bkt>> f40643p;

    /* renamed from: q */
    private dsv<Set<ayi<cto>>> f40644q;

    /* renamed from: r */
    private dsv<Set<ayi<cto>>> f40645r;

    /* renamed from: s */
    private dsv f40646s;

    /* renamed from: t */
    private dsv<cti> f40647t;

    /* renamed from: u */
    private final /* synthetic */ ago f40648u;

    /* JADX INFO: Access modifiers changed from: private */
    public agu(ago agoVar, cja cjaVar) {
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
        this.f40648u = agoVar;
        this.f40628a = cjaVar;
        this.f40629b = new cjc(cjaVar);
        aisVar = air.f42190a;
        dsvVar = agoVar.f40226f;
        dsvVar2 = agoVar.f40232l;
        cshVar = csk.f46484a;
        this.f40630c = new chq(aisVar, dsvVar, dsvVar2, cshVar, this.f40629b);
        this.f40631d = new cjd(cjaVar);
        agfVar = age.f40177a;
        dsvVar3 = agoVar.f40226f;
        dsv<String> dsvVar12 = this.f40631d;
        cshVar2 = csk.f46484a;
        this.f40632e = new cic(agfVar, dsvVar3, dsvVar12, cshVar2);
        aisVar2 = air.f42190a;
        dsv<Integer> dsvVar13 = this.f40629b;
        dsvVar4 = agoVar.f40226f;
        dsvVar5 = agoVar.f40197Q;
        dsvVar6 = agoVar.f40232l;
        cshVar3 = csk.f46484a;
        this.f40633f = new cii(aisVar2, dsvVar13, dsvVar4, dsvVar5, dsvVar6, cshVar3);
        aimVar = ail.f42187a;
        cshVar4 = csk.f46484a;
        dsvVar7 = agoVar.f40226f;
        this.f40634g = new cim(aimVar, cshVar4, dsvVar7);
        aioVar = ain.f42188a;
        cshVar5 = csk.f46484a;
        this.f40635h = new cir(aioVar, cshVar5, this.f40631d);
        aiqVar = aip.f42189a;
        dsvVar8 = agoVar.f40232l;
        dsvVar9 = agoVar.f40226f;
        this.f40636i = new cjb(aiqVar, dsvVar8, dsvVar9);
        cshVar6 = csk.f46484a;
        this.f40637j = new cjl(cshVar6);
        this.f40638k = new cje(cjaVar);
        bkiVar = bkl.f44140a;
        this.f40639l = dsj.m15774a(bkiVar);
        bkgVar = bkj.f44139a;
        this.f40640m = dsj.m15774a(bkgVar);
        bkkVar = bkn.f44141a;
        this.f40641n = dsj.m15774a(bkkVar);
        bkmVar = bkp.f44146a;
        this.f40642o = dsj.m15774a(bkmVar);
        this.f40643p = ((dsm) ((dsm) ((dsm) ((dsm) dsk.m15772a(4).mo15768a(ctj.GMS_SIGNALS, this.f40639l)).mo15768a(ctj.BUILD_URL, this.f40640m)).mo15768a(ctj.HTTP, this.f40641n)).mo15768a(ctj.PRE_PROCESS, this.f40642o)).m15769a();
        dsv<String> dsvVar14 = this.f40638k;
        dsvVar10 = agoVar.f40226f;
        cshVar7 = csk.f46484a;
        this.f40644q = dsj.m15774a(new bko(dsvVar14, dsvVar10, cshVar7, this.f40643p));
        dsr m15761a = dsr.m15763a(0, 1).m15759b(this.f40644q).m15761a();
        this.f40645r = m15761a;
        this.f40646s = ctq.m17233a(m15761a);
        cshVar8 = csk.f46484a;
        dsvVar11 = agoVar.f40232l;
        this.f40647t = dsj.m15774a(ctr.m17232a(cshVar8, dsvVar11, this.f40646s));
    }

    /* renamed from: d */
    private final cit m18684d() {
        return new cit((C12169ad) dso.m15764b(new C12169ad()), csh.m17270b(), (List) dso.m15764b(this.f40628a.f45893a.zzdvy));
    }

    /* renamed from: e */
    private final chv m18683e() {
        return new chv(ais.m18651b(), csh.m17270b(), (String) dso.m15764b(this.f40628a.f45893a.zzdys.getString("ms")), this.f40628a.f45893a.zzdvo, this.f40628a.f45894b);
    }

    @Override // com.google.android.gms.internal.ads.cht
    /* renamed from: a */
    public final cha<JSONObject> mo17454a() {
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
        dbs m17270b = csh.m17270b();
        cip cipVar = new cip(aio.m18655b(), csh.m17270b(), cjd.m17451a(this.f40628a));
        dsvVar = this.f40648u.f40232l;
        chb chbVar = (chb) dso.m15764b(new cfp(cipVar, 0L, (ScheduledExecutorService) dsvVar.mo14005a()));
        C12872rc m18653b = aiq.m18653b();
        dsvVar2 = this.f40648u.f40232l;
        afpVar = this.f40648u.f40207a;
        ciz cizVar = new ciz(m18653b, (ScheduledExecutorService) dsvVar2.mo14005a(), afs.m18765a(afpVar));
        dsvVar3 = this.f40648u.f40232l;
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) dsvVar3.mo14005a();
        AbstractC12172af<Long> abstractC12172af = C12187aq.f42778ci;
        AbstractC13059xz m18651b = ais.m18651b();
        afpVar2 = this.f40648u.f40207a;
        Context m18765a = afs.m18765a(afpVar2);
        dsvVar4 = this.f40648u.f40232l;
        chp chpVar = new chp(m18651b, m18765a, (ScheduledExecutorService) dsvVar4.mo14005a(), csh.m17270b(), this.f40628a.f45894b);
        dsvVar5 = this.f40648u.f40232l;
        cjj cjjVar = new cjj(csh.m17270b());
        dsvVar6 = this.f40648u.f40232l;
        afpVar3 = this.f40648u.f40207a;
        cia ciaVar = new cia(null, afs.m18765a(afpVar3), cjd.m17451a(this.f40628a), csh.m17270b());
        eha m18657b = aim.m18657b();
        dbs m17270b2 = csh.m17270b();
        afpVar4 = this.f40648u.f40207a;
        AbstractC13059xz m18651b2 = ais.m18651b();
        int i = this.f40628a.f45894b;
        afpVar5 = this.f40648u.f40207a;
        Context m18765a2 = afs.m18765a(afpVar5);
        dsvVar7 = this.f40648u.f40197Q;
        dsvVar8 = this.f40648u.f40232l;
        dsvVar9 = this.f40648u.f40221an;
        return chf.m17459a(m17270b, czc.m17024a(chbVar, (chb) dso.m15764b(new cfp(cizVar, ((Long) ekb.m14831e().m18571a(abstractC12172af)).longValue(), scheduledExecutorService)), (chb) dso.m15764b(new cfp(chpVar, 0L, (ScheduledExecutorService) dsvVar5.mo14005a())), (chb) dso.m15764b(new cfp(cjjVar, 0L, (ScheduledExecutorService) dsvVar6.mo14005a())), (chb) dso.m15764b(cjg.f45902a), ciaVar, new cik(m18657b, m17270b2, afs.m18765a(afpVar4)), m18684d(), m18683e(), new cie(m18651b2, i, m18765a2, (C13064yd) dsvVar7.mo14005a(), (ScheduledExecutorService) dsvVar8.mo14005a(), csh.m17270b()), (chb) dsvVar9.mo14005a()));
    }

    @Override // com.google.android.gms.internal.ads.cht
    /* renamed from: b */
    public final cha<JSONObject> mo17453b() {
        dsv dsvVar;
        dsv dsvVar2;
        aio.m18655b();
        dsvVar = this.f40648u.f40221an;
        Object mo14005a = dsvVar.mo14005a();
        chv m18683e = m18683e();
        cit m18684d = m18684d();
        dsb m15773b = dsj.m15773b(this.f40630c);
        dsb m15773b2 = dsj.m15773b(this.f40632e);
        dsb m15773b3 = dsj.m15773b(this.f40633f);
        dsb m15773b4 = dsj.m15773b(this.f40634g);
        dsj.m15773b(this.f40635h);
        dsb m15773b5 = dsj.m15773b(this.f40636i);
        dsb m15773b6 = dsj.m15773b(this.f40637j);
        dbs m17270b = csh.m17270b();
        dsvVar2 = this.f40648u.f40232l;
        dsvVar2.mo14005a();
        cil cilVar = (cil) mo14005a;
        HashSet hashSet = new HashSet();
        hashSet.add(cilVar);
        hashSet.add(m18683e);
        hashSet.add(m18684d);
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42839dq)).booleanValue()) {
            hashSet.add((chb) m15773b.mo14005a());
        }
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42840dr)).booleanValue()) {
            hashSet.add((chb) m15773b2.mo14005a());
        }
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42841ds)).booleanValue()) {
            hashSet.add((chb) m15773b3.mo14005a());
        }
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42842dt)).booleanValue()) {
            hashSet.add((chb) m15773b4.mo14005a());
        }
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42844dv)).booleanValue()) {
            hashSet.add((chb) m15773b5.mo14005a());
        }
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42845dw)).booleanValue()) {
            hashSet.add((chb) m15773b6.mo14005a());
        }
        return (cha) dso.m15764b(new cha(m17270b, hashSet));
    }

    @Override // com.google.android.gms.internal.ads.cht
    /* renamed from: c */
    public final cti mo17452c() {
        return this.f40647t.mo14005a();
    }
}
