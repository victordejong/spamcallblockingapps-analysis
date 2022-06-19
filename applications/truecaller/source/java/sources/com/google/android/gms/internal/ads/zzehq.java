package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehq.class */
public final class zzehq {
    private final zzfbe zza;
    private final zzdtc zzb;
    private final zzdvi zzc;
    private final zzffc zzd;

    public zzehq(zzfbe zzfbeVar, zzdtc zzdtcVar, zzdvi zzdviVar, zzffc zzffcVar) {
        this.zza = zzfbeVar;
        this.zzb = zzdtcVar;
        this.zzc = zzdviVar;
        this.zzd = zzffcVar;
    }

    public final void zza(zzfac zzfacVar, zzezz zzezzVar, int i, zzeeg zzeegVar, long j) {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgi)).booleanValue()) {
            zzffb zza = zzffb.zza("adapter_status");
            zza.zzh(zzfacVar);
            zza.zzi(zzezzVar);
            zza.zzc("adapter_l", String.valueOf(j));
            zza.zzc("sc", Integer.toString(i));
            if (zzeegVar != null) {
                zza.zzc("arec", Integer.toString(zzeegVar.zzb().zza));
                String zza2 = this.zza.zza(zzeegVar.getMessage());
                if (zza2 != null) {
                    zza.zzc("areec", zza2);
                }
            }
            zzdtb zzd = this.zzb.zzd(zzezzVar.zzt);
            if (zzd != null) {
                zza.zzc("ancn", zzd.zza);
                zzbya zzbyaVar = zzd.zzb;
                if (zzbyaVar != null) {
                    zza.zzc("adapter_v", zzbyaVar.toString());
                }
                zzbya zzbyaVar2 = zzd.zzc;
                if (zzbyaVar2 != null) {
                    zza.zzc("adapter_sv", zzbyaVar2.toString());
                }
            }
            this.zzd.zza(zza);
            return;
        }
        zzdvh zzd2 = this.zzc.zzd();
        zzd2.zzb(zzfacVar);
        zzd2.zzc(zzezzVar);
        zzd2.zzd("action", "adapter_status");
        zzd2.zzd("adapter_l", String.valueOf(j));
        zzd2.zzd("sc", Integer.toString(i));
        if (zzeegVar != null) {
            zzd2.zzd("arec", Integer.toString(zzeegVar.zzb().zza));
            String zza3 = this.zza.zza(zzeegVar.getMessage());
            if (zza3 != null) {
                zzd2.zzd("areec", zza3);
            }
        }
        zzdtb zzd3 = this.zzb.zzd(zzezzVar.zzt);
        if (zzd3 != null) {
            zzd2.zzd("ancn", zzd3.zza);
            zzbya zzbyaVar3 = zzd3.zzb;
            if (zzbyaVar3 != null) {
                zzd2.zzd("adapter_v", zzbyaVar3.toString());
            }
            zzbya zzbyaVar4 = zzd3.zzc;
            if (zzbyaVar4 != null) {
                zzd2.zzd("adapter_sv", zzbyaVar4.toString());
            }
        }
        zzd2.zze();
    }
}
