package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzego.class */
public final class zzego implements zzfif {
    private final zzegl zza;

    public zzego(zzegl zzeglVar) {
        this.zza = zzeglVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzb(zzfhy zzfhyVar, String str, Throwable th) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzeE)).booleanValue() || zzfhy.RENDERER != zzfhyVar || this.zza.zzc() == 0) {
            return;
        }
        this.zza.zze(zzt.zzA().elapsedRealtime() - this.zza.zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzbN(zzfhy zzfhyVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzbO(zzfhy zzfhyVar, String str) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzeE)).booleanValue() || zzfhy.RENDERER != zzfhyVar || this.zza.zzc() == 0) {
            return;
        }
        this.zza.zze(zzt.zzA().elapsedRealtime() - this.zza.zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzc(zzfhy zzfhyVar, String str) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzeE)).booleanValue() || zzfhy.RENDERER != zzfhyVar) {
            return;
        }
        this.zza.zzf(zzt.zzA().elapsedRealtime());
    }
}
