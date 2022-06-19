package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlt.class */
final class zzlt {
    public final int[] zzaou;
    public final long[] zzaov;
    public final int zzaxc;
    public final int zzayj;
    public final int[] zzayl;
    public final long[] zzban;

    public zzlt(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
        zzpg.checkArgument(iArr.length == jArr2.length);
        zzpg.checkArgument(jArr.length == jArr2.length);
        zzpg.checkArgument(iArr2.length == jArr2.length);
        this.zzaov = jArr;
        this.zzaou = iArr;
        this.zzayj = i;
        this.zzban = jArr2;
        this.zzayl = iArr2;
        this.zzaxc = jArr.length;
    }

    public final int zzec(long j) {
        for (int zza = zzpt.zza(this.zzban, j, true, false); zza >= 0; zza--) {
            if ((this.zzayl[zza] & 1) != 0) {
                return zza;
            }
        }
        return -1;
    }

    public final int zzed(long j) {
        for (int zzb = zzpt.zzb(this.zzban, j, true, false); zzb < this.zzban.length; zzb++) {
            if ((this.zzayl[zzb] & 1) != 0) {
                return zzb;
            }
        }
        return -1;
    }
}
