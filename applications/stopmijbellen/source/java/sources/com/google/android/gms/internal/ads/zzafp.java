package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafp.class */
final class zzafp implements zzxp {
    private final zzafm zza;
    private final int zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;

    public zzafp(zzafm zzafmVar, int i, long j, long j2) {
        this.zza = zzafmVar;
        this.zzb = i;
        this.zzc = j;
        long j3 = (j2 - j) / zzafmVar.zzd;
        this.zzd = j3;
        this.zze = zza(j3);
    }

    private final long zza(long j) {
        return zzfn.zzt(j * this.zzb, 1000000L, this.zza.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final long zze() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final zzxn zzg(long j) {
        long zzo = zzfn.zzo((this.zza.zzc * j) / (this.zzb * 1000000), 0L, this.zzd - 1);
        long j2 = this.zzc;
        int i = this.zza.zzd;
        long zza = zza(zzo);
        zzxq zzxqVar = new zzxq(zza, (i * zzo) + j2);
        if (zza >= j || zzo == this.zzd - 1) {
            return new zzxn(zzxqVar, zzxqVar);
        }
        long j3 = zzo + 1;
        return new zzxn(zzxqVar, new zzxq(zza(j3), (j3 * this.zza.zzd) + this.zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final boolean zzh() {
        return true;
    }
}
