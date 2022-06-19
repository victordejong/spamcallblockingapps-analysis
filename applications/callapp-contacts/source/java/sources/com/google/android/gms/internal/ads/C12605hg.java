package com.google.android.gms.internal.ads;

import java.util.Map;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* renamed from: com.google.android.gms.internal.ads.hg */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hg.class */
final class C12605hg implements AbstractC12607hi<adt> {
    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final /* synthetic */ void mo14250a(adt adtVar, Map map) {
        adt adtVar2 = adtVar;
        if (map.keySet().contains(EventConstants.START)) {
            adtVar2.mo13747e(true);
        }
        if (map.keySet().contains("stop")) {
            adtVar2.mo13747e(false);
        }
    }
}
