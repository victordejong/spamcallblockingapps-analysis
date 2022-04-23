package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czs.class */
abstract class czs<F, T> implements Iterator<T> {

    /* renamed from: a  reason: collision with root package name */
    final Iterator<? extends F> f26622a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public czs(Iterator<? extends F> it2) {
        this.f26622a = (Iterator) cyg.a(it2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T a(F f);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f26622a.hasNext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Iterator
    public final T next() {
        return (T) a(this.f26622a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f26622a.remove();
    }
}
