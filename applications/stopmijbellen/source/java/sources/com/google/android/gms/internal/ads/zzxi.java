package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxi.class */
public final class zzxi implements zzxp {
    private final long[] zza;
    private final long[] zzb;
    private final long zzc;
    private final boolean zzd;

    public zzxi(long[] jArr, long[] jArr2, long j) {
        int length = jArr.length;
        int length2 = jArr2.length;
        zzdy.zzd(length == length2);
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

    @Override // com.google.android.gms.internal.ads.zzxp
    public final long zze() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final zzxn zzg(long j) {
        if (!this.zzd) {
            zzxq zzxqVar = zzxq.zza;
            return new zzxn(zzxqVar, zzxqVar);
        }
        int zzd = zzfn.zzd(this.zzb, j, true, true);
        zzxq zzxqVar2 = new zzxq(this.zzb[zzd], this.zza[zzd]);
        if (zzxqVar2.zzb != j) {
            long[] jArr = this.zzb;
            if (zzd != jArr.length - 1) {
                int i = zzd + 1;
                return new zzxn(zzxqVar2, new zzxq(jArr[i], this.zza[i]));
            }
        }
        return new zzxn(zzxqVar2, zzxqVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final boolean zzh() {
        return this.zzd;
    }
}
