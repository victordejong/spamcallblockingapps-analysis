package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwj.class */
public class zzwj implements zzxp {
    private final long zza;
    private final long zzb;
    private final int zzc;
    private final long zzd;
    private final int zze;
    private final long zzf;

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    public zzwj(long j, long j2, int i, int i2, boolean z) {
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

    @Override // com.google.android.gms.internal.ads.zzxp
    public final long zze() {
        return this.zzf;
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzxp
    public final zzxn zzg(long j) {
        long j2 = this.zzd;
        int i = (j2 > (-1L) ? 1 : (j2 == (-1L) ? 0 : -1));
        if (i == 0) {
            zzxq zzxqVar = new zzxq(0L, this.zzb);
            return new zzxn(zzxqVar, zzxqVar);
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
        zzxq zzxqVar2 = new zzxq(zza, max);
        if (this.zzd != -1 && zza < j) {
            long j4 = max + this.zzc;
            if (j4 < this.zza) {
                return new zzxn(zzxqVar2, new zzxq(zza(j4), j4));
            }
        }
        return new zzxn(zzxqVar2, zzxqVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final boolean zzh() {
        return this.zzd != -1;
    }
}
