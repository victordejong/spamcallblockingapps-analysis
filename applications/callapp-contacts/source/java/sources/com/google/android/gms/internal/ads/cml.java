package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cml.class */
public final class cml {
    /* renamed from: a */
    public static <AppOpenAdRequestComponent extends aqx<AppOpenAd>, AppOpenAd extends anp> cmh<AppOpenAdRequestComponent, AppOpenAd> m17410a(Context context, cqs cqsVar, crn crnVar) {
        if (((Integer) ekb.m14831e().m18571a(C12187aq.f42882eg)).intValue() > 0) {
            crm m17294a = crnVar.m17294a(crf.AppOpen, context, cqsVar, new clo(new clj()));
            return new clk(new cmc(new cly()), new clt(m17294a.f46435a, C13091zd.f50118a), m17294a.f46436b, C13091zd.f50118a);
        }
        return new cly();
    }
}
