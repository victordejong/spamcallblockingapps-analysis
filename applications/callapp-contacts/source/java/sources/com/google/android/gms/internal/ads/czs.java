package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czs.class */
abstract class czs<F, T> implements Iterator<T> {

    /* renamed from: a */
    final Iterator<? extends F> f46820a;

    public czs(Iterator<? extends F> it2) {
        this.f46820a = (Iterator) cyg.m17060a(it2);
    }

    /* renamed from: a */
    public abstract T mo16998a(F f);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f46820a.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return mo16998a(this.f46820a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f46820a.remove();
    }
}
