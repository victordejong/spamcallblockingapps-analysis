package com.google.android.gms.internal.ads;

import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzalo.class */
public final class zzalo {
    private int zza;
    private long[] zzb;

    public zzalo() {
        this(32);
    }

    public zzalo(int i) {
        this.zzb = new long[32];
    }

    public final void zza(long j) {
        int i = this.zza;
        long[] jArr = this.zzb;
        if (i == jArr.length) {
            this.zzb = Arrays.copyOf(jArr, i + i);
        }
        long[] jArr2 = this.zzb;
        int i2 = this.zza;
        this.zza = i2 + 1;
        jArr2[i2] = j;
    }

    public final long zzb(int i) {
        if (i < 0 || i >= this.zza) {
            throw new IndexOutOfBoundsException(C22128a.m8683N1(46, "Invalid index ", i, ", size is ", this.zza));
        }
        return this.zzb[i];
    }

    public final int zzc() {
        return this.zza;
    }
}
