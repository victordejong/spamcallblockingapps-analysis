package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzss.class */
public final class zzss {
    private final String[] zza;
    private final int[] zzb;
    private final zzch[] zzc;
    private final int[] zzd;
    private final int[][][] zze;
    private final zzch zzf;

    public zzss(String[] strArr, int[] iArr, zzch[] zzchVarArr, int[] iArr2, int[][][] iArr3, zzch zzchVar) {
        this.zza = strArr;
        this.zzb = iArr;
        this.zzc = zzchVarArr;
        this.zze = iArr3;
        this.zzd = iArr2;
        this.zzf = zzchVar;
    }

    public final int zza(int i) {
        return this.zzb[i];
    }

    public final int zzb(int i, int i2, int i3) {
        return this.zze[i][i2][0] & 7;
    }

    public final zzch zzc(int i) {
        return this.zzc[i];
    }

    public final zzch zzd() {
        return this.zzf;
    }
}
