package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzack.class */
public final class zzack {
    public final int zza;
    public final int zzb;
    public final long zzc;
    public final long zzd;
    public final long zze;
    public final zzab zzf;
    public final int zzg;
    public final long[] zzh;
    public final long[] zzi;
    public final int zzj;
    private final zzacl[] zzk;

    public zzack(int i, int i2, long j, long j2, long j3, zzab zzabVar, int i3, zzacl[] zzaclVarArr, int i4, long[] jArr, long[] jArr2) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = j;
        this.zzd = j2;
        this.zze = j3;
        this.zzf = zzabVar;
        this.zzg = i3;
        this.zzk = zzaclVarArr;
        this.zzj = i4;
        this.zzh = jArr;
        this.zzi = jArr2;
    }

    public final zzacl zza(int i) {
        zzacl[] zzaclVarArr = this.zzk;
        if (zzaclVarArr == null) {
            return null;
        }
        return zzaclVarArr[i];
    }
}
