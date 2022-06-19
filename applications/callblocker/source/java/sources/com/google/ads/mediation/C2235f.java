package com.google.ads.mediation;

import android.os.Bundle;
import com.google.android.gms.ads.C2298i;
import com.google.android.gms.ads.reward.C2391a;
import com.google.android.gms.ads.reward.mediation.AbstractC2395a;
/* renamed from: com.google.ads.mediation.f */
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/f.class */
final class C2235f extends C2391a {

    /* renamed from: a */
    private final /* synthetic */ AbstractAdViewAdapter f6526a;

    public C2235f(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.f6526a = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.reward.C2391a
    /* renamed from: k_ */
    public final void mo11372k_() {
        C2298i c2298i;
        AbstractC2395a abstractC2395a;
        C2298i c2298i2;
        AbstractC2395a abstractC2395a2;
        c2298i = this.f6526a.zzma;
        if (c2298i != null) {
            abstractC2395a = this.f6526a.zzmb;
            if (abstractC2395a == null) {
                return;
            }
            c2298i2 = this.f6526a.zzma;
            Bundle m14803c = c2298i2.m14803c();
            abstractC2395a2 = this.f6526a.zzmb;
            abstractC2395a2.mo7246a(m14803c);
        }
    }
}
