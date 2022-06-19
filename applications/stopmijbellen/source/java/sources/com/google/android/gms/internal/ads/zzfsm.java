package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfsm.class */
public abstract class zzfsm<E> {
    public static int zzd(int i, int i2) {
        int i3 = i + (i >> 1) + 1;
        int i4 = i3;
        if (i3 < i2) {
            int highestOneBit = Integer.highestOneBit(i2 - 1);
            i4 = highestOneBit + highestOneBit;
        }
        int i5 = i4;
        if (i4 < 0) {
            i5 = Integer.MAX_VALUE;
        }
        return i5;
    }

    public abstract zzfsm<E> zzb(E e);
}
