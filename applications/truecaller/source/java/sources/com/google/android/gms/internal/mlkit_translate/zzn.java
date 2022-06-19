package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzn.class */
public abstract class zzn<E> {
    public static int zza(int i, int i2) {
        if (i2 >= 0) {
            int i3 = i + (i >> 1) + 1;
            int i4 = i3;
            if (i3 < i2) {
                i4 = Integer.highestOneBit(i2 - 1) << 1;
            }
            int i5 = i4;
            if (i4 < 0) {
                i5 = Integer.MAX_VALUE;
            }
            return i5;
        }
        throw new AssertionError("cannot store more than MAX_VALUE elements");
    }

    public zzn<E> zza(Iterable<? extends E> iterable) {
        for (E e : iterable) {
            zza((zzn<E>) e);
        }
        return this;
    }

    public abstract zzn<E> zza(E e);
}
