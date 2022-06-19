package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdyy.class */
public final class zzdyy {
    public final /* synthetic */ zzdyz zza;
    private final Map<String, String> zzb = new ConcurrentHashMap();

    @VisibleForTesting
    public zzdyy(zzdyz zzdyzVar) {
        this.zza = zzdyzVar;
    }

    public static /* bridge */ /* synthetic */ zzdyy zza(zzdyy zzdyyVar) {
        Map<? extends String, ? extends String> map;
        Map<String, String> map2 = zzdyyVar.zzb;
        map = zzdyyVar.zza.zzc;
        map2.putAll(map);
        return zzdyyVar;
    }

    public final zzdyy zzb(String str, String str2) {
        this.zzb.put(str, str2);
        return this;
    }

    public final zzdyy zzc(zzfdn zzfdnVar) {
        this.zzb.put("aai", zzfdnVar.zzx);
        return this;
    }

    public final zzdyy zzd(zzfdq zzfdqVar) {
        this.zzb.put("gqi", zzfdqVar.zzb);
        return this;
    }

    public final String zze() {
        zzdze zzdzeVar;
        zzdzeVar = this.zza.zza;
        return zzdzeVar.zzb(this.zzb);
    }

    public final void zzf() {
        Executor executor;
        executor = this.zza.zzb;
        executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdyx
            @Override // java.lang.Runnable
            public final void run() {
                zzdyy.this.zzg();
            }
        });
    }

    public final /* synthetic */ void zzg() {
        zzdze zzdzeVar;
        zzdzeVar = this.zza.zza;
        zzdzeVar.zzc(this.zzb);
    }
}
