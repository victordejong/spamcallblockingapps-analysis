package com.google.android.gms.internal.ads;

import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bic.class */
public final class bic implements dsi<String> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cpo> f24494a;

    public bic(dsv<cpo> dsvVar) {
        this.f24494a = dsvVar;
    }

    public static String a(cpo cpoVar) {
        return (String) dso.b(cpoVar.o.f26202a == cpg.f26212c ? "rewarded_interstitial" : Reporting.AdFormat.REWARDED);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f24494a.a());
    }
}
