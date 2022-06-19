package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrf.class */
final class zzrf {
    public final long zza;
    public final long zzb;
    public boolean zzc;
    public zzsx zzd;
    public zzrf zze;

    public zzrf(long j, int i) {
        this.zza = j;
        this.zzb = j + 65536;
    }

    public final int zza(long j) {
        long j2 = this.zza;
        int i = this.zzd.zzb;
        return (int) (j - j2);
    }

    public final zzrf zzb() {
        this.zzd = null;
        zzrf zzrfVar = this.zze;
        this.zze = null;
        return zzrfVar;
    }
}
