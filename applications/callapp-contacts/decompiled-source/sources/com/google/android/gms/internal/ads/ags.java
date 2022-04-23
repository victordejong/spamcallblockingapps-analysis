package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.util.zzf;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ags.class */
final class ags extends bct {
    private dsv<Set<ayi<aro>>> A;
    private dsv<asp> B;
    private dsv<bkv> C;
    private dsv<bqe> D;
    private dsv<ayi<eir>> E;
    private dsv<ayi<eir>> F;
    private dsv<ayi<eir>> G;
    private dsv<Set<ayi<eir>>> H;
    private dsv<arj> I;
    private dsv<Set<ayi<ash>>> J;
    private dsv<ayi<ash>> K;
    private dsv<ayi<ash>> L;
    private dsv<ayi<atu>> M;
    private dsv<bzx> N;
    private dsv<ayi<atu>> O;
    private dsv<Set<ayi<atu>>> P;
    private dsv<att> Q;
    private dsv<ayi<ash>> R;
    private dsv<ayi<ash>> S;
    private dsv<bcr> T;
    private dsv<bem> U;
    private dsv<ayi<ash>> V;
    private dsv<Set<ayi<ash>>> W;
    private dsv<asc> X;
    private dsv<ayq> Y;
    private dsv<ayi<ayn>> Z;

    /* renamed from: a  reason: collision with root package name */
    private final app f23267a;
    private dsv<bgy> aA;
    private dsv<bdr> aB;
    private dsv<Set<ayi<eeg>>> aC;
    private dsv<Set<ayi<eeg>>> aD;
    private dsv<ayh> aE;
    private dsv<bbm> aF;
    private dsv<bcz> aG;
    private dsv<eed> aH;
    private dsv<akh> aI;
    private dsv<bdw> aJ;
    private dsv<bef> aK;
    private dsv<bcd> aL;
    private dsv<bcm> aM;
    private dsv<bdo> aN;
    private dsv<bcf> aO;
    private dsv<bgq> aP;
    private dsv<bgo> aQ;
    private dsv<bgx> aR;
    private dsv<bgk> aS;
    private dsv<bgs> aT;
    private dsv<wl> aU;
    private dsv<bhk> aV;
    private dsv<ayh> aW;
    private dsv<bgf> aX;
    private final /* synthetic */ agp aY;
    private dsv<Set<ayi<ayn>>> aa;
    private dsv<aym> ab;
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
    private dsv<String> ax;
    private dsv<arf> ay;
    private dsv<ans> az;

    /* renamed from: b  reason: collision with root package name */
    private final bde f23268b;

    /* renamed from: c  reason: collision with root package name */
    private final bbs f23269c;

    /* renamed from: d  reason: collision with root package name */
    private dsv<lw> f23270d;
    private dsv<cov> e;
    private dsv<JSONObject> f;
    private dsv<bcu> g;
    private dsv<bcv> h;
    private dsv<JSONObject> i;
    private dsv<eed> j;
    private dsv<ajs> k;
    private dsv<ajp> l;
    private dsv<aju> m;
    private dsv<Set<ayi<asg>>> n;
    private dsv o;
    private dsv<ayi<asg>> p;
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

    private ags(agp agpVar, aof aofVar, bde bdeVar, bbs bbsVar) {
        dsv dsvVar;
        dsv dsvVar2;
        bbh bbhVar;
        csf csfVar;
        dsv dsvVar3;
        dsv dsvVar4;
        csh cshVar;
        dsv dsvVar5;
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
        csh cshVar7;
        dsv dsvVar19;
        dsv dsvVar20;
        bdd bddVar;
        csh cshVar8;
        csh cshVar9;
        csh cshVar10;
        dsv dsvVar21;
        csh cshVar11;
        csh cshVar12;
        dsv dsvVar22;
        csh cshVar13;
        dsv dsvVar23;
        csh cshVar14;
        csh cshVar15;
        csh cshVar16;
        dsv dsvVar24;
        csh cshVar17;
        dsv dsvVar25;
        dsv dsvVar26;
        dsv dsvVar27;
        dsv dsvVar28;
        dsv dsvVar29;
        bbh bbhVar2;
        dsv dsvVar30;
        dsv dsvVar31;
        dsv dsvVar32;
        csh cshVar18;
        dsv dsvVar33;
        dsv dsvVar34;
        dsv dsvVar35;
        dsv dsvVar36;
        dsv dsvVar37;
        this.aY = agpVar;
        app appVar = new app();
        this.f23267a = appVar;
        this.f23268b = bdeVar;
        this.f23269c = bbsVar;
        dsvVar = agpVar.O.af;
        this.f23270d = dsj.a(akd.a(dsvVar));
        this.e = aoi.a(aofVar);
        bbu bbuVar = new bbu(bbsVar);
        this.f = bbuVar;
        dsv<bcu> a2 = dsj.a(new bcw(this.e, bbuVar));
        this.g = a2;
        bbt bbtVar = new bbt(bbsVar, a2);
        this.h = bbtVar;
        this.i = dsj.a(new bbr(bbsVar, bbtVar));
        dsv<cov> dsvVar38 = this.e;
        dsvVar2 = agpVar.O.g;
        dsv<JSONObject> dsvVar39 = this.i;
        bbhVar = bbk.f24120a;
        this.j = dsj.a(aka.a(dsvVar38, dsvVar2, dsvVar39, bbhVar));
        this.k = dsj.a(ajv.a(agpVar.f23256b, this.j));
        dsv<eed> dsvVar40 = this.j;
        dsv<lw> dsvVar41 = this.f23270d;
        csfVar = csi.f26339a;
        this.l = dsj.a(ajy.a(dsvVar40, dsvVar41, csfVar));
        dsv<lw> dsvVar42 = this.f23270d;
        dsv<ajs> dsvVar43 = this.k;
        dsvVar3 = agpVar.O.n;
        dsv<ajp> dsvVar44 = this.l;
        dsvVar4 = agpVar.O.p;
        dsv<aju> a3 = dsj.a(ajz.a(dsvVar42, dsvVar43, dsvVar3, dsvVar44, dsvVar4));
        this.m = a3;
        cshVar = csk.f26340a;
        this.n = dsj.a(akc.a(a3, cshVar, this.i));
        dsv<Context> dsvVar45 = agpVar.f23258d;
        dsv<cov> dsvVar46 = this.e;
        dsvVar5 = agpVar.O.ae;
        dsv a4 = dsj.a(aqt.a(dsvVar45, dsvVar46, dsvVar5));
        this.o = a4;
        this.p = dsj.a(aqe.a(appVar, a4));
        dsr a5 = dsr.a(1, 3).b(agpVar.l).b(agpVar.m).b(this.n).a(this.p).a();
        this.q = a5;
        this.r = dsj.a(asm.a(a5));
        avlVar = avo.f23928a;
        dsv<aue> a6 = dsj.a(avlVar);
        this.s = a6;
        dsvVar6 = agpVar.O.n;
        this.t = dsj.a(apr.a(a6, dsvVar6));
        this.u = aoj.a(aofVar);
        this.v = aok.a(aofVar);
        dsvVar7 = agpVar.O.J;
        dsvVar8 = agpVar.O.K;
        this.w = dsj.a(cpx.a(dsvVar7, dsvVar8, this.e, this.v));
        this.x = bdh.a(bdeVar);
        dsv<Context> dsvVar47 = agpVar.f23256b;
        cshVar2 = csk.f26340a;
        dsvVar9 = agpVar.O.l;
        dsv<cpk> dsvVar48 = this.u;
        dsv<cov> dsvVar49 = this.e;
        dsv<cuq> dsvVar50 = agpVar.i;
        dsv<cpu> dsvVar51 = this.w;
        dsv<View> dsvVar52 = this.x;
        dsvVar10 = agpVar.O.H;
        dsv<bw> dsvVar53 = agpVar.j;
        dsvVar11 = agpVar.O.ag;
        dsv<ajk> a7 = dsj.a(ajm.a(dsvVar47, cshVar2, dsvVar9, dsvVar48, dsvVar49, dsvVar50, dsvVar51, dsvVar52, dsvVar10, dsvVar53, dsvVar11));
        this.y = a7;
        cshVar3 = csk.f26340a;
        this.z = apj.a(a7, cshVar3);
        dsr a8 = dsr.a(3, 2).a(agpVar.n).b(agpVar.o).b(agpVar.p).a(this.t).a(this.z).a();
        this.A = a8;
        this.B = dsj.a(asv.a(a8));
        dsv<Context> dsvVar54 = agpVar.f23256b;
        dsvVar12 = agpVar.O.Z;
        dsvVar13 = agpVar.O.L;
        dsv<cpk> dsvVar55 = this.u;
        dsv<cov> dsvVar56 = this.e;
        dsvVar14 = agpVar.O.J;
        this.C = dsj.a(bku.a(dsvVar54, dsvVar12, dsvVar13, dsvVar55, dsvVar56, dsvVar14));
        dsv<Context> dsvVar57 = agpVar.f23256b;
        dsvVar15 = agpVar.O.Z;
        dsv<cpk> dsvVar58 = this.u;
        dsv<cov> dsvVar59 = this.e;
        dsvVar16 = agpVar.O.J;
        dsvVar17 = agpVar.O.m;
        this.D = dsj.a(bqd.a(dsvVar57, dsvVar15, dsvVar58, dsvVar59, dsvVar16, dsvVar17, agpVar.f23257c));
        dsv<bkv> dsvVar60 = this.C;
        cshVar4 = csk.f26340a;
        this.E = dsj.a(aqc.a(dsvVar60, cshVar4, this.D));
        dsv<aue> dsvVar61 = this.s;
        dsvVar18 = agpVar.O.n;
        this.F = dsj.a(aps.a(dsvVar61, dsvVar18));
        dsv<ajk> dsvVar62 = this.y;
        cshVar5 = csk.f26340a;
        this.G = apg.a(dsvVar62, cshVar5);
        dsr a9 = dsr.a(5, 2).a(agpVar.q).a(agpVar.r).b(agpVar.s).b(agpVar.t).a(this.E).a(this.F).a(this.G).a();
        this.H = a9;
        this.I = dsj.a(arl.a(a9));
        dsv<aju> dsvVar63 = this.m;
        cshVar6 = csk.f26340a;
        this.J = dsj.a(akb.a(dsvVar63, cshVar6, this.i));
        dsv<bkv> dsvVar64 = this.C;
        cshVar7 = csk.f26340a;
        this.K = dsj.a(aqb.a(dsvVar64, cshVar7, this.D));
        dsv<aue> dsvVar65 = this.s;
        dsvVar19 = agpVar.O.n;
        this.L = dsj.a(apw.a(dsvVar65, dsvVar19));
        dsv<aue> dsvVar66 = this.s;
        dsvVar20 = agpVar.O.n;
        this.M = dsj.a(aqa.a(dsvVar66, dsvVar20));
        bddVar = bdg.f24205a;
        dsv<bzx> a10 = dsj.a(bddVar);
        this.N = a10;
        cshVar8 = csk.f26340a;
        this.O = bdf.a(a10, cshVar8);
        dsr a11 = dsr.a(2, 1).b(agpVar.y).a(this.M).a(this.O).a();
        this.P = a11;
        dsv<att> a12 = dsj.a(atv.a(a11, this.e));
        this.Q = a12;
        cshVar9 = csk.f26340a;
        this.R = aop.a(a12, cshVar9);
        dsv<ajk> dsvVar67 = this.y;
        cshVar10 = csk.f26340a;
        this.S = apl.a(dsvVar67, cshVar10);
        bdk a13 = bdk.a(bdeVar);
        this.T = a13;
        dsv<bem> a14 = dsj.a(new bep(a13, this.h));
        this.U = a14;
        this.V = new bcb(bbsVar, a14);
        dsr a15 = dsr.a(7, 3).a(agpVar.u).a(agpVar.v).b(agpVar.w).b(agpVar.x).b(this.J).a(this.K).a(this.L).a(this.R).a(this.S).a(this.V).a();
        this.W = a15;
        this.X = dsj.a(ase.a(a15));
        dsv<cov> dsvVar68 = this.e;
        dsvVar21 = agpVar.O.K;
        dsv<ayq> a16 = dsj.a(ayp.a(dsvVar68, dsvVar21));
        this.Y = a16;
        cshVar11 = csk.f26340a;
        this.Z = aph.a(a16, cshVar11);
        dsr a17 = dsr.a(1, 1).b(agpVar.z).a(this.Z).a();
        this.aa = a17;
        this.ab = dsj.a(ayo.a(a17));
        this.ac = dsj.a(aqd.a(appVar, this.o));
        dsv<ajk> dsvVar69 = this.y;
        cshVar12 = csk.f26340a;
        this.ad = apk.a(dsvVar69, cshVar12);
        dsr a18 = dsr.a(6, 3).a(agpVar.A).a(agpVar.B).a(agpVar.C).b(agpVar.D).b(agpVar.E).b(agpVar.F).a(agpVar.G).a(this.ac).a(this.ad).a();
        this.ae = a18;
        this.af = dsj.a(atc.a(a18));
        dsv<aom> a19 = dsj.a(aol.a(this.B));
        this.ag = a19;
        this.ah = apx.a(appVar, a19);
        dsv<aue> dsvVar70 = this.s;
        dsvVar22 = agpVar.O.n;
        this.ai = dsj.a(apy.a(dsvVar70, dsvVar22));
        dsr a20 = dsr.a(2, 1).b(agpVar.I).a(this.ah).a(this.ai).a();
        this.aj = a20;
        this.ak = dsj.a(atp.a(a20));
        dsr a21 = dsr.a(0, 1).b(agpVar.J).a();
        this.al = a21;
        this.am = dsj.a(azf.a(a21));
        dsv<bkv> dsvVar71 = this.C;
        cshVar13 = csk.f26340a;
        this.an = dsj.a(apz.a(dsvVar71, cshVar13, this.D));
        dsr a22 = dsr.a(1, 0).a(this.an).a();
        this.ao = a22;
        this.ap = dsj.a(avx.a(a22));
        dsv<aue> dsvVar72 = this.s;
        dsvVar23 = agpVar.O.n;
        this.aq = dsj.a(apt.a(dsvVar72, dsvVar23));
        dsv<ajk> dsvVar73 = this.y;
        cshVar14 = csk.f26340a;
        this.ar = api.a(dsvVar73, cshVar14);
        dsr a23 = dsr.a(2, 1).b(agpVar.K).a(this.aq).a(this.ar).a();
        this.as = a23;
        this.at = asb.a(a23);
        dsv<bkv> dsvVar74 = this.C;
        cshVar15 = csk.f26340a;
        this.au = dsj.a(apu.a(dsvVar74, cshVar15, this.D));
        dsr a24 = dsr.a(1, 0).a(this.au).a();
        this.av = a24;
        dsv<arw> dsvVar75 = this.at;
        cshVar16 = csk.f26340a;
        this.aw = dsj.a(asa.a(dsvVar75, a24, cshVar16));
        aoh a25 = aoh.a(aofVar);
        this.ax = a25;
        this.ay = ari.a(this.e, a25, agpVar.f);
        this.az = apn.a(this.u, this.e, this.r, this.af, agpVar.L, this.ay, this.s);
        bbv bbvVar = new bbv(bbsVar);
        this.aA = bbvVar;
        dsvVar24 = agpVar.O.p;
        this.aB = dsj.a(new bdt(bbvVar, dsvVar24));
        dsv<aju> dsvVar76 = this.m;
        cshVar17 = csk.f26340a;
        this.aC = dsj.a(akf.a(dsvVar76, cshVar17, this.i));
        this.aD = dsr.a(0, 2).b(agpVar.M).b(this.aC).a();
        this.aE = dsj.a(ayj.a(agpVar.f23258d, this.aD, this.e));
        dsv<Context> dsvVar77 = agpVar.f23258d;
        dsv<bcy> dsvVar78 = agpVar.h;
        dsv<JSONObject> dsvVar79 = this.f;
        dsv<bgy> dsvVar80 = this.aA;
        dsv<bcr> dsvVar81 = this.T;
        dsvVar25 = agpVar.O.H;
        dsv<asc> dsvVar82 = this.X;
        dsv<arj> dsvVar83 = this.I;
        dsv<cov> dsvVar84 = this.e;
        dsvVar26 = agpVar.O.g;
        dsv<cpo> dsvVar85 = agpVar.g;
        dsv<aju> dsvVar86 = this.m;
        dsv<bdr> dsvVar87 = this.aB;
        dsvVar27 = agpVar.O.p;
        dsv<ayh> dsvVar88 = this.aE;
        dsvVar28 = agpVar.O.K;
        dsv<bbm> a26 = dsj.a(new bbp(dsvVar77, dsvVar78, dsvVar79, dsvVar80, dsvVar81, dsvVar25, dsvVar82, dsvVar83, dsvVar84, dsvVar26, dsvVar85, dsvVar86, dsvVar87, dsvVar27, dsvVar88, dsvVar28));
        this.aF = a26;
        this.aG = new bbw(bbsVar, a26);
        dsvVar29 = agpVar.O.g;
        bbhVar2 = bbk.f24120a;
        dsv<eed> a27 = dsj.a(new bbx(dsvVar29, bbhVar2));
        this.aH = a27;
        dsvVar30 = agpVar.O.n;
        dsv<Context> dsvVar89 = agpVar.f23258d;
        dsvVar31 = agpVar.O.p;
        this.aI = dsj.a(new bca(a27, dsvVar30, dsvVar89, dsvVar31));
        this.aJ = new bec(agpVar.k, this.aA, this.aI, this.aG);
        this.aK = new bek(agpVar.k, this.aA);
        bcc a28 = bcc.a(this.T);
        this.aL = a28;
        this.aM = dsj.a(bcp.a(a28));
        dsv<zzf> dsvVar90 = agpVar.e;
        dsv<cpo> dsvVar91 = agpVar.g;
        dsv<bcv> dsvVar92 = this.h;
        dsv<bcr> dsvVar93 = this.T;
        dsv<bdw> dsvVar94 = this.aJ;
        dsv<bef> dsvVar95 = this.aK;
        dsvVar32 = agpVar.O.n;
        cshVar18 = csk.f26340a;
        this.aN = bds.a(dsvVar90, dsvVar91, dsvVar92, dsvVar93, dsvVar94, dsvVar95, dsvVar32, cshVar18, this.aM);
        dsf dsfVar = new dsf();
        this.aO = dsfVar;
        this.aP = dsj.a(bgt.a(this.ax, dsfVar, this.T));
        this.aQ = dsj.a(bgr.a(this.ax, this.aO, this.T));
        this.aR = dsj.a(bgw.a(this.ax, this.aO, this.T));
        this.aS = dsj.a(bgp.a(this.aO, this.T));
        this.aT = dsj.a(bgu.a(agpVar.f23256b, this.T, this.aN, this.aO));
        this.aU = bdi.a(bdeVar, agpVar.f23256b, agpVar.g);
        dsv<bcf> dsvVar96 = this.aO;
        dsv<ans> dsvVar97 = this.az;
        dsvVar33 = agpVar.O.n;
        dsv<bcr> dsvVar98 = this.T;
        dsv<bcz> dsvVar99 = this.aG;
        dsv<bdo> dsvVar100 = this.aN;
        dsv<bcv> dsvVar101 = this.h;
        dsv<bcy> dsvVar102 = agpVar.h;
        dsv<bgq> dsvVar103 = this.aP;
        dsv<bgo> dsvVar104 = this.aQ;
        dsv<bgx> dsvVar105 = this.aR;
        dsv<bgk> dsvVar106 = this.aS;
        dsv<bgs> dsvVar107 = this.aT;
        dsv<wl> dsvVar108 = this.aU;
        dsvVar34 = agpVar.O.H;
        dsvVar35 = agpVar.O.g;
        dsv<Context> dsvVar109 = agpVar.f23256b;
        dsv<bcm> dsvVar110 = this.aM;
        dsv<bzx> dsvVar111 = this.N;
        dsvVar36 = agpVar.O.am;
        dsf.a(dsvVar96, dsj.a(bcn.a(dsvVar97, dsvVar33, dsvVar98, dsvVar99, dsvVar100, dsvVar101, dsvVar102, dsvVar103, dsvVar104, dsvVar105, dsvVar106, dsvVar107, dsvVar108, dsvVar34, dsvVar35, dsvVar109, dsvVar110, dsvVar111, dsvVar36)));
        this.aV = dsj.a(new bho(this.I, this.B, agpVar.N, this.ak, agpVar.H, this.e, this.v));
        this.aW = dsj.a(new bby(agpVar.f23258d, this.e));
        dsvVar37 = agpVar.O.n;
        this.aX = dsj.a(new bgi(dsvVar37, this.aI, this.aW));
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final asj a() {
        return this.r.a();
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final asp b() {
        return this.B.a();
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final arj c() {
        return this.I.a();
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final asc d() {
        return this.X.a();
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final aym e() {
        return this.ab.a();
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final bxr f() {
        return new bxr(this.I.a(), this.X.a(), this.B.a(), this.af.a(), this.aY.H.a(), this.ak.a(), this.am.a(), this.ap.a(), this.aw.a());
    }

    @Override // com.google.android.gms.internal.ads.anr
    public final bxk g() {
        return new bxk(this.I.a(), this.X.a(), this.B.a(), this.af.a(), this.aY.H.a(), this.ak.a(), this.am.a(), this.ap.a(), this.aw.a());
    }

    @Override // com.google.android.gms.internal.ads.bcq
    public final bcf h() {
        return this.aO.a();
    }

    @Override // com.google.android.gms.internal.ads.bct
    public final bgz i() {
        return new bgz(bbb.b(this.aY.f23255a), bdk.b(this.f23268b), bbv.a(this.f23269c), dsj.b(this.aT));
    }

    @Override // com.google.android.gms.internal.ads.bct
    public final bhk j() {
        return this.aV.a();
    }

    @Override // com.google.android.gms.internal.ads.bct
    public final bgf k() {
        return this.aX.a();
    }
}
