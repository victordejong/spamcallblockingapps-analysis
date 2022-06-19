package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mx2.class */
public final class mx2 {
    /* renamed from: a */
    public static <E> ArrayList<E> m13063a(int i) {
        gw2.m14794b(i, "initialArraySize");
        return new ArrayList<>(i);
    }

    /* renamed from: b */
    public static <F, T> List<T> m13062b(List<F> list, nu2<? super F, ? extends T> nu2Var) {
        return new zzfpa(list, nu2Var);
    }
}
