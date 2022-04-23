package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ha.class */
final class ha implements hi<adt> {
    @Override // com.google.android.gms.internal.ads.hi
    public final /* synthetic */ void a(adt adtVar, Map map) {
        JSONObject b2;
        adt adtVar2 = adtVar;
        dg N = adtVar2.N();
        if (N == null || (b2 = N.b()) == null) {
            adtVar2.a("nativeAdViewSignalsReady", new JSONObject());
        } else {
            adtVar2.a("nativeAdViewSignalsReady", b2);
        }
    }
}
