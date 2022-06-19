package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjg.class */
public class zzjg {
    public final zzq zza;
    public final int zzb;
    public final int[] zzc;
    private final zzafv[] zzd;
    private int zze;

    public zzjg(zzq zzqVar, int[] iArr, int i) {
        int length = iArr.length;
        zzakt.zzd(length > 0);
        Objects.requireNonNull(zzqVar);
        this.zza = zzqVar;
        this.zzb = length;
        this.zzd = new zzafv[length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.zzd[i2] = zzqVar.zza(iArr[i2]);
        }
        Arrays.sort(this.zzd, zzjf.zza);
        this.zzc = new int[this.zzb];
        for (int i3 = 0; i3 < this.zzb; i3++) {
            this.zzc[i3] = zzqVar.zzb(this.zzd[i3]);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzjg zzjgVar = (zzjg) obj;
        return this.zza == zzjgVar.zza && Arrays.equals(this.zzc, zzjgVar.zzc);
    }

    public final int hashCode() {
        int i = this.zze;
        if (i == 0) {
            int hashCode = Arrays.hashCode(this.zzc) + (System.identityHashCode(this.zza) * 31);
            this.zze = hashCode;
            return hashCode;
        }
        return i;
    }

    public final zzq zzb() {
        return this.zza;
    }

    public final int zzc() {
        return this.zzc.length;
    }

    public final zzafv zzd(int i) {
        return this.zzd[i];
    }

    public final int zze(int i) {
        return this.zzc[0];
    }
}
