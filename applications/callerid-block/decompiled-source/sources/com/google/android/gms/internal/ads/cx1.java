package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cx1.class */
public abstract class cx1<E> {
    cx1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m7769b(int i, int i2) {
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
    public abstract cx1<E> m7770a(E e);
}
