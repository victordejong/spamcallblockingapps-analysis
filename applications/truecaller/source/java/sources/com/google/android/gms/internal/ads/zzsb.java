package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsb.class */
public final class zzsb implements zzsh {
    private final zzoh zza;
    private final zzog zzb;
    private long zzc = -1;
    private long zzd = -1;

    public zzsb(zzoh zzohVar, zzog zzogVar) {
        this.zza = zzohVar;
        this.zzb = zzogVar;
    }

    public final void zza(long j) {
        this.zzc = j;
    }

    @Override // com.google.android.gms.internal.ads.zzsh
    public final long zze(zznv zznvVar) {
        long j = this.zzd;
        if (j >= 0) {
            this.zzd = -1L;
            return -(j + 2);
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzsh
    public final void zzf(long j) {
        long[] jArr = this.zzb.zza;
        this.zzd = jArr[zzamq.zzD(jArr, j, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.zzsh
    public final zzot zzg() {
        zzakt.zzd(this.zzc != -1);
        return new zzof(this.zza, this.zzc);
    }
}
