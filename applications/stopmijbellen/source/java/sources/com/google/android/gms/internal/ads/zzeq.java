package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeq.class */
public final class zzeq {
    private int zza;
    private long[] zzb;

    public zzeq() {
        this(32);
    }

    public zzeq(int i) {
        this.zzb = new long[32];
    }

    public final int zza() {
        return this.zza;
    }

    public final long zzb(int i) {
        if (i < 0 || i >= this.zza) {
            throw new IndexOutOfBoundsException(C0082b.m8757e(46, "Invalid index ", i, ", size is ", this.zza));
        }
        return this.zzb[i];
    }

    public final void zzc(long j) {
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
}
