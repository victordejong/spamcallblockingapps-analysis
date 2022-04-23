package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.zza;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aha.class */
final class aha extends akk {
    private dsv<asp> A;
    private dsv<bkv> B;
    private dsv<bqe> C;
    private dsv<ayi<eir>> D;
    private dsv<ayi<eir>> E;
    private dsv<ayi<eir>> F;
    private dsv<Set<ayi<eir>>> G;
    private dsv<arj> H;
    private dsv<ayi<ash>> I;
    private dsv<ayi<ash>> J;
    private dsv<ayi<atu>> K;
    private dsv<Set<ayi<atu>>> L;
    private dsv<att> M;
    private dsv<ayi<ash>> N;
    private dsv<ayi<ash>> O;
    private dsv<Set<ayi<ash>>> P;
    private dsv<Set<ayi<ash>>> Q;
    private dsv<asc> R;
    private dsv<ayq> S;
    private dsv<ayi<ayn>> T;
    private dsv<Set<ayi<ayn>>> U;
    private dsv<aym> V;
    private dsv<ayi<atk>> W;
    private dsv<ayi<atk>> X;
    private dsv<Set<ayi<atk>>> Y;
    private dsv<atf> Z;

    /* renamed from: a  reason: collision with root package name */
    private final app f23298a;
    private dsv<ayh> aA;
    private dsv<vy> aB;
    private dsv<zza> aC;
    private dsv<Set<ayi<avs>>> aD;
    private dsv<avn> aE;
    private dsv<bih> aF;
    private final /* synthetic */ agx aG;
    private dsv<anj> aa;
    private dsv<Set<ayi<atb>>> ab;
    private dsv<ayi<atb>> ac;
    private dsv<ayi<atb>> ad;
    private dsv<Set<ayi<atb>>> ae;
    private dsv<ata> af;
    private dsv<aom> ag;
    private dsv<ayi<zzp>> ah;
    private dsv<ayi<zzp>> ai;
    private dsv<Set<ayi<zzp>>> aj;
    private dsv<atj> ak;
    private dsv<Set<ayi<VideoController.VideoLifecycleCallbacks>>> al;
    private dsv<ayz> am;
    private dsv<ayi<avw>> an;
    private dsv<Set<ayi<avw>>> ao;
    private dsv<avr> ap;
    private dsv<ayi<asd>> aq;
    private dsv<ayi<asd>> ar;
    private dsv<Set<ayi<asd>>> as;
    private dsv<arw> at;
    private dsv<ayi<art>> au;
    private dsv<Set<ayi<art>>> av;
    private dsv<ars> aw;
    private dsv<Set<ayi<eeg>>> ax;
    private dsv<Set<ayi<eeg>>> ay;
    private dsv<Set<ayi<eeg>>> az;

    /* renamed from: b  reason: collision with root package name */
    private final aof f23299b;

    /* renamed from: c  reason: collision with root package name */
    private final ako f23300c;

    /* renamed from: d  reason: collision with root package name */
    private final apm f23301d;
    private final arh e;
    private dsv<cov> f;
    private dsv g;
    private dsv<ayi<asg>> h;
    private dsv<lw> i;
    private dsv<JSONObject> j;
    private dsv<eed> k;
    private dsv<ajs> l;
    private dsv<ajp> m;
    private dsv<aju> n;
    private dsv<Set<ayi<asg>>> o;
    private dsv<Set<ayi<asg>>> p;
    private dsv<asj> q;
    private dsv<aue> r;
    private dsv<ayi<aro>> s;
    private dsv<cpk> t;
    private dsv<coz> u;
    private dsv<cpu> v;
    private dsv<View> w;
    private dsv<ajk> x;
    private dsv<ayi<aro>> y;
    private dsv<Set<ayi<aro>>> z;

    private aha(agx agxVar, aof aofVar, ako akoVar) {
        dsv dsvVar;
        dsv dsvVar2;
        dsv dsvVar3;
        akx akxVar;
        csf csfVar;
        dsv dsvVar4;
        dsv dsvVar5;
        csh cshVar;
        avl avlVar;
        dsv dsvVar6;
        dsv dsvVar7;
        dsv dsvVar8;
        csh cshVar2;
        dsv dsvVar9;
        dsv dsvVar10;
        dsv dsvVar11;
        csh cshVar3;
        dsv dsvVar12;
        dsv dsvVar13;
        dsv dsvVar14;
        dsv dsvVar15;
        dsv dsvVar16;
        dsv dsvVar17;
        csh cshVar4;
        dsv dsvVar18;
        csh cshVar5;
        csh cshVar6;
        dsv dsvVar19;
        dsv dsvVar20;
        csh cshVar7;
        csh cshVar8;
        csh cshVar9;
        dsv dsvVar21;
        csh cshVar10;
        dsv dsvVar22;
        csh cshVar11;
        csh cshVar12;
        dsv dsvVar23;
        csh cshVar13;
        dsv dsvVar24;
        csh cshVar14;
        csh cshVar15;
        csh cshVar16;
        csh cshVar17;
        dsv dsvVar25;
        dsv dsvVar26;
        dsv dsvVar27;
        dsv dsvVar28;
        dsv dsvVar29;
        dsv dsvVar30;
        dsv dsvVar31;
        dsv dsvVar32;
        this.aG = agxVar;
        app appVar = new app();
        this.f23298a = appVar;
        this.f23299b = aofVar;
        this.f23300c = akoVar;
        apm apmVar = new apm();
        this.f23301d = apmVar;
        arh arhVar = new arh();
        this.e = arhVar;
        this.f = aoi.a(aofVar);
        dsv<Context> dsvVar33 = agxVar.f23290d;
        dsv<cov> dsvVar34 = this.f;
        dsvVar = agxVar.L.ae;
        dsv a2 = dsj.a(aqt.a(dsvVar33, dsvVar34, dsvVar));
        this.g = a2;
        this.h = dsj.a(aqe.a(appVar, a2));
        dsvVar2 = agxVar.L.af;
        this.i = dsj.a(akd.a(dsvVar2));
        this.j = dsj.a(aki.a(this.f));
        dsv<cov> dsvVar35 = this.f;
        dsvVar3 = agxVar.L.g;
        dsv<JSONObject> dsvVar36 = this.j;
        akxVar = ala.f23517a;
        this.k = dsj.a(aka.a(dsvVar35, dsvVar3, dsvVar36, akxVar));
        this.l = dsj.a(ajv.a(agxVar.f23288b, this.k));
        dsv<eed> dsvVar37 = this.k;
        dsv<lw> dsvVar38 = this.i;
        csfVar = csi.f26339a;
        this.m = dsj.a(ajy.a(dsvVar37, dsvVar38, csfVar));
        dsv<lw> dsvVar39 = this.i;
        dsv<ajs> dsvVar40 = this.l;
        dsvVar4 = agxVar.L.n;
        dsv<ajp> dsvVar41 = this.m;
        dsvVar5 = agxVar.L.p;
        dsv<aju> a3 = dsj.a(ajz.a(dsvVar39, dsvVar40, dsvVar4, dsvVar41, dsvVar5));
        this.n = a3;
        cshVar = csk.f26340a;
        this.o = dsj.a(akc.a(a3, cshVar, this.j));
        dsr a4 = dsr.a(1, 3).b(agxVar.h).b(agxVar.i).a(this.h).b(this.o).a();
        this.p = a4;
        this.q = dsj.a(asm.a(a4));
        avlVar = avo.f23928a;
        dsv<aue> a5 = dsj.a(avlVar);
        this.r = a5;
        dsvVar6 = agxVar.L.n;
        this.s = dsj.a(apr.a(a5, dsvVar6));
        this.t = aoj.a(aofVar);
        this.u = aok.a(aofVar);
        dsvVar7 = agxVar.L.J;
        dsvVar8 = agxVar.L.K;
        this.v = dsj.a(cpx.a(dsvVar7, dsvVar8, this.f, this.u));
        this.w = new akn(akoVar);
        dsv<Context> dsvVar42 = agxVar.f23288b;
        cshVar2 = csk.f26340a;
        dsvVar9 = agxVar.L.l;
        dsv<cpk> dsvVar43 = this.t;
        dsv<cov> dsvVar44 = this.f;
        dsv<cuq> dsvVar45 = agxVar.f;
        dsv<cpu> dsvVar46 = this.v;
        dsv<View> dsvVar47 = this.w;
        dsvVar10 = agxVar.L.H;
        dsv<bw> dsvVar48 = agxVar.g;
        dsvVar11 = agxVar.L.ag;
        dsv<ajk> a6 = dsj.a(ajm.a(dsvVar42, cshVar2, dsvVar9, dsvVar43, dsvVar44, dsvVar45, dsvVar46, dsvVar47, dsvVar10, dsvVar48, dsvVar11));
        this.x = a6;
        cshVar3 = csk.f26340a;
        this.y = apj.a(a6, cshVar3);
        dsr a7 = dsr.a(3, 2).a(agxVar.j).b(agxVar.k).b(agxVar.l).a(this.s).a(this.y).a();
        this.z = a7;
        this.A = dsj.a(asv.a(a7));
        dsv<Context> dsvVar49 = agxVar.f23288b;
        dsvVar12 = agxVar.L.Z;
        dsvVar13 = agxVar.L.L;
        dsv<cpk> dsvVar50 = this.t;
        dsv<cov> dsvVar51 = this.f;
        dsvVar14 = agxVar.L.J;
        this.B = dsj.a(bku.a(dsvVar49, dsvVar12, dsvVar13, dsvVar50, dsvVar51, dsvVar14));
        dsv<Context> dsvVar52 = agxVar.f23288b;
        dsvVar15 = agxVar.L.Z;
        dsv<cpk> dsvVar53 = this.t;
        dsv<cov> dsvVar54 = this.f;
        dsvVar16 = agxVar.L.J;
        dsvVar17 = agxVar.L.m;
        this.C = dsj.a(bqd.a(dsvVar52, dsvVar15, dsvVar53, dsvVar54, dsvVar16, dsvVar17, agxVar.f23289c));
        dsv<bkv> dsvVar55 = this.B;
        cshVar4 = csk.f26340a;
        this.D = dsj.a(aqc.a(dsvVar55, cshVar4, this.C));
        dsv<aue> dsvVar56 = this.r;
        dsvVar18 = agxVar.L.n;
        this.E = dsj.a(aps.a(dsvVar56, dsvVar18));
        dsv<ajk> dsvVar57 = this.x;
        cshVar5 = csk.f26340a;
        this.F = apg.a(dsvVar57, cshVar5);
        dsr a8 = dsr.a(5, 2).a(agxVar.m).a(agxVar.n).b(agxVar.o).b(agxVar.p).a(this.D).a(this.E).a(this.F).a();
        this.G = a8;
        this.H = dsj.a(arl.a(a8));
        dsv<bkv> dsvVar58 = this.B;
        cshVar6 = csk.f26340a;
        this.I = dsj.a(aqb.a(dsvVar58, cshVar6, this.C));
        dsv<aue> dsvVar59 = this.r;
        dsvVar19 = agxVar.L.n;
        this.J = dsj.a(apw.a(dsvVar59, dsvVar19));
        dsv<aue> dsvVar60 = this.r;
        dsvVar20 = agxVar.L.n;
        this.K = dsj.a(aqa.a(dsvVar60, dsvVar20));
        dsr a9 = dsr.a(1, 1).b(agxVar.u).a(this.K).a();
        this.L = a9;
        dsv<att> a10 = dsj.a(atv.a(a9, this.f));
        this.M = a10;
        cshVar7 = csk.f26340a;
        this.N = aop.a(a10, cshVar7);
        dsv<ajk> dsvVar61 = this.x;
        cshVar8 = csk.f26340a;
        this.O = apl.a(dsvVar61, cshVar8);
        dsv<aju> dsvVar62 = this.n;
        cshVar9 = csk.f26340a;
        this.P = dsj.a(akb.a(dsvVar62, cshVar9, this.j));
        dsr a11 = dsr.a(6, 3).a(agxVar.q).a(agxVar.r).b(agxVar.s).b(agxVar.t).a(this.I).a(this.J).a(this.N).a(this.O).b(this.P).a();
        this.Q = a11;
        this.R = dsj.a(ase.a(a11));
        dsv<cov> dsvVar63 = this.f;
        dsvVar21 = agxVar.L.K;
        dsv<ayq> a12 = dsj.a(ayp.a(dsvVar63, dsvVar21));
        this.S = a12;
        cshVar10 = csk.f26340a;
        this.T = aph.a(a12, cshVar10);
        dsr a13 = dsr.a(1, 1).b(agxVar.v).a(this.T).a();
        this.U = a13;
        this.V = dsj.a(ayo.a(a13));
        dsv<aue> dsvVar64 = this.r;
        dsvVar22 = agxVar.L.n;
        this.W = dsj.a(apv.a(dsvVar64, dsvVar22));
        dsv<att> dsvVar65 = this.M;
        cshVar11 = csk.f26340a;
        this.X = aoo.a(dsvVar65, cshVar11);
        dsr a14 = dsr.a(2, 1).b(agxVar.D).a(this.W).a(this.X).a();
        this.Y = a14;
        dsv<atf> a15 = dsj.a(ath.a(a14));
        this.Z = a15;
        dsv<anj> a16 = dsj.a(ani.a(this.f, this.R, a15));
        this.aa = a16;
        this.ab = new akq(akoVar, a16);
        this.ac = dsj.a(aqd.a(appVar, this.g));
        dsv<ajk> dsvVar66 = this.x;
        cshVar12 = csk.f26340a;
        this.ad = apk.a(dsvVar66, cshVar12);
        dsr a17 = dsr.a(6, 4).a(agxVar.w).a(agxVar.x).a(agxVar.y).b(agxVar.z).b(agxVar.A).b(agxVar.B).a(agxVar.C).b(this.ab).a(this.ac).a(this.ad).a();
        this.ae = a17;
        this.af = dsj.a(atc.a(a17));
        dsv<aom> a18 = dsj.a(aol.a(this.A));
        this.ag = a18;
        this.ah = apx.a(appVar, a18);
        dsv<aue> dsvVar67 = this.r;
        dsvVar23 = agxVar.L.n;
        this.ai = dsj.a(apy.a(dsvVar67, dsvVar23));
        dsr a19 = dsr.a(2, 1).b(agxVar.F).a(this.ah).a(this.ai).a();
        this.aj = a19;
        this.ak = dsj.a(atp.a(a19));
        dsr a20 = dsr.a(0, 1).b(agxVar.G).a();
        this.al = a20;
        this.am = dsj.a(azf.a(a20));
        dsv<bkv> dsvVar68 = this.B;
        cshVar13 = csk.f26340a;
        this.an = dsj.a(apz.a(dsvVar68, cshVar13, this.C));
        dsr a21 = dsr.a(1, 0).a(this.an).a();
        this.ao = a21;
        this.ap = dsj.a(avx.a(a21));
        dsv<aue> dsvVar69 = this.r;
        dsvVar24 = agxVar.L.n;
        this.aq = dsj.a(apt.a(dsvVar69, dsvVar24));
        dsv<ajk> dsvVar70 = this.x;
        cshVar14 = csk.f26340a;
        this.ar = api.a(dsvVar70, cshVar14);
        dsr a22 = dsr.a(2, 1).b(agxVar.H).a(this.aq).a(this.ar).a();
        this.as = a22;
        this.at = asb.a(a22);
        dsv<bkv> dsvVar71 = this.B;
        cshVar15 = csk.f26340a;
        this.au = dsj.a(apu.a(dsvVar71, cshVar15, this.C));
        dsr a23 = dsr.a(1, 0).a(this.au).a();
        this.av = a23;
        dsv<arw> dsvVar72 = this.at;
        cshVar16 = csk.f26340a;
        this.aw = dsj.a(asa.a(dsvVar72, a23, cshVar16));
        this.ax = new akp(akoVar, this.aa);
        dsv<aju> dsvVar73 = this.n;
        cshVar17 = csk.f26340a;
        this.ay = dsj.a(akf.a(dsvVar73, cshVar17, this.j));
        this.az = dsr.a(0, 3).b(agxVar.J).b(this.ax).b(this.ay).a();
        this.aA = dsj.a(ayj.a(agxVar.f23290d, this.az, this.f));
        dsv<Context> dsvVar74 = agxVar.f23290d;
        dsvVar25 = agxVar.L.g;
        dsv<cov> dsvVar75 = this.f;
        dsvVar26 = agxVar.L.ah;
        this.aB = dsj.a(ark.a(arhVar, dsvVar74, dsvVar25, dsvVar75, dsvVar26));
        this.aC = dsj.a(apq.a(apmVar, agxVar.f23290d, this.aB));
        dsr a24 = dsr.a(0, 1).b(agxVar.K).a();
        this.aD = a24;
        this.aE = dsj.a(avp.a(a24));
        dsv<arj> dsvVar76 = this.H;
        dsv<asp> dsvVar77 = this.A;
        dsv<ate> dsvVar78 = agxVar.I;
        dsv<atj> dsvVar79 = this.ak;
        dsv<avz> dsvVar80 = agxVar.E;
        dsvVar27 = agxVar.L.n;
        dsv<ayh> dsvVar81 = this.aA;
        dsv<aju> dsvVar82 = this.n;
        dsv<zza> dsvVar83 = this.aC;
        dsv<asj> dsvVar84 = this.q;
        dsv<vy> dsvVar85 = this.aB;
        dsvVar28 = agxVar.L.H;
        dsv<avn> dsvVar86 = this.aE;
        dsvVar29 = agxVar.L.J;
        dsvVar30 = agxVar.L.K;
        dsvVar31 = agxVar.L.L;
        dsvVar32 = agxVar.L.m;
        this.aF = dsj.a(biu.a(dsvVar76, dsvVar77, dsvVar78, dsvVar79, dsvVar80, dsvVar27, dsvVar81, dsvVar82, dsvVar83, dsvVar84, dsvVar85, dsvVar28, dsvVar86, dsvVar29, dsvVar30, dsvVar31, dsvVar32));
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final asj a() {
        return this.q.a();
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final asp b() {
        return this.A.a();
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final arj c() {
        return this.H.a();
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final asc d() {
        return this.R.a();
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final aym e() {
        return this.V.a();
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final bxr f() {
        return new bxr(this.H.a(), this.R.a(), this.A.a(), this.af.a(), this.aG.E.a(), this.ak.a(), this.am.a(), this.ap.a(), this.aw.a());
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final bxk g() {
        return new bxk(this.H.a(), this.R.a(), this.A.a(), this.af.a(), this.aG.E.a(), this.ak.a(), this.am.a(), this.ap.a(), this.aw.a());
    }

    @Override // com.google.android.gms.internal.ads.akk
    public final alb h() {
        dsv dsvVar;
        dsv dsvVar2;
        int i = this.f23300c.f23500d;
        boolean z = this.f23300c.e;
        boolean z2 = this.f23300c.f;
        dsvVar = this.aG.L.L;
        cpk b2 = aoj.b(this.f23299b);
        dsvVar2 = this.aG.L.m;
        return new alb(new ans(aoj.b(this.f23299b), aoi.b(this.f23299b), this.q.a(), this.af.a(), this.aG.f23287a.m, new arf(aoi.b(this.f23299b), aoh.b(this.f23299b), this.aG.e.a()), this.r.a()), akn.a(this.f23300c), this.f23300c.f23498b, (coy) dso.b(this.f23300c.f23499c), i, z, z2, new akr((bli) dsvVar.a(), b2, (cty) dsvVar2.a()));
    }

    @Override // com.google.android.gms.internal.ads.akk
    public final bih i() {
        return this.aF.a();
    }
}
