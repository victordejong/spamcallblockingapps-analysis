package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeft.class */
public final class zzeft implements zzdlk {
    private final String zzc;
    private final zzfio zzd;
    private boolean zza = false;
    private boolean zzb = false;
    private final zzg zze = zzt.zzo().zzh();

    public zzeft(String str, zzfio zzfioVar) {
        this.zzc = str;
        this.zzd = zzfioVar;
    }

    private final zzfin zzf(String str) {
        String str2 = this.zze.zzL() ? "" : this.zzc;
        zzfin zzb = zzfin.zzb(str);
        zzb.zza("tms", Long.toString(zzt.zzA().elapsedRealtime(), 10));
        zzb.zza("tid", str2);
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdlk
    public final void zza(String str, String str2) {
        zzfio zzfioVar = this.zzd;
        zzfin zzf = zzf("adapter_init_finished");
        zzf.zza("ancn", str);
        zzf.zza("rqe", str2);
        zzfioVar.zzb(zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzdlk
    public final void zzb(String str) {
        zzfio zzfioVar = this.zzd;
        zzfin zzf = zzf("adapter_init_started");
        zzf.zza("ancn", str);
        zzfioVar.zzb(zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzdlk
    public final void zzc(String str) {
        zzfio zzfioVar = this.zzd;
        zzfin zzf = zzf("adapter_init_finished");
        zzf.zza("ancn", str);
        zzfioVar.zzb(zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzdlk
    public final void zzd() {
        synchronized (this) {
            if (!this.zzb) {
                this.zzd.zzb(zzf("init_finished"));
                this.zzb = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdlk
    public final void zze() {
        synchronized (this) {
            if (!this.zza) {
                this.zzd.zzb(zzf("init_started"));
                this.zza = true;
            }
        }
    }
}
