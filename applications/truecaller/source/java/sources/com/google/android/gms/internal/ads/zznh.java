package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zznh.class */
public final class zznh {
    private final long zza;
    private final long zzb;
    private final long zzc;
    private long zzd = 0;
    private long zze;
    private long zzf;
    private long zzg;
    private long zzh;

    public zznh(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        this.zza = j;
        this.zzb = j2;
        this.zze = j4;
        this.zzf = j5;
        this.zzg = j6;
        this.zzc = j7;
        this.zzh = zza(j2, 0L, j4, j5, j6, j7);
    }

    public static long zza(long j, long j2, long j3, long j4, long j5, long j6) {
        if (j4 + 1 >= j5 || 1 + j2 >= j3) {
            return j4;
        }
        long j7 = (((float) (j5 - j4)) / ((float) (j3 - j2))) * ((float) (j - j2));
        return zzamq.zzy(((j4 + j7) - j6) - (j7 / 20), j4, (-1) + j5);
    }

    public static /* synthetic */ void zzf(zznh zznhVar, long j, long j2) {
        zznhVar.zzd = j;
        zznhVar.zzf = j2;
        zznhVar.zzi();
    }

    public static /* synthetic */ void zzg(zznh zznhVar, long j, long j2) {
        zznhVar.zze = j;
        zznhVar.zzg = j2;
        zznhVar.zzi();
    }

    private final void zzi() {
        this.zzh = zza(this.zzb, this.zzd, this.zze, this.zzf, this.zzg, this.zzc);
    }
}
