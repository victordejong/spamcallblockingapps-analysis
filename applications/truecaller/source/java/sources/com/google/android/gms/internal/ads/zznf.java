package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zznf.class */
public final class zznf implements zzot {
    private final zzni zza;
    private final long zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;
    private final long zzf;

    public zznf(zzni zzniVar, long j, long j2, long j3, long j4, long j5, long j6) {
        this.zza = zzniVar;
        this.zzb = j;
        this.zzc = j3;
        this.zzd = j4;
        this.zze = j5;
        this.zzf = j6;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final boolean zze() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final zzor zzf(long j) {
        zzou zzouVar = new zzou(j, zznh.zza(this.zza.zza(j), 0L, this.zzc, this.zzd, this.zze, this.zzf));
        return new zzor(zzouVar, zzouVar);
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final long zzg() {
        return this.zzb;
    }

    public final long zzh(long j) {
        return this.zza.zza(j);
    }
}
