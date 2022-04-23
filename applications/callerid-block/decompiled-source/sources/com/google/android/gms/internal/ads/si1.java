package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/si1.class */
public final class si1 {
    /* renamed from: a */
    public static qi1<w00, c10> m5689a(Context context, zm1 zm1Var, qn1 qn1Var) {
        return m5687c(context, zm1Var, qn1Var);
    }

    /* renamed from: b */
    public static qi1<i10, n10> m5688b(Context context, zm1 zm1Var, qn1 qn1Var) {
        return m5687c(context, zm1Var, qn1Var);
    }

    /* renamed from: c */
    private static <AppOpenAdRequestComponent extends a70<AppOpenAd>, AppOpenAd extends u30> qi1<AppOpenAdRequestComponent, AppOpenAd> m5687c(Context context, zm1 zm1Var, qn1 qn1Var) {
        if (((Integer) C1674c.m7906c().m6878b(C1842m3.f7431i4)).intValue() <= 0) {
            return new fi1();
        }
        pn1 a = qn1Var.m6087a(zzdsv.AppOpen, context, zm1Var, new uh1(new qh1()));
        gi1 gi1Var = new gi1(new fi1());
        dn1 dn1Var = a.f8139a;
        sz1 sz1Var = C2073zo.f9410a;
        return new wh1(gi1Var, new ci1(dn1Var, sz1Var), a.f8140b, sz1Var);
    }
}
