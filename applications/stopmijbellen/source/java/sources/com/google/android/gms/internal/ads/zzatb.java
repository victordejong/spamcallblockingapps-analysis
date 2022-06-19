package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatb.class */
final class zzatb {
    public final int zza;
    public final long[] zzb;
    public final int[] zzc;
    public final int zzd;
    public final long[] zze;
    public final int[] zzf;

    public zzatb(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
        int length = jArr2.length;
        zzawm.zzc(iArr.length == length);
        int length2 = jArr.length;
        zzawm.zzc(length2 == length);
        zzawm.zzc(iArr2.length == length);
        this.zzb = jArr;
        this.zzc = iArr;
        this.zzd = i;
        this.zze = jArr2;
        this.zzf = iArr2;
        this.zza = length2;
    }

    public final int zza(long j) {
        for (int zzc = zzaxb.zzc(this.zze, j, true, false); zzc >= 0; zzc--) {
            if ((this.zzf[zzc] & 1) != 0) {
                return zzc;
            }
        }
        return -1;
    }

    public final int zzb(long j) {
        for (int zzb = zzaxb.zzb(this.zze, j, true, false); zzb < this.zze.length; zzb++) {
            if ((this.zzf[zzb] & 1) != 0) {
                return zzb;
            }
        }
        return -1;
    }
}
