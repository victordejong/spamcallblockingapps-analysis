package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdoz.class */
public final class zzdoz implements zzbrt<Object> {
    private final WeakReference<zzdpc> zza;

    public /* synthetic */ zzdoz(zzdpc zzdpcVar, zzdoy zzdoyVar) {
        this.zza = new WeakReference<>(zzdpcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbrt
    public final void zza(Object obj, Map<String, String> map) {
        zzdep zzdepVar;
        zzdmb zzdmbVar;
        zzdpc zzdpcVar = this.zza.get();
        if (zzdpcVar == null) {
            return;
        }
        zzdepVar = zzdpcVar.zzh;
        zzdepVar.onAdClicked();
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzhm)).booleanValue()) {
            return;
        }
        zzdmbVar = zzdpcVar.zzi;
        zzdmbVar.zzq();
    }
}
