package com.google.android.gms.internal.common;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/common/zzo.class */
class zzo<E> extends zzp<E> {
    Object[] zza = new Object[4];
    int zzb = 0;
    boolean zzc;

    public zzo(int i) {
    }

    private final void zzb(int i) {
        Object[] objArr = this.zza;
        int length = objArr.length;
        if (length >= i) {
            if (!this.zzc) {
                return;
            }
            this.zza = (Object[]) objArr.clone();
            this.zzc = false;
            return;
        }
        int i2 = length + (length >> 1) + 1;
        int i3 = i2;
        if (i2 < i) {
            int highestOneBit = Integer.highestOneBit(i - 1);
            i3 = highestOneBit + highestOneBit;
        }
        int i4 = i3;
        if (i3 < 0) {
            i4 = Integer.MAX_VALUE;
        }
        this.zza = Arrays.copyOf(objArr, i4);
        this.zzc = false;
    }

    public final zzo<E> zza(E e) {
        Objects.requireNonNull(e);
        zzb(this.zzb + 1);
        Object[] objArr = this.zza;
        int i = this.zzb;
        this.zzb = i + 1;
        objArr[i] = e;
        return this;
    }
}
