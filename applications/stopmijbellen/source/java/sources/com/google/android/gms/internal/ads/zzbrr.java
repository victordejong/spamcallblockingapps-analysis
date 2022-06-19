package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrr.class */
final class zzbrr implements zzbrt<zzcop> {
    @Override // com.google.android.gms.internal.ads.zzbrt
    public final /* bridge */ /* synthetic */ void zza(zzcop zzcopVar, Map map) {
        zzcop zzcopVar2 = zzcopVar;
        if (map.keySet().contains("start")) {
            zzcopVar2.zzau(true);
        }
        if (map.keySet().contains("stop")) {
            zzcopVar2.zzau(false);
        }
    }
}
