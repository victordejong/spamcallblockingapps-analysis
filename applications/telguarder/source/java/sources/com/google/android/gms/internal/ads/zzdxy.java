package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxy.class */
abstract class zzdxy<F, T> implements Iterator<T> {
    final Iterator<? extends F> zzhyq;

    public zzdxy(Iterator<? extends F> it) {
        this.zzhyq = (Iterator) zzdwl.checkNotNull(it);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzhyq.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return zzae(this.zzhyq.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zzhyq.remove();
    }

    public abstract T zzae(F f);
}
