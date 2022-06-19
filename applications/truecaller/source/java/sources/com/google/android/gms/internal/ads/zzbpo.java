package com.google.android.gms.internal.ads;

import com.razorpay.AnalyticsConstants;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpo.class */
public final class zzbpo implements zzbpr<zzcml> {
    @Override // com.google.android.gms.internal.ads.zzbpr
    public final /* bridge */ /* synthetic */ void zza(zzcml zzcmlVar, Map map) {
        zzcml zzcmlVar2 = zzcmlVar;
        if (map.keySet().contains(AnalyticsConstants.START)) {
            zzcmlVar2.zzR().zzk();
        } else if (map.keySet().contains("stop")) {
            zzcmlVar2.zzR().zzl();
        } else if (!map.keySet().contains("cancel")) {
        } else {
            zzcmlVar2.zzR().zzm();
        }
    }
}
