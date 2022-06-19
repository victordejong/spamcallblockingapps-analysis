package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsb.class */
public class zzsb {
    public final zzcf zza;
    public final int zzb;
    public final int[] zzc;
    private final zzab[] zzd;
    private int zze;

    public zzsb(zzcf zzcfVar, int[] iArr, int i) {
        int length = iArr.length;
        zzdy.zzf(length > 0);
        Objects.requireNonNull(zzcfVar);
        this.zza = zzcfVar;
        this.zzb = length;
        this.zzd = new zzab[length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.zzd[i2] = zzcfVar.zzb(iArr[i2]);
        }
        Arrays.sort(this.zzd, zzsa.zza);
        this.zzc = new int[this.zzb];
        for (int i3 = 0; i3 < this.zzb; i3++) {
            this.zzc[i3] = zzcfVar.zza(this.zzd[i3]);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzsb zzsbVar = (zzsb) obj;
        return this.zza == zzsbVar.zza && Arrays.equals(this.zzc, zzsbVar.zzc);
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

    public final int zzb(int i) {
        return this.zzc[0];
    }

    public final int zzc() {
        return this.zzc.length;
    }

    public final zzab zzd(int i) {
        return this.zzd[i];
    }

    public final zzcf zze() {
        return this.zza;
    }
}
