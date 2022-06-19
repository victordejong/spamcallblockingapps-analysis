package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzim.class */
public final class zzim {
    public final long zza;
    public final long zzb;
    public boolean zzc;
    public zzkb zzd;
    public zzim zze;

    public zzim(long j, int i) {
        this.zza = j;
        this.zzb = j + 65536;
    }

    public final int zza(long j) {
        long j2 = this.zza;
        int i = this.zzd.zzb;
        return (int) (j - j2);
    }

    public final zzim zzb() {
        this.zzd = null;
        zzim zzimVar = this.zze;
        this.zze = null;
        return zzimVar;
    }
}
