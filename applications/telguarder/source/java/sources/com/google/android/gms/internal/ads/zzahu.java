package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzahu.class */
final class zzahu implements zzaif<zzbeb> {
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbeb zzbebVar, Map map) {
        JSONObject zztk;
        zzbeb zzbebVar2 = zzbebVar;
        zzaef zzadi = zzbebVar2.zzadi();
        if (zzadi == null || (zztk = zzadi.zztk()) == null) {
            zzbebVar2.zza("nativeAdViewSignalsReady", new JSONObject());
        } else {
            zzbebVar2.zza("nativeAdViewSignalsReady", zztk);
        }
    }
}
