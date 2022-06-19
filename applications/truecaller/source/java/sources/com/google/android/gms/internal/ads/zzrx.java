package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrx.class */
public final class zzrx {
    public final zzru zza;
    public final int zzb;
    public final long[] zzc;
    public final int[] zzd;
    public final int zze;
    public final long[] zzf;
    public final int[] zzg;
    public final long zzh;

    public zzrx(zzru zzruVar, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        int length = iArr.length;
        int length2 = jArr2.length;
        zzakt.zza(length == length2);
        int length3 = jArr.length;
        zzakt.zza(length3 == length2);
        int length4 = iArr2.length;
        zzakt.zza(length4 == length2);
        this.zza = zzruVar;
        this.zzc = jArr;
        this.zzd = iArr;
        this.zze = i;
        this.zzf = jArr2;
        this.zzg = iArr2;
        this.zzh = j;
        this.zzb = length3;
        if (length4 > 0) {
            int i2 = length4 - 1;
            iArr2[i2] = iArr2[i2] | 536870912;
        }
    }

    public final int zza(long j) {
        for (int zzD = zzamq.zzD(this.zzf, j, true, false); zzD >= 0; zzD--) {
            if ((this.zzg[zzD] & 1) != 0) {
                return zzD;
            }
        }
        return -1;
    }

    public final int zzb(long j) {
        for (int zzE = zzamq.zzE(this.zzf, j, true, false); zzE < this.zzf.length; zzE++) {
            if ((this.zzg[zzE] & 1) != 0) {
                return zzE;
            }
        }
        return -1;
    }
}
