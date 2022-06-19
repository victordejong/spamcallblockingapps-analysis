package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dy2.class */
public abstract class dy2<T> implements Comparator<T> {
    public static <C extends Comparable> dy2<C> zzb() {
        return zzfpu.f34078d;
    }

    public static <T> dy2<T> zzc(Comparator<T> comparator) {
        return comparator instanceof dy2 ? (dy2) comparator : new zzfnu(comparator);
    }

    @Override // java.util.Comparator
    public abstract int compare(T t, T t2);

    public <S extends T> dy2<S> zza() {
        return new zzfqf(this);
    }
}
