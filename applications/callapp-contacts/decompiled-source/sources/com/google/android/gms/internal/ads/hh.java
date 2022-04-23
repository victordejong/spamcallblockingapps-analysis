package com.google.android.gms.internal.ads;

import java.util.Map;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hh.class */
final class hh implements hi<adt> {
    @Override // com.google.android.gms.internal.ads.hi
    public final /* synthetic */ void a(adt adtVar, Map map) {
        adt adtVar2 = adtVar;
        if (map.keySet().contains(EventConstants.START)) {
            adtVar2.B().h();
        } else if (map.keySet().contains("stop")) {
            adtVar2.B().i();
        } else if (map.keySet().contains("cancel")) {
            adtVar2.B().j();
        }
    }
}
