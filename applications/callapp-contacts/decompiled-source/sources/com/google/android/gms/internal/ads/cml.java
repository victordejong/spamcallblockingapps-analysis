package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cml.class */
public final class cml {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static <AppOpenAdRequestComponent extends aqx<AppOpenAd>, AppOpenAd extends anp> cmh<AppOpenAdRequestComponent, AppOpenAd> a(Context context, cqs cqsVar, crn crnVar) {
        if (((Integer) ekb.e().a(aq.eg)).intValue() <= 0) {
            return new cly();
        }
        crm a2 = crnVar.a(crf.AppOpen, context, cqsVar, new clo(new clj()));
        return new clk(new cmc(new cly()), new clt(a2.f26307a, zd.f28573a), a2.f26308b, zd.f28573a);
    }
}
