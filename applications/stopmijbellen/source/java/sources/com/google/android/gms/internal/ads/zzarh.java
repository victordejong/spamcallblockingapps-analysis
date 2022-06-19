package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzarh.class */
public final class zzarh implements zzarq {
    public final int[] zza;
    public final long[] zzb;
    public final long[] zzc;
    public final long[] zzd;
    private final long zze;

    public zzarh(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.zza = iArr;
        this.zzb = jArr;
        this.zzc = jArr2;
        this.zzd = jArr3;
        int length = iArr.length;
        if (length <= 0) {
            this.zze = 0L;
            return;
        }
        int i = length - 1;
        this.zze = jArr2[i] + jArr3[i];
    }

    @Override // com.google.android.gms.internal.ads.zzarq
    public final long zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzarq
    public final long zzb(long j) {
        return this.zzb[zzaxb.zzc(this.zzd, j, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.zzarq
    public final boolean zzc() {
        return true;
    }
}
