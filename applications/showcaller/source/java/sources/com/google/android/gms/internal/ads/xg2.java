package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xg2.class */
public final class xg2 implements cj3<sg2<kk1, fk1>> {

    /* renamed from: a */
    private final pj3<Context> f32045a;

    /* renamed from: b */
    private final pj3<el2> f32046b;

    /* renamed from: c */
    private final pj3<vl2> f32047c;

    public xg2(pj3<Context> pj3Var, pj3<el2> pj3Var2, pj3<vl2> pj3Var3) {
        this.f32045a = pj3Var;
        this.f32046b = pj3Var2;
        this.f32047c = pj3Var3;
    }

    /* renamed from: a */
    public final sg2<kk1, fk1> mo8141b() {
        xf2 xf2Var;
        Context mo8141b = this.f32045a.mo8141b();
        el2 mo8141b2 = this.f32046b.mo8141b();
        vl2 mo8141b3 = this.f32047c.mo8141b();
        jh0 mo17954m = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25480F4)).booleanValue() ? C5667s.m18156h().m12230p().mo17954m() : C5667s.m18156h().m12230p().mo17953n();
        boolean z = false;
        if (mo17954m != null) {
            z = false;
            if (mo17954m.m14118i()) {
                z = true;
            }
        }
        if (((Integer) C7192yr.m8714c().m14263c(C6679kw.f25496H4)).intValue() > 0) {
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25472E4)).booleanValue() || z) {
                ul2 m9936a = mo8141b3.m9936a(zzfcg.Rewarded, mo8141b, mo8141b2, new vf2(new sf2()));
                ig2 ig2Var = new ig2(new hg2());
                jl2 jl2Var = m9936a.f30661a;
                s03 s03Var = qi0.f28495a;
                xf2Var = new xf2(ig2Var, new eg2(jl2Var, s03Var), m9936a.f30662b, m9936a.f30661a.mo13869a().f33948k, s03Var);
                return xf2Var;
            }
        }
        xf2Var = new hg2();
        return xf2Var;
    }
}
