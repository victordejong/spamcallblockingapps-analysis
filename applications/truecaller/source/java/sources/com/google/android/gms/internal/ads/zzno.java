package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzno.class */
public class zzno implements zzot {
    private final long zza;
    private final long zzb;
    private final int zzc;
    private final long zzd;
    private final int zze;
    private final long zzf;

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    public zzno(long j, long j2, int i, int i2, boolean z) {
        char zzb;
        this.zza = j;
        this.zzb = j2;
        this.zzc = i2 == -1 ? 1 : i2;
        this.zze = i;
        if (j == -1) {
            this.zzd = -1L;
            zzb = 1;
        } else {
            this.zzd = j - j2;
            zzb = zzb(j, j2, i);
        }
        this.zzf = zzb;
    }

    private static long zzb(long j, long j2, int i) {
        return (Math.max(0L, j - j2) * 8000000) / i;
    }

    public final long zza(long j) {
        return zzb(j, this.zzb, this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final boolean zze() {
        return this.zzd != -1;
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzot
    public final zzor zzf(long j) {
        long j2 = this.zzd;
        int i = (j2 > (-1L) ? 1 : (j2 == (-1L) ? 0 : -1));
        if (i == 0) {
            zzou zzouVar = new zzou(0L, this.zzb);
            return new zzor(zzouVar, zzouVar);
        }
        int i2 = this.zze;
        long j3 = this.zzc;
        ?? r0 = (((i2 * j) / 8000000) / j3) * j3;
        char c = r0;
        if (i != 0) {
            c = Math.min((long) r0, j2 - j3);
        }
        long max = this.zzb + Math.max((long) c, 0L);
        long zza = zza(max);
        zzou zzouVar2 = new zzou(zza, max);
        if (this.zzd != -1 && zza < j) {
            long j4 = max + this.zzc;
            if (j4 < this.zza) {
                return new zzor(zzouVar2, new zzou(zza(j4), j4));
            }
        }
        return new zzor(zzouVar2, zzouVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final long zzg() {
        return this.zzf;
    }
}
