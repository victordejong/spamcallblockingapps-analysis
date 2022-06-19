package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfus.class */
abstract class zzfus<F, T> implements Iterator<T> {
    public final Iterator<? extends F> zzb;

    public zzfus(Iterator<? extends F> it2) {
        Objects.requireNonNull(it2);
        this.zzb = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return zza(this.zzb.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zzb.remove();
    }

    public abstract T zza(F f);
}
