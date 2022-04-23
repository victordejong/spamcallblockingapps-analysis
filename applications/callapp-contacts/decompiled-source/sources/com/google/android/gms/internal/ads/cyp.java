package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyp.class */
abstract class cyp<E> extends czz<E> {

    /* renamed from: a  reason: collision with root package name */
    private final int f26575a;

    /* renamed from: b  reason: collision with root package name */
    private int f26576b;

    /* JADX INFO: Access modifiers changed from: protected */
    public cyp(int i, int i2) {
        cyg.b(i2, i);
        this.f26575a = i;
        this.f26576b = i2;
    }

    protected abstract E a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f26576b < this.f26575a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f26576b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i = this.f26576b;
            this.f26576b = i + 1;
            return a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f26576b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i = this.f26576b - 1;
            this.f26576b = i;
            return a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f26576b - 1;
    }
}
