package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrh.class */
final class zzbrh implements zzbrt<zzcop> {
    @Override // com.google.android.gms.internal.ads.zzbrt
    public final /* bridge */ /* synthetic */ void zza(zzcop zzcopVar, Map map) {
        JSONObject zza;
        zzcop zzcopVar2 = zzcopVar;
        zzbnv zzM = zzcopVar2.zzM();
        if (zzM == null || (zza = zzM.zza()) == null) {
            zzcopVar2.zze("nativeAdViewSignalsReady", new JSONObject());
        } else {
            zzcopVar2.zze("nativeAdViewSignalsReady", zza);
        }
    }
}
