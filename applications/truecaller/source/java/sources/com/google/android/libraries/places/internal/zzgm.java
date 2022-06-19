package com.google.android.libraries.places.internal;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzgm.class */
public final class zzgm<K, V> {
    private Object[] zza;
    private int zzb;
    private boolean zzc;

    public zzgm() {
        this(4);
    }

    private zzgm(int i) {
        this.zza = new Object[8];
        this.zzb = 0;
        this.zzc = false;
    }

    public final zzgm<K, V> zza(K k, V v) {
        int i = (this.zzb + 1) << 1;
        Object[] objArr = this.zza;
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
            this.zza = Arrays.copyOf(objArr, i4);
            this.zzc = false;
        }
        zzgb.zza(k, v);
        Object[] objArr2 = this.zza;
        int i5 = this.zzb;
        objArr2[i5 * 2] = k;
        objArr2[(i5 * 2) + 1] = v;
        this.zzb = i5 + 1;
        return this;
    }

    public final zzgn<K, V> zza() {
        this.zzc = true;
        return zzgs.zza(this.zzb, this.zza);
    }
}
