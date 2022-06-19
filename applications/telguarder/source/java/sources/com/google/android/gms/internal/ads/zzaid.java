package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaid.class */
final class zzaid implements zzaif<zzbeb> {
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbeb zzbebVar, Map map) {
        zzbeb zzbebVar2 = zzbebVar;
        if (map.keySet().contains("start")) {
            zzbebVar2.zzba(true);
        }
        if (map.keySet().contains("stop")) {
            zzbebVar2.zzba(false);
        }
    }
}
