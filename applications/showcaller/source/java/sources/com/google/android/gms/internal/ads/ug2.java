package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ug2.class */
public final class ug2 {
    /* renamed from: a */
    public static sg2<zv0, fw0> m10330a(Context context, el2 el2Var, vl2 vl2Var) {
        return m10328c(context, el2Var, vl2Var);
    }

    /* renamed from: b */
    public static sg2<kw0, qw0> m10329b(Context context, el2 el2Var, vl2 vl2Var) {
        return m10328c(context, el2Var, vl2Var);
    }

    /* renamed from: c */
    private static <AppOpenAdRequestComponent extends g21<AppOpenAd>, AppOpenAd extends xy0> sg2<AppOpenAdRequestComponent, AppOpenAd> m10328c(Context context, el2 el2Var, vl2 vl2Var) {
        jh0 mo17954m = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25480F4)).booleanValue() ? C5667s.m18156h().m12230p().mo17954m() : C5667s.m18156h().m12230p().mo17953n();
        boolean z = false;
        if (mo17954m != null) {
            z = false;
            if (mo17954m.m14118i()) {
                z = true;
            }
        }
        if (((Integer) C7192yr.m8714c().m14263c(C6679kw.f25608V4)).intValue() > 0) {
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25472E4)).booleanValue() || z) {
                ul2 m9936a = vl2Var.m9936a(zzfcg.AppOpen, context, el2Var, new vf2(new sf2()));
                ig2 ig2Var = new ig2(new hg2());
                jl2 jl2Var = m9936a.f30661a;
                s03 s03Var = qi0.f28495a;
                return new xf2(ig2Var, new eg2(jl2Var, s03Var), m9936a.f30662b, m9936a.f30661a.mo13869a().f33948k, s03Var);
            }
        }
        return new hg2();
    }
}
