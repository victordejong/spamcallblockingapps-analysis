package com.google.android.gms.internal.ads;

import com.razorpay.AnalyticsConstants;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpp.class */
public final class zzbpp implements zzbpr<zzcml> {
    @Override // com.google.android.gms.internal.ads.zzbpr
    public final /* bridge */ /* synthetic */ void zza(zzcml zzcmlVar, Map map) {
        zzcml zzcmlVar2 = zzcmlVar;
        if (map.keySet().contains(AnalyticsConstants.START)) {
            zzcmlVar2.zzar(true);
        }
        if (map.keySet().contains("stop")) {
            zzcmlVar2.zzar(false);
        }
    }
}
