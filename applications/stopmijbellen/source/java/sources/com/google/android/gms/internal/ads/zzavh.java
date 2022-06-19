package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavh.class */
public class zzavh {
    public final zzavc zza;
    public final int[] zzb;
    private final zzapg[] zzc = new zzapg[1];
    private int zzd;

    public zzavh(zzavc zzavcVar, int... iArr) {
        Objects.requireNonNull(zzavcVar);
        this.zza = zzavcVar;
        for (int i = 0; i <= 0; i++) {
            this.zzc[i] = zzavcVar.zzb(iArr[i]);
        }
        Arrays.sort(this.zzc, new zzavg(null));
        this.zzb = new int[1];
        for (int i2 = 0; i2 <= 0; i2++) {
            this.zzb[i2] = zzavcVar.zza(this.zzc[i2]);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzavh zzavhVar = (zzavh) obj;
        return this.zza == zzavhVar.zza && Arrays.equals(this.zzb, zzavhVar.zzb);
    }

    public final int hashCode() {
        int i = this.zzd;
        if (i == 0) {
            int hashCode = Arrays.hashCode(this.zzb) + (System.identityHashCode(this.zza) * 31);
            this.zzd = hashCode;
            return hashCode;
        }
        return i;
    }

    public final int zza(int i) {
        return this.zzb[0];
    }

    public final int zzb() {
        int length = this.zzb.length;
        return 1;
    }

    public final zzapg zzc(int i) {
        return this.zzc[i];
    }

    public final zzavc zzd() {
        return this.zza;
    }
}
