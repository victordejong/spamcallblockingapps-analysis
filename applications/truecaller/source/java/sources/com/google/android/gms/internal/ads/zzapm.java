package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzapm.class */
public final class zzapm implements zzapv {
    public final int[] zza;
    public final long[] zzb;
    public final long[] zzc;
    public final long[] zzd;
    private final long zze;

    public zzapm(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
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

    @Override // com.google.android.gms.internal.ads.zzapv
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final long zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final long zzc(long j) {
        return this.zzb[zzave.zzh(this.zzd, j, true, true)];
    }
}
