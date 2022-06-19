package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lv2.class */
abstract class lv2<E> extends ky2<E> {

    /* renamed from: d */
    private final int f26295d;

    /* renamed from: e */
    private int f26296e;

    public lv2(int i, int i2) {
        xu2.m9051f(i2, i, "index");
        this.f26295d = i;
        this.f26296e = i2;
    }

    /* renamed from: a */
    protected abstract E mo13415a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f26296e < this.f26295d;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f26296e > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i = this.f26296e;
            this.f26296e = i + 1;
            return mo13415a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f26296e;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i = this.f26296e - 1;
            this.f26296e = i;
            return mo13415a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f26296e - 1;
    }
}
