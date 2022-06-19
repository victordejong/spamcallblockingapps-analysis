package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaia.class */
final class zzaia implements zzaif<zzbeb> {
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbeb zzbebVar, Map map) {
        zzbeb zzbebVar2 = zzbebVar;
        if (map.keySet().contains("start")) {
            zzbebVar2.zzacx().zzadw();
        } else if (map.keySet().contains("stop")) {
            zzbebVar2.zzacx().zzadx();
        } else if (!map.keySet().contains("cancel")) {
        } else {
            zzbebVar2.zzacx().zzady();
        }
    }
}
