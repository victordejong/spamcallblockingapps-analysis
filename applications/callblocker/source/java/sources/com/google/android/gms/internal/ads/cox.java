package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cox.class */
abstract class cox<E> extends cpx<E> {

    /* renamed from: a */
    private final int f13480a;

    /* renamed from: b */
    private int f13481b;

    public cox(int i, int i2) {
        cor.m10932b(i2, i);
        this.f13480a = i;
        this.f13481b = i2;
    }

    /* renamed from: a */
    protected abstract E mo10893a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f13481b < this.f13480a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f13481b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f13481b;
        this.f13481b = i + 1;
        return mo10893a(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f13481b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.f13481b - 1;
        this.f13481b = i;
        return mo10893a(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f13481b - 1;
    }
}
