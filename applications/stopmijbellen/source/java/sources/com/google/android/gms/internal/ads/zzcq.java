package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcq.class */
public final class zzcq {
    public static final zzj<zzcq> zza = zzcp.zza;
    private final zzcf zzb;
    private final int[] zzc;
    private final int zzd;
    private final boolean[] zze;

    public zzcq(zzcf zzcfVar, int[] iArr, int i, boolean[] zArr) {
        int i2 = zzcfVar.zzb;
        this.zzb = zzcfVar;
        this.zzc = (int[]) iArr.clone();
        this.zzd = i;
        this.zze = (boolean[]) zArr.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzcq.class != obj.getClass()) {
            return false;
        }
        zzcq zzcqVar = (zzcq) obj;
        return this.zzd == zzcqVar.zzd && this.zzb.equals(zzcqVar.zzb) && Arrays.equals(this.zzc, zzcqVar.zzc) && Arrays.equals(this.zze, zzcqVar.zze);
    }

    public final int hashCode() {
        int hashCode = this.zzb.hashCode();
        int hashCode2 = Arrays.hashCode(this.zzc);
        return Arrays.hashCode(this.zze) + ((((hashCode2 + (hashCode * 31)) * 31) + this.zzd) * 31);
    }
}
