package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvj.class */
public final class zzbvj implements zzcjt {
    public final /* synthetic */ zzbvs zza;
    public final /* synthetic */ zzbvt zzb;

    public zzbvj(zzbvt zzbvtVar, zzbvs zzbvsVar) {
        this.zzb = zzbvtVar;
        this.zza = zzbvsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjt
    public final void zza() {
        Object obj;
        obj = this.zzb.zza;
        synchronized (obj) {
            this.zzb.zzh = 1;
            zze.zza("Failed loading new engine. Marking new engine destroyable.");
            this.zza.zzb();
        }
    }
}
