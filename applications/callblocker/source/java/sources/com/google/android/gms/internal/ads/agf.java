package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2299a;
import com.google.android.gms.common.util.AbstractC2708e;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agf.class */
public final class agf extends afh {

    /* renamed from: A */
    private dig<bdj> f8125A;

    /* renamed from: B */
    private dig<chr<bcy>> f8126B;

    /* renamed from: C */
    private dig<btx> f8127C;

    /* renamed from: D */
    private dig<C3542ug> f8128D;

    /* renamed from: E */
    private dig f8129E;

    /* renamed from: F */
    private dig<AbstractC3267kb> f8130F;

    /* renamed from: G */
    private dig<cid> f8131G;

    /* renamed from: H */
    private dig<bhv> f8132H;

    /* renamed from: I */
    private dig<crs> f8133I;

    /* renamed from: J */
    private dig f8134J;

    /* renamed from: K */
    private dig<bwz<cak>> f8135K;

    /* renamed from: L */
    private dig<bwt> f8136L;

    /* renamed from: M */
    private dig<bwz<bwp>> f8137M;

    /* renamed from: N */
    private dig<cgp> f8138N;

    /* renamed from: O */
    private dig<aig> f8139O;

    /* renamed from: P */
    private dig<AbstractC3438qk> f8140P;

    /* renamed from: Q */
    private dig<HashMap<String, blo>> f8141Q;

    /* renamed from: R */
    private dig<cho> f8142R;

    /* renamed from: S */
    private dig<bhi> f8143S;

    /* renamed from: T */
    private dig<bmw<chs, bof>> f8144T;

    /* renamed from: U */
    private dig<AbstractC3379of> f8145U;

    /* renamed from: V */
    private dig<C3252jn> f8146V;

    /* renamed from: W */
    private dig<AbstractC3503sv> f8147W;

    /* renamed from: X */
    private dig<arz> f8148X;

    /* renamed from: Y */
    private dig<cik> f8149Y;

    /* renamed from: Z */
    private dig<cjc> f8150Z;

    /* renamed from: a */
    private final ahf f8151a;

    /* renamed from: aa */
    private dig<cme> f8152aa;

    /* renamed from: b */
    private final afk f8153b;

    /* renamed from: c */
    private dig<Executor> f8154c;

    /* renamed from: d */
    private dig<ThreadFactory> f8155d;

    /* renamed from: e */
    private dig<ScheduledExecutorService> f8156e;

    /* renamed from: f */
    private dig<crs> f8157f;

    /* renamed from: g */
    private dig<AbstractC2708e> f8158g;

    /* renamed from: h */
    private dig<bfb> f8159h;

    /* renamed from: i */
    private dig<bfg> f8160i;

    /* renamed from: j */
    private dig<Context> f8161j;

    /* renamed from: k */
    private dig<C3647yd> f8162k;

    /* renamed from: l */
    private dig<bmw<chs, boe>> f8163l;

    /* renamed from: m */
    private dig<bsn> f8164m;

    /* renamed from: n */
    private dig<WeakReference<Context>> f8165n;

    /* renamed from: o */
    private dig<String> f8166o;

    /* renamed from: p */
    private dig<String> f8167p;

    /* renamed from: q */
    private dig<C3649yf> f8168q;

    /* renamed from: r */
    private dig<bho> f8169r;

    /* renamed from: s */
    private dig<bht> f8170s;

    /* renamed from: t */
    private dig<bij> f8171t;

    /* renamed from: u */
    private dig<C3509ta> f8172u;

    /* renamed from: v */
    private dig<bfj> f8173v;

    /* renamed from: w */
    private dig<ahl> f8174w;

    /* renamed from: x */
    private dig<afh> f8175x;

    /* renamed from: y */
    private dig<ctl> f8176y;

    /* renamed from: z */
    private dig<C2299a> f8177z;

    /* JADX INFO: Access modifiers changed from: private */
    public agf(afk afkVar, ahf ahfVar, clh clhVar, ahp ahpVar, chw chwVar) {
        aht ahtVar;
        afz afzVar;
        this.f8151a = ahfVar;
        this.f8153b = afkVar;
        this.f8154c = dhu.m9447a(cjr.m11183b());
        this.f8155d = dhu.m9447a(ckd.m11171b());
        this.f8156e = dhu.m9447a(new ckf(this.f8155d));
        this.f8157f = dhu.m9447a(cjt.m11182b());
        this.f8158g = dhu.m9447a(new chv(chwVar));
        this.f8159h = dhu.m9447a(bfe.m12010b());
        this.f8160i = dhu.m9447a(new bff(this.f8159h));
        this.f8161j = new afn(afkVar);
        this.f8162k = new afv(afkVar);
        this.f8163l = dhu.m9447a(new afr(afkVar, this.f8160i));
        this.f8164m = dhu.m9447a(new bss(cjx.m11178b()));
        this.f8165n = new afm(afkVar);
        this.f8166o = dhu.m9447a(new aft(afkVar));
        this.f8167p = dhu.m9447a(new afs(afkVar));
        this.f8168q = did.m9436a(new ahu(this.f8167p));
        this.f8169r = dhu.m9447a(new bhq(cjx.m11178b(), this.f8168q, this.f8161j, this.f8162k));
        this.f8170s = dhu.m9447a(new bhs(this.f8166o, this.f8169r));
        this.f8171t = dhu.m9447a(new biv(this.f8154c, this.f8161j, this.f8165n, cjx.m11178b(), this.f8160i, this.f8156e, this.f8170s, this.f8162k));
        this.f8172u = dhu.m9447a(new aid(ahpVar));
        this.f8173v = dhu.m9447a(new bfn(cjx.m11178b()));
        this.f8174w = dhu.m9447a(new ahq(this.f8161j, this.f8162k, this.f8160i, this.f8163l, this.f8164m, this.f8171t, this.f8172u, this.f8173v));
        this.f8175x = dhw.m9444a(this);
        this.f8176y = dhu.m9447a(new afp(afkVar));
        this.f8177z = new ahh(ahfVar);
        dig<Context> digVar = this.f8161j;
        dig<Executor> digVar2 = this.f8154c;
        dig<ctl> digVar3 = this.f8176y;
        dig<C3647yd> digVar4 = this.f8162k;
        dig<C2299a> digVar5 = this.f8177z;
        ahtVar = ahw.f9718a;
        this.f8125A = dhu.m9447a(new bdk(digVar, digVar2, digVar3, digVar4, digVar5, ahtVar));
        this.f8126B = dhu.m9447a(new afu(this.f8125A, cjx.m11178b()));
        this.f8127C = dhu.m9447a(new bul(this.f8175x, this.f8161j, this.f8176y, this.f8162k, this.f8126B, cjx.m11178b(), this.f8156e));
        this.f8128D = dhu.m9447a(new afl(afkVar));
        this.f8129E = dhu.m9447a(new cbt(this.f8161j));
        this.f8130F = new ahj(ahfVar);
        this.f8131G = dhu.m9447a(new cie(this.f8161j, this.f8162k, this.f8128D));
        this.f8132H = dhu.m9447a(new bhu(this.f8158g));
        this.f8133I = dhu.m9447a(cjz.m11175b());
        this.f8134J = new cap(cjx.m11178b(), this.f8161j);
        this.f8135K = dhu.m9447a(new bxa(this.f8134J, this.f8158g));
        this.f8136L = new bwv(cjx.m11178b(), this.f8161j);
        this.f8137M = dhu.m9447a(new bxb(this.f8136L, this.f8158g));
        this.f8138N = dhu.m9447a(new bxd(this.f8158g));
        this.f8139O = new afq(afkVar, this.f8175x);
        this.f8140P = new agb(this.f8161j);
        afzVar = afy.f8118a;
        this.f8141Q = dhu.m9447a(afzVar);
        this.f8142R = dhu.m9447a(chn.m11301b());
        this.f8143S = dhu.m9447a(new bhk(this.f8169r, cjx.m11178b()));
        this.f8144T = dhu.m9447a(new afo(afkVar, this.f8160i));
        this.f8145U = new ahi(ahfVar);
        this.f8146V = dhu.m9447a(new clk(clhVar, this.f8161j, this.f8162k));
        this.f8147W = new ahm(ahfVar);
        this.f8148X = new akh(this.f8156e, this.f8158g);
        this.f8149Y = dhu.m9447a(cim.m11246b());
        this.f8150Z = dhu.m9447a(cjf.m11214b());
        this.f8152aa = dhu.m9447a(new ahs(this.f8161j));
    }

    @Override // com.google.android.gms.internal.ads.afh
    /* renamed from: a */
    protected final cba mo13372a(cck cckVar) {
        dhz.m9440a(cckVar);
        return new agm(this, cckVar);
    }

    @Override // com.google.android.gms.internal.ads.afh
    /* renamed from: a */
    public final Executor mo13374a() {
        return this.f8154c.mo9430a();
    }

    @Override // com.google.android.gms.internal.ads.afh
    /* renamed from: b */
    public final ScheduledExecutorService mo13371b() {
        return this.f8156e.mo9430a();
    }

    @Override // com.google.android.gms.internal.ads.afh
    /* renamed from: c */
    public final Executor mo13369c() {
        return cjx.m11177c();
    }

    @Override // com.google.android.gms.internal.ads.afh
    /* renamed from: d */
    public final crs mo13367d() {
        return this.f8157f.mo9430a();
    }

    @Override // com.google.android.gms.internal.ads.afh
    /* renamed from: e */
    public final arz mo13365e() {
        return akh.m13024a(this.f8156e.mo9430a(), this.f8158g.mo9430a());
    }

    @Override // com.google.android.gms.internal.ads.afh
    /* renamed from: f */
    public final bfg mo13363f() {
        return this.f8160i.mo9430a();
    }

    @Override // com.google.android.gms.internal.ads.afh
    /* renamed from: g */
    public final ahl mo13361g() {
        return this.f8174w.mo9430a();
    }

    @Override // com.google.android.gms.internal.ads.afh
    /* renamed from: h */
    public final alg mo13359h() {
        return new ags(this);
    }

    @Override // com.google.android.gms.internal.ads.afh
    /* renamed from: i */
    public final ajx mo13357i() {
        return new agl(this);
    }

    @Override // com.google.android.gms.internal.ads.afh
    /* renamed from: j */
    public final cdo mo13355j() {
        return new agq(this);
    }

    @Override // com.google.android.gms.internal.ads.afh
    /* renamed from: k */
    public final awp mo13353k() {
        return new agv(this);
    }

    @Override // com.google.android.gms.internal.ads.afh
    /* renamed from: l */
    public final axn mo13351l() {
        return new agh(this);
    }

    @Override // com.google.android.gms.internal.ads.afh
    /* renamed from: m */
    public final bdx mo13349m() {
        return new ahc(this);
    }

    @Override // com.google.android.gms.internal.ads.afh
    /* renamed from: n */
    public final cgi mo13347n() {
        return new aha(this);
    }

    @Override // com.google.android.gms.internal.ads.afh
    /* renamed from: o */
    public final btu mo13345o() {
        return new ahd(this);
    }

    @Override // com.google.android.gms.internal.ads.afh
    /* renamed from: p */
    public final chr<bcy> mo13343p() {
        return this.f8126B.mo9430a();
    }
}
