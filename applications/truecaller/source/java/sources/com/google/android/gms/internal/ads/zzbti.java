package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbti.class */
public final class zzbti implements zzchn {
    public final /* synthetic */ zzbtr zza;
    public final /* synthetic */ zzbts zzb;

    public zzbti(zzbts zzbtsVar, zzbtr zzbtrVar) {
        this.zzb = zzbtsVar;
        this.zza = zzbtrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzchn
    public final void zza() {
        Object obj;
        obj = this.zzb.zza;
        synchronized (obj) {
            this.zzb.zzh = 1;
            zze.zza("Failed loading new engine. Marking new engine destroyable.");
            this.zza.zzc();
        }
    }
}
