package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vq0.class */
final class vq0 extends pb2 {

    /* renamed from: a */
    private final xc2 f31291a;

    /* renamed from: b */
    private final fs0 f31292b;

    /* renamed from: d */
    private final pj3<Integer> f31294d;

    /* renamed from: e */
    private final pj3<mb2> f31295e;

    /* renamed from: f */
    private final pj3<String> f31296f;

    /* renamed from: g */
    private final pj3<vb2> f31297g;

    /* renamed from: h */
    private final pj3<cc2> f31298h;

    /* renamed from: i */
    private final pj3<gc2> f31299i;

    /* renamed from: j */
    private final pj3<nc2> f31300j;

    /* renamed from: k */
    private final pj3<uc2> f31301k;

    /* renamed from: m */
    private final pj3<Boolean> f31303m;

    /* renamed from: n */
    private final pj3<jd2> f31304n;

    /* renamed from: o */
    private final pj3<String> f31305o;

    /* renamed from: p */
    private final pj3<zm1> f31306p;

    /* renamed from: q */
    private final pj3<zm1> f31307q;

    /* renamed from: r */
    private final pj3<zm1> f31308r;

    /* renamed from: s */
    private final pj3<zm1> f31309s;

    /* renamed from: t */
    private final pj3<Map<zzfem, zm1>> f31310t;

    /* renamed from: u */
    private final pj3<Set<ja1<zn2>>> f31311u;

    /* renamed from: v */
    private final pj3<Set<ja1<zn2>>> f31312v;

    /* renamed from: w */
    private final pj3 f31313w;

    /* renamed from: x */
    private final pj3<yn2> f31314x;

    /* renamed from: c */
    private final vq0 f31293c = this;

    /* renamed from: l */
    private final pj3<nd2> f31302l = new pd2(um2.m10301a());

    public /* synthetic */ vq0(fs0 fs0Var, xc2 xc2Var, wr0 wr0Var) {
        ht0 ht0Var;
        pj3 pj3Var;
        pj3 pj3Var2;
        kq0 kq0Var;
        pj3 pj3Var3;
        ht0 ht0Var2;
        pj3 pj3Var4;
        pj3 pj3Var5;
        pj3 pj3Var6;
        bt0 bt0Var;
        pj3 pj3Var7;
        dt0 dt0Var;
        ft0 ft0Var;
        pj3 pj3Var8;
        pj3 pj3Var9;
        pj3 pj3Var10;
        jt0 jt0Var;
        pj3 pj3Var11;
        pj3 pj3Var12;
        pj3 pj3Var13;
        this.f31292b = fs0Var;
        this.f31291a = xc2Var;
        zc2 zc2Var = new zc2(xc2Var);
        this.f31294d = zc2Var;
        ht0Var = gt0.f23696a;
        pj3Var = fs0Var.f23084i;
        pj3Var2 = fs0Var.f23096o;
        this.f31295e = new ob2(ht0Var, pj3Var, pj3Var2, um2.m10301a(), zc2Var);
        yc2 yc2Var = new yc2(xc2Var);
        this.f31296f = yc2Var;
        kq0Var = iq0.f24391a;
        pj3Var3 = fs0Var.f23084i;
        this.f31297g = new xb2(kq0Var, pj3Var3, yc2Var, um2.m10301a());
        ht0Var2 = gt0.f23696a;
        pj3Var4 = fs0Var.f23084i;
        pj3Var5 = fs0Var.f23068Z;
        pj3Var6 = fs0Var.f23096o;
        this.f31298h = new ec2(ht0Var2, zc2Var, pj3Var4, pj3Var5, pj3Var6, um2.m10301a(), yc2Var);
        bt0Var = at0.f20116a;
        um2 m10301a = um2.m10301a();
        pj3Var7 = fs0Var.f23084i;
        this.f31299i = new ic2(bt0Var, m10301a, pj3Var7);
        dt0Var = ct0.f21371a;
        this.f31300j = new pc2(dt0Var, um2.m10301a(), yc2Var);
        ft0Var = et0.f22531a;
        pj3Var8 = fs0Var.f23096o;
        pj3Var9 = fs0Var.f23084i;
        this.f31301k = new wc2(ft0Var, pj3Var8, pj3Var9);
        bd2 bd2Var = new bd2(xc2Var);
        this.f31303m = bd2Var;
        pj3Var10 = fs0Var.f23068Z;
        jt0Var = it0.f24428a;
        um2 m10301a2 = um2.m10301a();
        pj3Var11 = fs0Var.f23096o;
        this.f31304n = new ld2(pj3Var10, bd2Var, jt0Var, m10301a2, yc2Var, pj3Var11);
        cd2 cd2Var = new cd2(xc2Var);
        this.f31305o = cd2Var;
        pj3<zm1> m16584a = aj3.m16584a(sm1.m10986a());
        this.f31306p = m16584a;
        pj3<zm1> m16584a2 = aj3.m16584a(qm1.m11851a());
        this.f31307q = m16584a2;
        pj3<zm1> m16584a3 = aj3.m16584a(um1.m10302a());
        this.f31308r = m16584a3;
        pj3<zm1> m16584a4 = aj3.m16584a(wm1.m9550a());
        this.f31309s = m16584a4;
        fj3 m14926c = gj3.m14926c(4);
        m14926c.m15179b(zzfem.GMS_SIGNALS, m16584a);
        m14926c.m15179b(zzfem.BUILD_URL, m16584a2);
        m14926c.m15179b(zzfem.HTTP, m16584a3);
        m14926c.m15179b(zzfem.PRE_PROCESS, m16584a4);
        gj3 m15178c = m14926c.m15178c();
        this.f31310t = m15178c;
        pj3Var12 = fs0Var.f23084i;
        pj3<Set<ja1<zn2>>> m16584a5 = aj3.m16584a(new xm1(cd2Var, pj3Var12, um2.m10301a(), m15178c));
        this.f31311u = m16584a5;
        mj3 m12896a = nj3.m12896a(0, 1);
        m12896a.m13177b(m16584a5);
        nj3 m13176c = m12896a.m13176c();
        this.f31312v = m13176c;
        bo2 bo2Var = new bo2(m13176c);
        this.f31313w = bo2Var;
        um2 m10301a3 = um2.m10301a();
        pj3Var13 = fs0Var.f23096o;
        this.f31314x = aj3.m16584a(new ao2(m10301a3, pj3Var13, bo2Var));
    }

    /* renamed from: d */
    private final rc2 m9891d() {
        C7048uv c7048uv = new C7048uv();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        List<String> m9281d = this.f31291a.m9281d();
        kj3.m13879b(m9281d);
        return new rc2(c7048uv, s03Var, m9281d, null);
    }

    /* renamed from: e */
    private final sb2 m9890e() {
        gh0 gh0Var = new gh0();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        String m9283b = this.f31291a.m9283b();
        kj3.m13879b(m9283b);
        return new sb2(gh0Var, s03Var, m9283b, this.f31291a.m9282c(), this.f31291a.m9279f(), null);
    }

    @Override // com.google.android.gms.internal.ads.pb2
    /* renamed from: a */
    public final ab2<JSONObject> mo9894a() {
        pj3 pj3Var;
        pj3 pj3Var2;
        vp0 vp0Var;
        pj3 pj3Var3;
        vp0 vp0Var2;
        pj3 pj3Var4;
        pj3 pj3Var5;
        pj3 pj3Var6;
        vp0 vp0Var3;
        vp0 vp0Var4;
        vp0 vp0Var5;
        pj3 pj3Var7;
        pj3 pj3Var8;
        pj3 pj3Var9;
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        dh0 dh0Var = new dh0();
        kj3.m13879b(s03Var);
        String m9284a = this.f31291a.m9284a();
        kj3.m13879b(m9284a);
        nc2 nc2Var = new nc2(dh0Var, s03Var, m9284a, null);
        pj3Var = this.f31292b.f23096o;
        f92 f92Var = new f92(nc2Var, 0L, (ScheduledExecutorService) pj3Var.mo8141b());
        ob0 ob0Var = new ob0();
        pj3Var2 = this.f31292b.f23096o;
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) pj3Var2.mo8141b();
        vp0Var = this.f31292b.f23070b;
        Context m9920a = vp0Var.m9920a();
        kj3.m13879b(m9920a);
        uc2 uc2Var = new uc2(ob0Var, scheduledExecutorService, m9920a, null);
        pj3Var3 = this.f31292b.f23096o;
        f92 f92Var2 = new f92(uc2Var, ((Long) C7192yr.m8714c().m14263c(C6679kw.f25841y2)).longValue(), (ScheduledExecutorService) pj3Var3.mo8141b());
        gh0 gh0Var = new gh0();
        vp0Var2 = this.f31292b.f23070b;
        Context m9920a2 = vp0Var2.m9920a();
        kj3.m13879b(m9920a2);
        pj3Var4 = this.f31292b.f23096o;
        kj3.m13879b(s03Var);
        mb2 mb2Var = new mb2(gh0Var, m9920a2, (ScheduledExecutorService) pj3Var4.mo8141b(), s03Var, this.f31291a.m9279f(), null);
        pj3Var5 = this.f31292b.f23096o;
        f92 f92Var3 = new f92(mb2Var, 0L, (ScheduledExecutorService) pj3Var5.mo8141b());
        kj3.m13879b(s03Var);
        nd2 nd2Var = new nd2(s03Var);
        pj3Var6 = this.f31292b.f23096o;
        f92 f92Var4 = new f92(nd2Var, 0L, (ScheduledExecutorService) pj3Var6.mo8141b());
        wa2<? extends va2<JSONObject>> m15276a = fd2.m15276a();
        vp0Var3 = this.f31292b.f23070b;
        Context m9920a3 = vp0Var3.m9920a();
        kj3.m13879b(m9920a3);
        String m9284a2 = this.f31291a.m9284a();
        kj3.m13879b(m9284a2);
        kj3.m13879b(s03Var);
        vb2 vb2Var = new vb2(null, m9920a3, m9284a2, s03Var);
        C6408dm c6408dm = new C6408dm();
        kj3.m13879b(s03Var);
        vp0Var4 = this.f31292b.f23070b;
        Context m9920a4 = vp0Var4.m9920a();
        kj3.m13879b(m9920a4);
        gc2 gc2Var = new gc2(c6408dm, s03Var, m9920a4, null);
        rc2 m9891d = m9891d();
        sb2 m9890e = m9890e();
        gh0 gh0Var2 = new gh0();
        int m9279f = this.f31291a.m9279f();
        vp0Var5 = this.f31292b.f23070b;
        Context m9920a5 = vp0Var5.m9920a();
        kj3.m13879b(m9920a5);
        pj3Var7 = this.f31292b.f23068Z;
        ph0 ph0Var = (ph0) pj3Var7.mo8141b();
        pj3Var8 = this.f31292b.f23096o;
        ScheduledExecutorService scheduledExecutorService2 = (ScheduledExecutorService) pj3Var8.mo8141b();
        kj3.m13879b(s03Var);
        String m9284a3 = this.f31291a.m9284a();
        kj3.m13879b(m9284a3);
        pj3Var9 = this.f31292b.f23115x0;
        return new ab2<>(s03Var, zzfot.zzi(f92Var, f92Var2, f92Var3, f92Var4, m15276a, vb2Var, gc2Var, m9891d, m9890e, new cc2(gh0Var2, m9279f, m9920a5, ph0Var, scheduledExecutorService2, s03Var, m9284a3, null), (wa2) pj3Var9.mo8141b()));
    }

    @Override // com.google.android.gms.internal.ads.pb2
    /* renamed from: b */
    public final ab2<JSONObject> mo9893b() {
        pj3 pj3Var;
        pj3 pj3Var2;
        dh0 dh0Var = new dh0();
        eh0 eh0Var = new eh0();
        pj3Var = this.f31292b.f23115x0;
        Object mo8141b = pj3Var.mo8141b();
        sb2 m9890e = m9890e();
        rc2 m9891d = m9891d();
        vi3 m16583c = aj3.m16583c(this.f31295e);
        vi3 m16583c2 = aj3.m16583c(this.f31297g);
        vi3 m16583c3 = aj3.m16583c(this.f31298h);
        vi3 m16583c4 = aj3.m16583c(this.f31299i);
        vi3 m16583c5 = aj3.m16583c(this.f31300j);
        vi3 m16583c6 = aj3.m16583c(this.f31301k);
        vi3 m16583c7 = aj3.m16583c(this.f31302l);
        vi3 m16583c8 = aj3.m16583c(this.f31304n);
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        pj3Var2 = this.f31292b.f23096o;
        return gd2.m14961a(dh0Var, eh0Var, mo8141b, m9890e, m9891d, m16583c, m16583c2, m16583c3, m16583c4, m16583c5, m16583c6, m16583c7, m16583c8, s03Var, (ScheduledExecutorService) pj3Var2.mo8141b());
    }

    @Override // com.google.android.gms.internal.ads.pb2
    /* renamed from: c */
    public final yn2 mo9892c() {
        return this.f31314x.mo8141b();
    }
}
