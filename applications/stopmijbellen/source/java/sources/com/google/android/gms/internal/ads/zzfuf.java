package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfuf.class */
public abstract class zzfuf<T> implements Comparator<T> {
    public static <T> zzfuf<T> zzb(Comparator<T> comparator) {
        return comparator instanceof zzfuf ? (zzfuf) comparator : new zzfsd(comparator);
    }

    public static <C extends Comparable> zzfuf<C> zzc() {
        return zzfud.zza;
    }

    @Override // java.util.Comparator
    public abstract int compare(T t, T t2);

    public <S extends T> zzfuf<S> zza() {
        return new zzfuo(this);
    }
}
