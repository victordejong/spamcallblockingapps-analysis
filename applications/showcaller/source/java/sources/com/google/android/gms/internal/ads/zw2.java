package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zw2.class */
public abstract class zw2<E> {
    /* renamed from: b */
    public static int m8154b(int i, int i2) {
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

    /* renamed from: a */
    public abstract zw2<E> mo8155a(E e);
}
