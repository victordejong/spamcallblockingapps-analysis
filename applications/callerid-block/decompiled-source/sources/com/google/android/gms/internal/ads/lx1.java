package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lx1.class */
abstract class lx1<F, T> implements Iterator<T> {

    /* renamed from: b */
    final Iterator<? extends F> f7188b;

    lx1(Iterator<? extends F> it) {
        it.getClass();
        this.f7188b = it;
    }

    /* renamed from: b */
    abstract T m6639b(F f);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f7188b.hasNext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Iterator
    public final T next() {
        return (T) m6639b(this.f7188b.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f7188b.remove();
    }
}
