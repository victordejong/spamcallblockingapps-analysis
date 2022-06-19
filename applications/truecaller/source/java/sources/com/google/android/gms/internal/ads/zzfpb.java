package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfpb.class */
public final class zzfpb {
    public static <E> ArrayList<E> zza(int i) {
        zzfni.zzb(i, "initialArraySize");
        return new ArrayList<>(i);
    }

    public static <F, T> List<T> zzb(List<F> list, zzfln<? super F, ? extends T> zzflnVar) {
        return new zzfpa(list, zzflnVar);
    }
}
