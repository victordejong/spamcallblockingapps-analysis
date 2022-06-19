package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbri.class */
final class zzbri implements zzbrt<zzcop> {
    @Override // com.google.android.gms.internal.ads.zzbrt
    public final /* bridge */ /* synthetic */ void zza(zzcop zzcopVar, Map map) {
        JSONObject zzb;
        zzcop zzcopVar2 = zzcopVar;
        zzbnv zzM = zzcopVar2.zzM();
        if (zzM == null || (zzb = zzM.zzb()) == null) {
            zzcopVar2.zze("nativeClickMetaReady", new JSONObject());
        } else {
            zzcopVar2.zze("nativeClickMetaReady", zzb);
        }
    }
}
