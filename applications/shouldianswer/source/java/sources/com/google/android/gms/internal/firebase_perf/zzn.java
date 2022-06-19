package com.google.android.gms.internal.firebase_perf;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzn.class */
public final class zzn<K, V> {
    private int size;
    private Object[] zzf;
    private boolean zzg;

    public zzn() {
        this(4);
    }

    private zzn(int i) {
        this.zzf = new Object[8];
        this.size = 0;
        this.zzg = false;
    }

    public final zzn<K, V> zzb(K k, V v) {
        int i = (this.size + 1) << 1;
        Object[] objArr = this.zzf;
        if (i > objArr.length) {
            int length = objArr.length;
            if (i < 0) {
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
            int i2 = length + (length >> 1) + 1;
            int i3 = i2;
            if (i2 < i) {
                i3 = Integer.highestOneBit(i - 1) << 1;
            }
            int i4 = i3;
            if (i3 < 0) {
                i4 = Integer.MAX_VALUE;
            }
            this.zzf = Arrays.copyOf(objArr, i4);
            this.zzg = false;
        }
        zzi.zza(k, v);
        Object[] objArr2 = this.zzf;
        int i5 = this.size;
        objArr2[i5 * 2] = k;
        objArr2[(i5 * 2) + 1] = v;
        this.size = i5 + 1;
        return this;
    }

    public final zzo<K, V> zzg() {
        this.zzg = true;
        return zzs.zza(this.size, this.zzf);
    }
}
