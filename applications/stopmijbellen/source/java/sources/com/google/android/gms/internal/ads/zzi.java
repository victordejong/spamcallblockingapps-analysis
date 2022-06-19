package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzi.class */
public abstract class zzi implements zzbw {
    public final zzcc zza = new zzcc();

    public final boolean zza() {
        zzcd zzm = zzm();
        if (zzm.zzo()) {
            return false;
        }
        int zzg = zzg();
        zzi();
        zzo();
        return zzm.zzj(zzg, 0, false) != -1;
    }

    public final boolean zzb() {
        zzcd zzm = zzm();
        if (zzm.zzo()) {
            return false;
        }
        int zzg = zzg();
        zzi();
        zzo();
        return zzm.zzk(zzg, 0, false) != -1;
    }

    public final boolean zzc() {
        zzcd zzm = zzm();
        return !zzm.zzo() && zzm.zze(zzg(), this.zza, 0L).zzb();
    }

    public final boolean zzd() {
        zzcd zzm = zzm();
        return !zzm.zzo() && zzm.zze(zzg(), this.zza, 0L).zzh;
    }
}
