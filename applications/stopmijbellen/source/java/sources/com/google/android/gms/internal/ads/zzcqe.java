package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqe.class */
public final class zzcqe {
    public final int zza;
    public final int zzb;
    private final int zzc;

    private zzcqe(int i, int i2, int i3) {
        this.zzc = i;
        this.zzb = i2;
        this.zza = i3;
    }

    public static zzcqe zza() {
        return new zzcqe(0, 0, 0);
    }

    public static zzcqe zzb(int i, int i2) {
        return new zzcqe(1, i, i2);
    }

    public static zzcqe zzc(zzbfi zzbfiVar) {
        return zzbfiVar.zzd ? new zzcqe(3, 0, 0) : zzbfiVar.zzi ? new zzcqe(2, 0, 0) : zzbfiVar.zzh ? zza() : zzb(zzbfiVar.zzf, zzbfiVar.zzc);
    }

    public static zzcqe zzd() {
        return new zzcqe(5, 0, 0);
    }

    public static zzcqe zze() {
        return new zzcqe(4, 0, 0);
    }

    public final boolean zzf() {
        return this.zzc == 0;
    }

    public final boolean zzg() {
        return this.zzc == 2;
    }

    public final boolean zzh() {
        return this.zzc == 5;
    }

    public final boolean zzi() {
        return this.zzc == 3;
    }

    public final boolean zzj() {
        return this.zzc == 4;
    }
}
