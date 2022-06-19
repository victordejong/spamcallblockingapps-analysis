package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxl.class */
public final class zzdxl {
    public static <F, T> List<T> zza(List<F> list, zzdvz<? super F, ? extends T> zzdvzVar) {
        return list instanceof RandomAccess ? new zzdxk(list, zzdvzVar) : new zzdxm(list, zzdvzVar);
    }

    public static <E> ArrayList<E> zzet(int i) {
        zzdwx.zzh(i, "initialArraySize");
        return new ArrayList<>(i);
    }
}
