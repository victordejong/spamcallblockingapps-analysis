package com.google.android.gms.internal.ads;

import java.util.Map;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* renamed from: com.google.android.gms.internal.ads.hh */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hh.class */
final class C12606hh implements AbstractC12607hi<adt> {
    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final /* synthetic */ void mo14250a(adt adtVar, Map map) {
        adt adtVar2 = adtVar;
        if (map.keySet().contains(EventConstants.START)) {
            adtVar2.mo13808B().mo18782h();
        } else if (map.keySet().contains("stop")) {
            adtVar2.mo13808B().mo18781i();
        } else if (!map.keySet().contains("cancel")) {
        } else {
            adtVar2.mo13808B().mo18780j();
        }
    }
}
