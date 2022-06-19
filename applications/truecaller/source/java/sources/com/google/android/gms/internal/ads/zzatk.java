package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzatk.class */
public class zzatk {
    public final zzatf zza;
    public final int[] zzb;
    private final zzanm[] zzc = new zzanm[1];
    private int zzd;

    public zzatk(zzatf zzatfVar, int... iArr) {
        Objects.requireNonNull(zzatfVar);
        this.zza = zzatfVar;
        for (int i = 0; i <= 0; i++) {
            this.zzc[i] = zzatfVar.zza(iArr[i]);
        }
        Arrays.sort(this.zzc, new zzati(null));
        this.zzb = new int[1];
        for (int i2 = 0; i2 <= 0; i2++) {
            this.zzb[i2] = zzatfVar.zzb(this.zzc[i2]);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzatk zzatkVar = (zzatk) obj;
        return this.zza == zzatkVar.zza && Arrays.equals(this.zzb, zzatkVar.zzb);
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

    public final zzatf zza() {
        return this.zza;
    }

    public final int zzb() {
        int length = this.zzb.length;
        return 1;
    }

    public final zzanm zzc(int i) {
        return this.zzc[i];
    }

    public final int zzd(int i) {
        return this.zzb[0];
    }
}
