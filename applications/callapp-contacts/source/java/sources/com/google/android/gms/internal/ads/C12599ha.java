package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.ha */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ha.class */
final class C12599ha implements AbstractC12607hi<adt> {
    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final /* synthetic */ void mo14250a(adt adtVar, Map map) {
        JSONObject mo16779b;
        adt adtVar2 = adtVar;
        AbstractC12330dg mo13796N = adtVar2.mo13796N();
        if (mo13796N == null || (mo16779b = mo13796N.mo16779b()) == null) {
            adtVar2.mo13769a("nativeAdViewSignalsReady", new JSONObject());
        } else {
            adtVar2.mo13769a("nativeAdViewSignalsReady", mo16779b);
        }
    }
}
