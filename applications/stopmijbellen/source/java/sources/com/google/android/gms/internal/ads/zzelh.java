package com.google.android.gms.internal.ads;

import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzelh.class */
public final class zzelh {
    private final zzfer zza;
    private final zzdwt zzb;
    private final zzdyz zzc;
    private final zzfio zzd;

    public zzelh(zzfer zzferVar, zzdwt zzdwtVar, zzdyz zzdyzVar, zzfio zzfioVar) {
        this.zza = zzferVar;
        this.zzb = zzdwtVar;
        this.zzc = zzdyzVar;
        this.zzd = zzfioVar;
    }

    public final void zza(zzfdq zzfdqVar, zzfdn zzfdnVar, int i, @Nullable zzehx zzehxVar, long j) {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgq)).booleanValue()) {
            zzfin zzb = zzfin.zzb("adapter_status");
            zzb.zzg(zzfdqVar);
            zzb.zzf(zzfdnVar);
            zzb.zza("adapter_l", String.valueOf(j));
            zzb.zza("sc", Integer.toString(i));
            if (zzehxVar != null) {
                zzb.zza("arec", Integer.toString(zzehxVar.zzb().zza));
                String zza = this.zza.zza(zzehxVar.getMessage());
                if (zza != null) {
                    zzb.zza("areec", zza);
                }
            }
            zzdws zzb2 = this.zzb.zzb(zzfdnVar.zzu);
            if (zzb2 != null) {
                zzb.zza("ancn", zzb2.zza);
                zzcab zzcabVar = zzb2.zzb;
                if (zzcabVar != null) {
                    zzb.zza("adapter_v", zzcabVar.toString());
                }
                zzcab zzcabVar2 = zzb2.zzc;
                if (zzcabVar2 != null) {
                    zzb.zza("adapter_sv", zzcabVar2.toString());
                }
            }
            this.zzd.zzb(zzb);
            return;
        }
        zzdyy zza2 = this.zzc.zza();
        zza2.zzd(zzfdqVar);
        zza2.zzc(zzfdnVar);
        zza2.zzb("action", "adapter_status");
        zza2.zzb("adapter_l", String.valueOf(j));
        zza2.zzb("sc", Integer.toString(i));
        if (zzehxVar != null) {
            zza2.zzb("arec", Integer.toString(zzehxVar.zzb().zza));
            String zza3 = this.zza.zza(zzehxVar.getMessage());
            if (zza3 != null) {
                zza2.zzb("areec", zza3);
            }
        }
        zzdws zzb3 = this.zzb.zzb(zzfdnVar.zzu);
        if (zzb3 != null) {
            zza2.zzb("ancn", zzb3.zza);
            zzcab zzcabVar3 = zzb3.zzb;
            if (zzcabVar3 != null) {
                zza2.zzb("adapter_v", zzcabVar3.toString());
            }
            zzcab zzcabVar4 = zzb3.zzc;
            if (zzcabVar4 != null) {
                zza2.zzb("adapter_sv", zzcabVar4.toString());
            }
        }
        zza2.zzf();
    }
}
