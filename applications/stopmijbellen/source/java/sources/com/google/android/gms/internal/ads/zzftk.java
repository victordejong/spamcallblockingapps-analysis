package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzftk.class */
public final class zzftk {
    public static <E> ArrayList<E> zza(int i) {
        zzfrr.zza(i, "initialArraySize");
        return new ArrayList<>(i);
    }

    public static <F, T> List<T> zzb(List<F> list, zzfpv<? super F, ? extends T> zzfpvVar) {
        return new zzftj(list, zzfpvVar);
    }
}
