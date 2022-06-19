package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hy2.class */
abstract class hy2<F, T> implements Iterator<T> {

    /* renamed from: d */
    final Iterator<? extends F> f24084d;

    public hy2(Iterator<? extends F> it) {
        Objects.requireNonNull(it);
        this.f24084d = it;
    }

    /* renamed from: a */
    public abstract T mo12793a(F f);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f24084d.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return mo12793a(this.f24084d.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f24084d.remove();
    }
}
