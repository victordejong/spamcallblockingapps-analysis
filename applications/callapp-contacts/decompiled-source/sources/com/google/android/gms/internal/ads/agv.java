package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.zza;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/agv.class */
final class agv extends ald {
    private dsv<bkv> A;
    private dsv<bqe> B;
    private dsv<ayi<ash>> C;
    private dsv<ayi<ash>> D;
    private dsv<ayi<atu>> E;
    private dsv<Set<ayi<atu>>> F;
    private dsv<att> G;
    private dsv<ayi<ash>> H;
    private dsv<ayi<ash>> I;
    private dsv<Set<ayi<ash>>> J;
    private dsv<Set<ayi<ash>>> K;
    private dsv<asc> L;
    private dsv<aqm> M;
    private dsv<Set<ayi<aro>>> N;
    private dsv<wl> O;
    private dsv<View> P;
    private dsv<bav> Q;
    private dsv<ayi<aro>> R;
    private dsv<Set<ayi<aro>>> S;
    private dsv<asp> T;
    private dsv<ayi<eir>> U;
    private dsv<ayi<eir>> V;
    private dsv<ayi<eir>> W;
    private dsv<Set<ayi<eir>>> X;
    private dsv<arj> Y;
    private dsv<ayq> Z;

    /* renamed from: a  reason: collision with root package name */
    private final app f23279a;
    private dsv<Set<ayi<asd>>> aA;
    private dsv<arw> aB;
    private dsv<ayi<art>> aC;
    private dsv<Set<ayi<art>>> aD;
    private dsv<ars> aE;
    private dsv<Set<ayi<eeg>>> aF;
    private dsv<Set<ayi<eeg>>> aG;
    private dsv<ayh> aH;
    private dsv<vy> aI;
    private dsv<zza> aJ;
    private dsv<ayi<avs>> aK;
    private dsv<Set<ayi<avs>>> aL;
    private dsv<avn> aM;
    private dsv<bih> aN;
    private dsv<bat> aO;
    private dsv<Set<ayi<ayb>>> aP;
    private dsv<Set<ayi<ayb>>> aQ;
    private dsv<aye> aR;
    private dsv<bag> aS;
    private final /* synthetic */ agw aT;
    private dsv<ayi<ayn>> aa;
    private dsv<Set<ayi<ayn>>> ab;
    private dsv<aym> ac;
    private dsv<ayi<atb>> ad;
    private dsv<ayi<atb>> ae;
    private dsv<adt> af;
    private dsv<bar> ag;
    private dsv<ayi<atb>> ah;
    private dsv<ayi<atb>> ai;
    private dsv<Set<ayi<atb>>> aj;
    private dsv<ata> ak;
    private dsv<aom> al;
    private dsv<ayi<zzp>> am;
    private dsv<ayi<zzp>> an;
    private dsv<ayi<zzp>> ao;
    private dsv<Set<ayi<zzp>>> ap;
    private dsv<atj> aq;
    private dsv<Set<ayi<VideoController.VideoLifecycleCallbacks>>> ar;
    private dsv<ayz> as;
    private dsv<ayi<avw>> at;
    private dsv<Set<ayi<avw>>> au;
    private dsv<Set<ayi<avw>>> av;
    private dsv<avr> aw;
    private dsv<ayi<asd>> ax;
    private dsv<ayi<asd>> ay;
    private dsv<Set<ayi<asd>>> az;

    /* renamed from: b  reason: collision with root package name */
    private final aof f23280b;

    /* renamed from: c  reason: collision with root package name */
    private final azj f23281c;

    /* renamed from: d  reason: collision with root package name */
    private final alc f23282d;
    private final apm e;
    private final arh f;
    private dsv<cov> g;
    private dsv h;
    private dsv<ayi<asg>> i;
    private dsv<lw> j;
    private dsv<JSONObject> k;
    private dsv<eed> l;
    private dsv<ajs> m;
    private dsv<ajp> n;
    private dsv<aju> o;
    private dsv<Set<ayi<asg>>> p;
    private dsv<Set<ayi<asg>>> q;
    private dsv<asj> r;
    private dsv<aue> s;
    private dsv<ayi<aro>> t;
    private dsv<cpk> u;
    private dsv<coz> v;
    private dsv<cpu> w;
    private dsv<View> x;
    private dsv<ajk> y;
    private dsv<ayi<aro>> z;

    private agv(agw agwVar, aof aofVar, azj azjVar, alc alcVar) {
        dsv dsvVar;
        dsv dsvVar2;
        dsv dsvVar3;
        alj aljVar;
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
        dsv dsvVar19;
        csh cshVar5;
        csh cshVar6;
        csh cshVar7;
        dsv dsvVar20;
        csh cshVar8;
        dsv dsvVar21;
        alh alhVar;
        csh cshVar9;
        csh cshVar10;
        dsv dsvVar22;
        csh cshVar11;
        dsv dsvVar23;
        csh cshVar12;
        csh cshVar13;
        dsv dsvVar24;
        alh alhVar2;
        dsv dsvVar25;
        dsv dsvVar26;
        csh cshVar14;
        dsv dsvVar27;
        csh cshVar15;
        csh cshVar16;
        csh cshVar17;
        csh cshVar18;
        dsv dsvVar28;
        dsv dsvVar29;
        dsv dsvVar30;
        dsv dsvVar31;
        dsv dsvVar32;
        dsv dsvVar33;
        dsv dsvVar34;
        dsv dsvVar35;
        dsv dsvVar36;
        this.aT = agwVar;
        app appVar = new app();
        this.f23279a = appVar;
        this.f23280b = aofVar;
        this.f23281c = azjVar;
        this.f23282d = alcVar;
        apm apmVar = new apm();
        this.e = apmVar;
        arh arhVar = new arh();
        this.f = arhVar;
        this.g = aoi.a(aofVar);
        dsv<Context> dsvVar37 = agwVar.f23286d;
        dsv<cov> dsvVar38 = this.g;
        dsvVar = agwVar.L.ae;
        dsv a2 = dsj.a(aqt.a(dsvVar37, dsvVar38, dsvVar));
        this.h = a2;
        this.i = dsj.a(aqe.a(appVar, a2));
        dsvVar2 = agwVar.L.af;
        this.j = dsj.a(akd.a(dsvVar2));
        this.k = dsj.a(aki.a(this.g));
        dsv<cov> dsvVar39 = this.g;
        dsvVar3 = agwVar.L.g;
        dsv<JSONObject> dsvVar40 = this.k;
        aljVar = ali.f23524a;
        this.l = dsj.a(aka.a(dsvVar39, dsvVar3, dsvVar40, aljVar));
        this.m = dsj.a(ajv.a(agwVar.f23284b, this.l));
        dsv<eed> dsvVar41 = this.l;
        dsv<lw> dsvVar42 = this.j;
        csfVar = csi.f26339a;
        this.n = dsj.a(ajy.a(dsvVar41, dsvVar42, csfVar));
        dsv<lw> dsvVar43 = this.j;
        dsv<ajs> dsvVar44 = this.m;
        dsvVar4 = agwVar.L.n;
        dsv<ajp> dsvVar45 = this.n;
        dsvVar5 = agwVar.L.p;
        dsv<aju> a3 = dsj.a(ajz.a(dsvVar43, dsvVar44, dsvVar4, dsvVar45, dsvVar5));
        this.o = a3;
        cshVar = csk.f26340a;
        this.p = dsj.a(akc.a(a3, cshVar, this.k));
        dsr a4 = dsr.a(1, 3).b(agwVar.i).b(agwVar.j).a(this.i).b(this.p).a();
        this.q = a4;
        this.r = dsj.a(asm.a(a4));
        avlVar = avo.f23928a;
        dsv<aue> a5 = dsj.a(avlVar);
        this.s = a5;
        dsvVar6 = agwVar.L.n;
        this.t = dsj.a(apr.a(a5, dsvVar6));
        this.u = aoj.a(aofVar);
        this.v = aok.a(aofVar);
        dsvVar7 = agwVar.L.J;
        dsvVar8 = agwVar.L.K;
        this.w = dsj.a(cpx.a(dsvVar7, dsvVar8, this.g, this.v));
        this.x = bac.a(azjVar);
        dsv<Context> dsvVar46 = agwVar.f23284b;
        cshVar2 = csk.f26340a;
        dsvVar9 = agwVar.L.l;
        dsv<cpk> dsvVar47 = this.u;
        dsv<cov> dsvVar48 = this.g;
        dsv<cuq> dsvVar49 = agwVar.g;
        dsv<cpu> dsvVar50 = this.w;
        dsv<View> dsvVar51 = this.x;
        dsvVar10 = agwVar.L.H;
        dsv<bw> dsvVar52 = agwVar.h;
        dsvVar11 = agwVar.L.ag;
        dsv<ajk> a6 = dsj.a(ajm.a(dsvVar46, cshVar2, dsvVar9, dsvVar47, dsvVar48, dsvVar49, dsvVar50, dsvVar51, dsvVar10, dsvVar52, dsvVar11));
        this.y = a6;
        cshVar3 = csk.f26340a;
        this.z = apj.a(a6, cshVar3);
        dsv<Context> dsvVar53 = agwVar.f23284b;
        dsvVar12 = agwVar.L.Z;
        dsvVar13 = agwVar.L.L;
        dsv<cpk> dsvVar54 = this.u;
        dsv<cov> dsvVar55 = this.g;
        dsvVar14 = agwVar.L.J;
        this.A = dsj.a(bku.a(dsvVar53, dsvVar12, dsvVar13, dsvVar54, dsvVar55, dsvVar14));
        dsv<Context> dsvVar56 = agwVar.f23284b;
        dsvVar15 = agwVar.L.Z;
        dsv<cpk> dsvVar57 = this.u;
        dsv<cov> dsvVar58 = this.g;
        dsvVar16 = agwVar.L.J;
        dsvVar17 = agwVar.L.m;
        this.B = dsj.a(bqd.a(dsvVar56, dsvVar15, dsvVar57, dsvVar58, dsvVar16, dsvVar17, agwVar.f23285c));
        dsv<bkv> dsvVar59 = this.A;
        cshVar4 = csk.f26340a;
        this.C = dsj.a(aqb.a(dsvVar59, cshVar4, this.B));
        dsv<aue> dsvVar60 = this.s;
        dsvVar18 = agwVar.L.n;
        this.D = dsj.a(apw.a(dsvVar60, dsvVar18));
        dsv<aue> dsvVar61 = this.s;
        dsvVar19 = agwVar.L.n;
        this.E = dsj.a(aqa.a(dsvVar61, dsvVar19));
        dsr a7 = dsr.a(1, 1).b(agwVar.r).a(this.E).a();
        this.F = a7;
        dsv<att> a8 = dsj.a(atv.a(a7, this.g));
        this.G = a8;
        cshVar5 = csk.f26340a;
        this.H = aop.a(a8, cshVar5);
        dsv<ajk> dsvVar62 = this.y;
        cshVar6 = csk.f26340a;
        this.I = apl.a(dsvVar62, cshVar6);
        dsv<aju> dsvVar63 = this.o;
        cshVar7 = csk.f26340a;
        this.J = dsj.a(akb.a(dsvVar63, cshVar7, this.k));
        dsr a9 = dsr.a(6, 3).a(agwVar.n).a(agwVar.o).b(agwVar.p).b(agwVar.q).a(this.C).a(this.D).a(this.H).a(this.I).b(this.J).a();
        this.K = a9;
        dsv<asc> a10 = dsj.a(ase.a(a9));
        this.L = a10;
        dsv<cov> dsvVar64 = this.g;
        dsvVar20 = agwVar.L.l;
        cshVar8 = csk.f26340a;
        dsv<aqm> a11 = dsj.a(aqn.a(a10, dsvVar64, dsvVar20, cshVar8));
        this.M = a11;
        this.N = azw.a(azjVar, a11);
        this.O = azv.a(azjVar, agwVar.f23284b, agwVar.e);
        this.P = azn.a(azjVar);
        dsv<wl> dsvVar65 = this.O;
        dsv<Context> dsvVar66 = agwVar.f23284b;
        dsvVar21 = agwVar.L.D;
        dsv<View> dsvVar67 = this.P;
        alhVar = alg.f23523a;
        dsv<bav> a12 = dsj.a(bau.a(dsvVar65, dsvVar66, dsvVar21, dsvVar67, alhVar));
        this.Q = a12;
        cshVar9 = csk.f26340a;
        this.R = azx.a(azjVar, a12, cshVar9);
        dsr a13 = dsr.a(4, 3).a(agwVar.k).b(agwVar.l).b(agwVar.m).a(this.t).a(this.z).b(this.N).a(this.R).a();
        this.S = a13;
        this.T = dsj.a(asv.a(a13));
        dsv<bkv> dsvVar68 = this.A;
        cshVar10 = csk.f26340a;
        this.U = dsj.a(aqc.a(dsvVar68, cshVar10, this.B));
        dsv<aue> dsvVar69 = this.s;
        dsvVar22 = agwVar.L.n;
        this.V = dsj.a(aps.a(dsvVar69, dsvVar22));
        dsv<ajk> dsvVar70 = this.y;
        cshVar11 = csk.f26340a;
        this.W = apg.a(dsvVar70, cshVar11);
        dsr a14 = dsr.a(5, 2).a(agwVar.s).a(agwVar.t).b(agwVar.u).b(agwVar.v).a(this.U).a(this.V).a(this.W).a();
        this.X = a14;
        this.Y = dsj.a(arl.a(a14));
        dsv<cov> dsvVar71 = this.g;
        dsvVar23 = agwVar.L.K;
        dsv<ayq> a15 = dsj.a(ayp.a(dsvVar71, dsvVar23));
        this.Z = a15;
        cshVar12 = csk.f26340a;
        this.aa = aph.a(a15, cshVar12);
        dsr a16 = dsr.a(1, 1).b(agwVar.w).a(this.aa).a();
        this.ab = a16;
        this.ac = dsj.a(ayo.a(a16));
        this.ad = dsj.a(aqd.a(appVar, this.h));
        dsv<ajk> dsvVar72 = this.y;
        cshVar13 = csk.f26340a;
        this.ae = apk.a(dsvVar72, cshVar13);
        this.af = bae.a(azjVar);
        dsv<Context> dsvVar73 = agwVar.f23284b;
        dsv<adt> dsvVar74 = this.af;
        dsv<cov> dsvVar75 = this.g;
        dsvVar24 = agwVar.L.g;
        alhVar2 = alg.f23523a;
        dsv<bar> a17 = dsj.a(baq.a(dsvVar73, dsvVar74, dsvVar75, dsvVar24, alhVar2));
        this.ag = a17;
        this.ah = azr.a(azjVar, a17);
        dsv<Context> dsvVar76 = agwVar.f23286d;
        dsvVar25 = agwVar.L.g;
        this.ai = azp.a(azjVar, dsvVar76, dsvVar25, this.g, agwVar.e);
        dsr a18 = dsr.a(8, 3).a(agwVar.x).a(agwVar.y).a(agwVar.z).b(agwVar.A).b(agwVar.B).b(agwVar.C).a(agwVar.D).a(this.ad).a(this.ae).a(this.ah).a(this.ai).a();
        this.aj = a18;
        this.ak = dsj.a(atc.a(a18));
        dsv<aom> a19 = dsj.a(aol.a(this.T));
        this.al = a19;
        this.am = apx.a(appVar, a19);
        dsv<aue> dsvVar77 = this.s;
        dsvVar26 = agwVar.L.n;
        this.an = dsj.a(apy.a(dsvVar77, dsvVar26));
        this.ao = azu.a(azjVar, this.ag);
        dsr a20 = dsr.a(3, 1).b(agwVar.F).a(this.am).a(this.an).a(this.ao).a();
        this.ap = a20;
        this.aq = dsj.a(atp.a(a20));
        dsr a21 = dsr.a(0, 1).b(agwVar.G).a();
        this.ar = a21;
        this.as = dsj.a(azf.a(a21));
        dsv<bkv> dsvVar78 = this.A;
        cshVar14 = csk.f26340a;
        this.at = dsj.a(apz.a(dsvVar78, cshVar14, this.B));
        this.au = azq.a(azjVar, this.M);
        dsr a22 = dsr.a(1, 1).a(this.at).b(this.au).a();
        this.av = a22;
        this.aw = dsj.a(avx.a(a22));
        dsv<aue> dsvVar79 = this.s;
        dsvVar27 = agwVar.L.n;
        this.ax = dsj.a(apt.a(dsvVar79, dsvVar27));
        dsv<ajk> dsvVar80 = this.y;
        cshVar15 = csk.f26340a;
        this.ay = api.a(dsvVar80, cshVar15);
        this.az = azo.a(azjVar, this.M);
        dsr a23 = dsr.a(2, 2).b(agwVar.H).a(this.ax).a(this.ay).b(this.az).a();
        this.aA = a23;
        this.aB = asb.a(a23);
        dsv<bkv> dsvVar81 = this.A;
        cshVar16 = csk.f26340a;
        this.aC = dsj.a(apu.a(dsvVar81, cshVar16, this.B));
        dsr a24 = dsr.a(1, 0).a(this.aC).a();
        this.aD = a24;
        dsv<arw> dsvVar82 = this.aB;
        cshVar17 = csk.f26340a;
        this.aE = dsj.a(asa.a(dsvVar82, a24, cshVar17));
        dsv<aju> dsvVar83 = this.o;
        cshVar18 = csk.f26340a;
        this.aF = dsj.a(akf.a(dsvVar83, cshVar18, this.k));
        this.aG = dsr.a(0, 2).b(agwVar.J).b(this.aF).a();
        this.aH = dsj.a(ayj.a(agwVar.f23286d, this.aG, this.g));
        dsv<Context> dsvVar84 = agwVar.f23286d;
        dsvVar28 = agwVar.L.g;
        dsv<cov> dsvVar85 = this.g;
        dsvVar29 = agwVar.L.ah;
        this.aI = dsj.a(ark.a(arhVar, dsvVar84, dsvVar28, dsvVar85, dsvVar29));
        this.aJ = dsj.a(apq.a(apmVar, agwVar.f23286d, this.aI));
        dsvVar30 = agwVar.L.n;
        this.aK = bad.a(azjVar, dsvVar30);
        dsr a25 = dsr.a(1, 1).b(agwVar.K).a(this.aK).a();
        this.aL = a25;
        this.aM = dsj.a(avp.a(a25));
        dsv<arj> dsvVar86 = this.Y;
        dsv<asp> dsvVar87 = this.T;
        dsv<ate> dsvVar88 = agwVar.I;
        dsv<atj> dsvVar89 = this.aq;
        dsv<avz> dsvVar90 = agwVar.E;
        dsvVar31 = agwVar.L.n;
        dsv<ayh> dsvVar91 = this.aH;
        dsv<aju> dsvVar92 = this.o;
        dsv<zza> dsvVar93 = this.aJ;
        dsv<asj> dsvVar94 = this.r;
        dsv<vy> dsvVar95 = this.aI;
        dsvVar32 = agwVar.L.H;
        dsv<avn> dsvVar96 = this.aM;
        dsvVar33 = agwVar.L.J;
        dsvVar34 = agwVar.L.K;
        dsvVar35 = agwVar.L.L;
        dsvVar36 = agwVar.L.m;
        this.aN = dsj.a(biu.a(dsvVar86, dsvVar87, dsvVar88, dsvVar89, dsvVar90, dsvVar31, dsvVar91, dsvVar92, dsvVar93, dsvVar94, dsvVar95, dsvVar32, dsvVar96, dsvVar33, dsvVar34, dsvVar35, dsvVar36));
        dsv<bat> a26 = dsj.a(bas.a(this.r));
        this.aO = a26;
        this.aP = baa.a(a26);
        dsr a27 = dsr.a(0, 1).b(this.aP).a();
        this.aQ = a27;
        dsv<aye> a28 = dsj.a(ayf.a(a27));
        this.aR = a28;
        this.aS = dsj.a(baf.a(this.aq, a28));
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final asj a() {
        return this.r.a();
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final asp b() {
        return this.T.a();
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final arj c() {
        return this.Y.a();
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final asc d() {
        return this.L.a();
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final aym e() {
        return this.ac.a();
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final bxr f() {
        return new bxr(this.Y.a(), this.L.a(), this.T.a(), this.ak.a(), this.aT.E.a(), this.aq.a(), this.as.a(), this.aw.a(), this.aE.a());
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final bxk g() {
        return new bxk(this.Y.a(), this.L.a(), this.T.a(), this.ak.a(), this.aT.E.a(), this.aq.a(), this.as.a(), this.aw.a(), this.aE.a());
    }

    @Override // com.google.android.gms.internal.ads.ald
    public final all h() {
        dsv dsvVar;
        dsv dsvVar2;
        adt adtVar = this.f23281c.f24035b;
        int i = this.f23282d.f23522a;
        dsvVar = this.aT.L.L;
        cpk b2 = aoj.b(this.f23280b);
        dsvVar2 = this.aT.L.m;
        return new all(new ans(aoj.b(this.f23280b), aoi.b(this.f23280b), this.r.a(), this.ak.a(), this.aT.f23283a.m, new arf(aoi.b(this.f23280b), aoh.b(this.f23280b), this.aT.f.a()), this.s.a()), this.aT.f23286d.a(), adtVar, i, new akr((bli) dsvVar.a(), b2, (cty) dsvVar2.a()), azs.a(this.f23281c));
    }

    @Override // com.google.android.gms.internal.ads.ald
    public final bih i() {
        return this.aN.a();
    }

    @Override // com.google.android.gms.internal.ads.ald
    public final bag j() {
        return this.aS.a();
    }
}
