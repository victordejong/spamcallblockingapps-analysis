package com.google.android.gms.internal.ads;

import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bic.class */
public final class bic implements dsi<String> {

    /* renamed from: a */
    private final dsv<cpo> f44010a;

    public bic(dsv<cpo> dsvVar) {
        this.f44010a = dsvVar;
    }

    /* renamed from: a */
    public static String m17829a(cpo cpoVar) {
        return (String) dso.m15764b(cpoVar.f46335o.f46299a == cpg.f46309c ? "rewarded_interstitial" : Reporting.AdFormat.REWARDED);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m17829a(this.f44010a.mo14005a());
    }
}
