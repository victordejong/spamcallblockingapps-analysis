package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ix1.class */
public final class ix1 {
    /* renamed from: a */
    public static <E> ArrayList<E> m7067a(int i) {
        xw1.m4819b(i, "initialArraySize");
        return new ArrayList<>(i);
    }

    /* renamed from: b */
    public static <F, T> List<T> m7066b(List<F> list, fw1<? super F, ? extends T> fw1Var) {
        return new zzedl(list, fw1Var);
    }
}
