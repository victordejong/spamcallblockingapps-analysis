package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvi.class */
public final class zzbvi implements zzcjv<zzbuo> {
    public final /* synthetic */ zzbvs zza;
    public final /* synthetic */ zzbvt zzb;

    public zzbvi(zzbvt zzbvtVar, zzbvs zzbvsVar) {
        this.zzb = zzbvtVar;
        this.zza = zzbvsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final /* bridge */ /* synthetic */ void zza(zzbuo zzbuoVar) {
        Object obj;
        zzbvs zzbvsVar;
        zzbvs zzbvsVar2;
        zzbvs zzbvsVar3;
        obj = this.zzb.zza;
        synchronized (obj) {
            this.zzb.zzh = 0;
            zzbvsVar = this.zzb.zzg;
            if (zzbvsVar != null) {
                zzbvs zzbvsVar4 = this.zza;
                zzbvsVar2 = this.zzb.zzg;
                if (zzbvsVar4 != zzbvsVar2) {
                    zze.zza("New JS engine is loaded, marking previous one as destroyable.");
                    zzbvsVar3 = this.zzb.zzg;
                    zzbvsVar3.zzb();
                }
            }
            this.zzb.zzg = this.zza;
        }
    }
}
