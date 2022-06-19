package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzru.class */
public final class zzru {
    public final int zza;
    public final int zzb;
    public final long zzc;
    public final long zzd;
    public final long zze;
    public final zzafv zzf;
    public final int zzg;
    public final long[] zzh;
    public final long[] zzi;
    public final int zzj;
    private final zzrv[] zzk;

    public zzru(int i, int i2, long j, long j2, long j3, zzafv zzafvVar, int i3, zzrv[] zzrvVarArr, int i4, long[] jArr, long[] jArr2) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = j;
        this.zzd = j2;
        this.zze = j3;
        this.zzf = zzafvVar;
        this.zzg = i3;
        this.zzk = zzrvVarArr;
        this.zzj = i4;
        this.zzh = jArr;
        this.zzi = jArr2;
    }

    public final zzrv zza(int i) {
        zzrv[] zzrvVarArr = this.zzk;
        if (zzrvVarArr == null) {
            return null;
        }
        return zzrvVarArr[i];
    }
}
