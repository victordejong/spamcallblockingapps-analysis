package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbth.class */
public final class zzbth implements zzchp<zzbsn> {
    public final /* synthetic */ zzbtr zza;
    public final /* synthetic */ zzbts zzb;

    public zzbth(zzbts zzbtsVar, zzbtr zzbtrVar) {
        this.zzb = zzbtsVar;
        this.zza = zzbtrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzchp
    public final /* bridge */ /* synthetic */ void zza(zzbsn zzbsnVar) {
        Object obj;
        zzbtr zzbtrVar;
        zzbtr zzbtrVar2;
        zzbtr zzbtrVar3;
        obj = this.zzb.zza;
        synchronized (obj) {
            this.zzb.zzh = 0;
            zzbtrVar = this.zzb.zzg;
            if (zzbtrVar != null) {
                zzbtr zzbtrVar4 = this.zza;
                zzbtrVar2 = this.zzb.zzg;
                if (zzbtrVar4 != zzbtrVar2) {
                    zze.zza("New JS engine is loaded, marking previous one as destroyable.");
                    zzbtrVar3 = this.zzb.zzg;
                    zzbtrVar3.zzc();
                }
            }
            this.zzb.zzg = this.zza;
        }
    }
}
