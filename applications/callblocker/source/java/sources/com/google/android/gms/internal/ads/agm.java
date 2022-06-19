package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agm.class */
final class agm extends cba {

    /* renamed from: a */
    private final cck f8522a;

    /* renamed from: b */
    private dig<cav> f8523b;

    /* renamed from: c */
    private dig<String> f8524c;

    /* renamed from: d */
    private dig<cbg> f8525d;

    /* renamed from: e */
    private dig<Integer> f8526e;

    /* renamed from: f */
    private dig<cbk> f8527f;

    /* renamed from: g */
    private dig<cbq> f8528g;

    /* renamed from: h */
    private dig<cbv> f8529h;

    /* renamed from: i */
    private dig<Boolean> f8530i;

    /* renamed from: j */
    private dig<ApplicationInfo> f8531j;

    /* renamed from: k */
    private dig<ccf> f8532k;

    /* renamed from: l */
    private dig<ccj> f8533l;

    /* renamed from: m */
    private dig<ccx> f8534m;

    /* renamed from: n */
    private dig<String> f8535n;

    /* renamed from: o */
    private dig<bgu> f8536o;

    /* renamed from: p */
    private dig<bgu> f8537p;

    /* renamed from: q */
    private dig<bgu> f8538q;

    /* renamed from: r */
    private dig<bgu> f8539r;

    /* renamed from: s */
    private dig<Map<ckw, bgu>> f8540s;

    /* renamed from: t */
    private dig<Set<auq<clg>>> f8541t;

    /* renamed from: u */
    private dig<Set<auq<clg>>> f8542u;

    /* renamed from: v */
    private dig f8543v;

    /* renamed from: w */
    private dig<ckz> f8544w;

    /* renamed from: x */
    private final /* synthetic */ agf f8545x;

    /* JADX INFO: Access modifiers changed from: private */
    public agm(agf agfVar, cck cckVar) {
        aib aibVar;
        dig digVar;
        dig digVar2;
        afx afxVar;
        dig digVar3;
        aib aibVar2;
        dig digVar4;
        dig digVar5;
        dig digVar6;
        ahv ahvVar;
        dig digVar7;
        ahx ahxVar;
        dig digVar8;
        dig digVar9;
        ahz ahzVar;
        dig digVar10;
        dig digVar11;
        dig digVar12;
        dig digVar13;
        this.f8545x = agfVar;
        this.f8522a = cckVar;
        aibVar = aie.f9724a;
        digVar = this.f8545x.f8161j;
        digVar2 = this.f8545x.f8156e;
        this.f8523b = new caw(aibVar, digVar, digVar2, cjx.m11178b());
        this.f8524c = new ccn(cckVar);
        afxVar = afw.f8117a;
        digVar3 = this.f8545x.f8161j;
        this.f8525d = new cbi(afxVar, digVar3, this.f8524c, cjx.m11178b());
        this.f8526e = new cco(cckVar);
        aibVar2 = aie.f9724a;
        dig<Integer> digVar14 = this.f8526e;
        digVar4 = this.f8545x.f8161j;
        digVar5 = this.f8545x.f8128D;
        digVar6 = this.f8545x.f8156e;
        this.f8527f = new cbo(aibVar2, digVar14, digVar4, digVar5, digVar6, cjx.m11178b());
        ahvVar = ahy.f9719a;
        cjx m11178b = cjx.m11178b();
        digVar7 = this.f8545x.f8161j;
        this.f8528g = new cbs(ahvVar, m11178b, digVar7);
        ahxVar = aia.f9721a;
        this.f8529h = new cbx(ahxVar, cjx.m11178b(), this.f8524c);
        this.f8530i = new ccp(cckVar);
        this.f8531j = new ccm(cckVar);
        digVar8 = this.f8545x.f8130F;
        digVar9 = this.f8545x.f8156e;
        this.f8532k = new cch(digVar8, digVar9, this.f8530i, this.f8531j);
        ahzVar = aic.f9722a;
        digVar10 = this.f8545x.f8156e;
        digVar11 = this.f8545x.f8161j;
        this.f8533l = new ccl(ahzVar, digVar10, digVar11);
        this.f8534m = new cda(cjx.m11178b());
        this.f8535n = new ccr(cckVar);
        this.f8536o = dhu.m9447a(bgj.m11970b());
        this.f8537p = dhu.m9447a(bgg.m11972b());
        this.f8538q = dhu.m9447a(bgl.m11968b());
        this.f8539r = dhu.m9447a(bgn.m11966b());
        this.f8540s = ((dhx) ((dhx) ((dhx) ((dhx) dhv.m9445a(4).mo9441a(ckw.GMS_SIGNALS, this.f8536o)).mo9441a(ckw.BUILD_URL, this.f8537p)).mo9441a(ckw.HTTP, this.f8538q)).mo9441a(ckw.PRE_PROCESS, this.f8539r)).m9442a();
        dig<String> digVar15 = this.f8535n;
        digVar12 = this.f8545x.f8161j;
        this.f8541t = dhu.m9447a(new bgp(digVar15, digVar12, cjx.m11178b(), this.f8540s));
        this.f8542u = dic.m9437a(0, 1).m9433b(this.f8541t).m9435a();
        this.f8543v = cli.m11104a(this.f8542u);
        cjx m11178b2 = cjx.m11178b();
        digVar13 = this.f8545x.f8156e;
        this.f8544w = dhu.m9447a(cle.m11118a(m11178b2, digVar13, this.f8543v));
    }

    /* renamed from: d */
    private final cca m13289d() {
        return new cca((ecr) dhz.m9438a(new ecr(), "Cannot return null from a non-@Nullable @Provides method"), cjx.m11177c(), (List) dhz.m9438a(this.f8522a.m11488e(), "Cannot return null from a non-@Nullable @Provides method"));
    }

    /* renamed from: e */
    private final cbc m13288e() {
        return new cbc(aib.m13101b(), cjx.m11177c(), (String) dhz.m9438a(this.f8522a.m11491b(), "Cannot return null from a non-@Nullable @Provides method"), this.f8522a.m11490c());
    }

    @Override // com.google.android.gms.internal.ads.cba
    /* renamed from: a */
    public final cag<JSONObject> mo11500a() {
        dig digVar;
        ahf ahfVar;
        dig digVar2;
        dig digVar3;
        dig digVar4;
        afk afkVar;
        dig digVar5;
        afk afkVar2;
        dig digVar6;
        dig digVar7;
        dig digVar8;
        afk afkVar3;
        afk afkVar4;
        afk afkVar5;
        dig digVar9;
        dig digVar10;
        dig digVar11;
        crs m11177c = cjx.m11177c();
        cbv cbvVar = new cbv(ahx.m13105b(), cjx.m11177c(), ccn.m11483a(this.f8522a));
        digVar = this.f8545x.f8156e;
        cah cahVar = (cah) dhz.m9438a(new byp(cbvVar, 0L, (ScheduledExecutorService) digVar.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
        ahfVar = this.f8545x.f8151a;
        AbstractC3267kb m13109a = ahj.m13109a(ahfVar);
        digVar2 = this.f8545x.f8156e;
        ccf ccfVar = new ccf(m13109a, (ScheduledExecutorService) digVar2.mo9430a(), this.f8522a.m11489d(), ccm.m11484a(this.f8522a));
        digVar3 = this.f8545x.f8156e;
        cah cahVar2 = (cah) dhz.m9438a(new byp(ccfVar, ((Long) dyx.m8158e().m7876a(edi.f16398bD)).longValue(), (ScheduledExecutorService) digVar3.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
        C3375ob m13103b = ahz.m13103b();
        digVar4 = this.f8545x.f8156e;
        afkVar = this.f8545x.f8153b;
        ccj ccjVar = new ccj(m13103b, (ScheduledExecutorService) digVar4.mo9430a(), afn.m13396a(afkVar));
        digVar5 = this.f8545x.f8156e;
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) digVar5.mo9430a();
        ect<Long> ectVar = edi.f16403bI;
        AbstractC3537ub m13101b = aib.m13101b();
        afkVar2 = this.f8545x.f8153b;
        Context m13396a = afn.m13396a(afkVar2);
        digVar6 = this.f8545x.f8156e;
        cav cavVar = new cav(m13101b, m13396a, (ScheduledExecutorService) digVar6.mo9430a(), cjx.m11177c());
        digVar7 = this.f8545x.f8156e;
        ccx ccxVar = new ccx(cjx.m11177c());
        digVar8 = this.f8545x.f8156e;
        afkVar3 = this.f8545x.f8153b;
        dwb m13107b = ahv.m13107b();
        crs m11177c2 = cjx.m11177c();
        afkVar4 = this.f8545x.f8153b;
        AbstractC3537ub m13101b2 = aib.m13101b();
        int m11485h = this.f8522a.m11485h();
        afkVar5 = this.f8545x.f8153b;
        Context m13396a2 = afn.m13396a(afkVar5);
        digVar9 = this.f8545x.f8128D;
        digVar10 = this.f8545x.f8156e;
        digVar11 = this.f8545x.f8129E;
        return cal.m11509a(m11177c, cpk.m10881a(cahVar, cahVar2, (cah) dhz.m9438a(new byp(ccjVar, ((Long) dyx.m8158e().m7876a(ectVar)).longValue(), scheduledExecutorService), "Cannot return null from a non-@Nullable @Provides method"), (cah) dhz.m9438a(new byp(cavVar, 0L, (ScheduledExecutorService) digVar7.mo9430a()), "Cannot return null from a non-@Nullable @Provides method"), (cah) dhz.m9438a(new byp(ccxVar, 0L, (ScheduledExecutorService) digVar8.mo9430a()), "Cannot return null from a non-@Nullable @Provides method"), (cah) dhz.m9438a(ccq.m11482a(), "Cannot return null from a non-@Nullable @Provides method"), new cbg(null, afn.m13396a(afkVar3), ccn.m11483a(this.f8522a), cjx.m11177c()), new cbq(m13107b, m11177c2, afn.m13396a(afkVar4)), m13289d(), m13288e(), new cbk(m13101b2, m11485h, m13396a2, (C3542ug) digVar9.mo9430a(), (ScheduledExecutorService) digVar10.mo9430a(), cjx.m11177c()), (cah) digVar11.mo9430a()));
    }

    @Override // com.google.android.gms.internal.ads.cba
    /* renamed from: b */
    public final cag<JSONObject> mo11499b() {
        dig digVar;
        dig digVar2;
        C3536ua m13105b = ahx.m13105b();
        digVar = this.f8545x.f8129E;
        Object mo9430a = digVar.mo9430a();
        cbc m13288e = m13288e();
        cca m13289d = m13289d();
        dhn m9446b = dhu.m9446b(this.f8523b);
        dhn m9446b2 = dhu.m9446b(this.f8525d);
        dhn m9446b3 = dhu.m9446b(this.f8527f);
        dhn m9446b4 = dhu.m9446b(this.f8528g);
        dhn m9446b5 = dhu.m9446b(this.f8529h);
        dhn m9446b6 = dhu.m9446b(this.f8532k);
        dhn m9446b7 = dhu.m9446b(this.f8533l);
        dhn m9446b8 = dhu.m9446b(this.f8534m);
        crs m11177c = cjx.m11177c();
        digVar2 = this.f8545x.f8156e;
        return ccv.m11480a(m13105b, mo9430a, m13288e, m13289d, m9446b, m9446b2, m9446b3, m9446b4, m9446b5, m9446b6, m9446b7, m9446b8, m11177c, (ScheduledExecutorService) digVar2.mo9430a());
    }

    @Override // com.google.android.gms.internal.ads.cba
    /* renamed from: c */
    public final ckz mo11498c() {
        return this.f8544w.mo9430a();
    }
}
