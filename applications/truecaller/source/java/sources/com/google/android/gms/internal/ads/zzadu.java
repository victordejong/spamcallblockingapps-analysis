package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzadu.class */
public abstract class zzadu implements zzahp {
    public final zzaip zza = new zzaip();

    public final boolean zza() {
        zzaiq zzF = zzF();
        if (zzF.zzt()) {
            return false;
        }
        int zzv = zzv();
        zzn();
        zzo();
        return zzF.zzc(zzv, 0, false) != -1;
    }

    public final boolean zzb() {
        zzaiq zzF = zzF();
        if (zzF.zzt()) {
            return false;
        }
        int zzv = zzv();
        zzn();
        zzo();
        return zzF.zzb(zzv, 0, false) != -1;
    }

    public final boolean zzc() {
        zzaiq zzF = zzF();
        return !zzF.zzt() && zzF.zzf(zzv(), this.zza, 0L).zzb();
    }

    public final boolean zzd() {
        zzaiq zzF = zzF();
        return !zzF.zzt() && zzF.zzf(zzv(), this.zza, 0L).zzg;
    }
}
