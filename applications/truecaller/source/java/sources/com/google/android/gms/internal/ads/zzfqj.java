package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqj.class */
public abstract class zzfqj<F, T> implements Iterator<T> {
    public final Iterator<? extends F> zzb;

    public zzfqj(Iterator<? extends F> it) {
        Objects.requireNonNull(it);
        this.zzb = it;
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
