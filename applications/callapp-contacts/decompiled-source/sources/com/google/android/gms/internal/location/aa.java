package com.google.android.gms.internal.location;

import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/aa.class */
abstract class aa<E> extends ah<E> {

    /* renamed from: a  reason: collision with root package name */
    private final int f28885a;

    /* renamed from: b  reason: collision with root package name */
    private int f28886b;

    /* JADX INFO: Access modifiers changed from: protected */
    public aa(int i, int i2) {
        y.b(i2, i);
        this.f28885a = i;
        this.f28886b = i2;
    }

    protected abstract E a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f28886b < this.f28885a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f28886b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i = this.f28886b;
            this.f28886b = i + 1;
            return a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f28886b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i = this.f28886b - 1;
            this.f28886b = i;
            return a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f28886b - 1;
    }
}
