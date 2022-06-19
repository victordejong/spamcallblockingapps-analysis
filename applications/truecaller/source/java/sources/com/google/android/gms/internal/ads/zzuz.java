package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzuz.class */
public final class zzuz implements zzot {
    private final zzuw zza;
    private final int zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;

    public zzuz(zzuw zzuwVar, int i, long j, long j2) {
        this.zza = zzuwVar;
        this.zzb = i;
        this.zzc = j;
        long j3 = (j2 - j) / zzuwVar.zzd;
        this.zzd = j3;
        this.zze = zza(j3);
    }

    private final long zza(long j) {
        return zzamq.zzH(j * this.zzb, 1000000L, this.zza.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final boolean zze() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final zzor zzf(long j) {
        long zzy = zzamq.zzy((this.zza.zzc * j) / (this.zzb * 1000000), 0L, this.zzd - 1);
        long j2 = this.zzc;
        int i = this.zza.zzd;
        long zza = zza(zzy);
        zzou zzouVar = new zzou(zza, (i * zzy) + j2);
        if (zza >= j || zzy == this.zzd - 1) {
            return new zzor(zzouVar, zzouVar);
        }
        long j3 = zzy + 1;
        return new zzor(zzouVar, new zzou(zza(j3), (j3 * this.zza.zzd) + this.zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final long zzg() {
        return this.zze;
    }
}
