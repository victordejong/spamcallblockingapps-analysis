package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdvh.class */
public final class zzdvh {
    public final /* synthetic */ zzdvi zza;
    private final Map<String, String> zzb = new ConcurrentHashMap();

    @VisibleForTesting
    public zzdvh(zzdvi zzdviVar) {
        this.zza = zzdviVar;
    }

    public static /* synthetic */ zzdvh zza(zzdvh zzdvhVar) {
        Map<? extends String, ? extends String> map;
        Map<String, String> map2 = zzdvhVar.zzb;
        map = zzdvhVar.zza.zzc;
        map2.putAll(map);
        return zzdvhVar;
    }

    public final zzdvh zzb(zzfac zzfacVar) {
        this.zzb.put("gqi", zzfacVar.zzb);
        return this;
    }

    public final zzdvh zzc(zzezz zzezzVar) {
        this.zzb.put("aai", zzezzVar.zzw);
        return this;
    }

    public final zzdvh zzd(String str, String str2) {
        this.zzb.put(str, str2);
        return this;
    }

    public final void zze() {
        Executor executor;
        executor = this.zza.zzb;
        executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdvg
            private final zzdvh zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzg();
            }
        });
    }

    public final String zzf() {
        zzdvn zzdvnVar;
        zzdvnVar = this.zza.zza;
        return zzdvnVar.zzc(this.zzb);
    }

    public final /* synthetic */ void zzg() {
        zzdvn zzdvnVar;
        zzdvnVar = this.zza.zza;
        zzdvnVar.zzb(this.zzb);
    }
}
