package com.google.android.gms.internal.ads;

import java.util.ListIterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/iy2.class */
abstract class iy2<F, T> extends hy2<F, T> implements ListIterator<T> {
    public iy2(ListIterator<? extends F> listIterator) {
        super(listIterator);
    }

    @Override // java.util.ListIterator
    public final void add(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return ((ListIterator) this.f24084d).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return ((ListIterator) this.f24084d).nextIndex();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ListIterator
    public final T previous() {
        return (T) mo12793a(((ListIterator) this.f24084d).previous());
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return ((ListIterator) this.f24084d).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(T t) {
        throw new UnsupportedOperationException();
    }
}
