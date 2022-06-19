package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzom.class */
public final class zzom implements zzot {
    private final long[] zza;
    private final long[] zzb;
    private final long zzc;
    private final boolean zzd;

    public zzom(long[] jArr, long[] jArr2, long j) {
        int length = jArr.length;
        int length2 = jArr2.length;
        zzakt.zza(length == length2);
        boolean z = length2 > 0;
        this.zzd = z;
        if (!z || jArr2[0] <= 0) {
            this.zza = jArr;
            this.zzb = jArr2;
        } else {
            int i = length2 + 1;
            long[] jArr3 = new long[i];
            this.zza = jArr3;
            long[] jArr4 = new long[i];
            this.zzb = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length2);
            System.arraycopy(jArr2, 0, jArr4, 1, length2);
        }
        this.zzc = j;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final boolean zze() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final zzor zzf(long j) {
        if (!this.zzd) {
            zzou zzouVar = zzou.zza;
            return new zzor(zzouVar, zzouVar);
        }
        int zzD = zzamq.zzD(this.zzb, j, true, true);
        zzou zzouVar2 = new zzou(this.zzb[zzD], this.zza[zzD]);
        if (zzouVar2.zzb != j) {
            long[] jArr = this.zzb;
            if (zzD != jArr.length - 1) {
                int i = zzD + 1;
                return new zzor(zzouVar2, new zzou(jArr[i], this.zza[i]));
            }
        }
        return new zzor(zzouVar2, zzouVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzot
    public final long zzg() {
        return this.zzc;
    }
}
