package com.google.android.gms.internal.ads;

import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcuy.class */
public final class zzcuy {
    private final zzckn zzdib;
    private final zzdrz zzdic;
    private final zzcim zzgkk;
    private final zzdoc zzglj;

    public zzcuy(zzdoc zzdocVar, zzcim zzcimVar, zzckn zzcknVar, zzdrz zzdrzVar) {
        this.zzglj = zzdocVar;
        this.zzgkk = zzcimVar;
        this.zzdib = zzcknVar;
        this.zzdic = zzdrzVar;
    }

    public final void zza(zzdnb zzdnbVar, zzdmw zzdmwVar, int i, @Nullable zzcrn zzcrnVar, long j) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue()) {
            zzdsa zzu = zzdsa.zzgx("adapter_status").zzb(zzdnbVar).zzf(zzdmwVar).zzu("adapter_l", String.valueOf(j)).zzu("sc", Integer.toString(i));
            if (zzcrnVar != null) {
                zzu.zzu("arec", Integer.toString(zzcrnVar.zzary().errorCode));
                String zzgt = this.zzglj.zzgt(zzcrnVar.getMessage());
                if (zzgt != null) {
                    zzu.zzu("areec", zzgt);
                }
            }
            zzcij zzi = this.zzgkk.zzi(zzdmwVar.zzhjh);
            if (zzi != null) {
                zzu.zzu("ancn", zzi.zzdit);
                if (zzi.zzgkg != null) {
                    zzu.zzu("adapter_v", zzi.zzgkg.toString());
                }
                if (zzi.zzgkh != null) {
                    zzu.zzu("adapter_sv", zzi.zzgkh.toString());
                }
            }
            this.zzdic.zzb(zzu);
            return;
        }
        zzckq zzr = this.zzdib.zzaqr().zza(zzdnbVar).zzc(zzdmwVar).zzr("action", "adapter_status").zzr("adapter_l", String.valueOf(j));
        zzr.zzr("sc", Integer.toString(i));
        if (zzcrnVar != null) {
            zzr.zzr("arec", Integer.toString(zzcrnVar.zzary().errorCode));
            String zzgt2 = this.zzglj.zzgt(zzcrnVar.getMessage());
            if (zzgt2 != null) {
                zzr.zzr("areec", zzgt2);
            }
        }
        zzcij zzi2 = this.zzgkk.zzi(zzdmwVar.zzhjh);
        if (zzi2 != null) {
            zzr.zzr("ancn", zzi2.zzdit);
            if (zzi2.zzgkg != null) {
                zzr.zzr("adapter_v", zzi2.zzgkg.toString());
            }
            if (zzi2.zzgkh != null) {
                zzr.zzr("adapter_sv", zzi2.zzgkh.toString());
            }
        }
        zzr.zzaqt();
    }
}
