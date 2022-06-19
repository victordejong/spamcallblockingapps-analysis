package com.google.android.gms.internal.location;

import java.util.NoSuchElementException;
/* renamed from: com.google.android.gms.internal.location.aa */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/aa.class */
abstract class AbstractC13313aa<E> extends AbstractC13320ah<E> {

    /* renamed from: a */
    private final int f50545a;

    /* renamed from: b */
    private int f50546b;

    public AbstractC13313aa(int i, int i2) {
        C13350y.m13322b(i2, i);
        this.f50545a = i;
        this.f50546b = i2;
    }

    /* renamed from: a */
    protected abstract E mo13350a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f50546b < this.f50545a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f50546b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i = this.f50546b;
            this.f50546b = i + 1;
            return mo13350a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f50546b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i = this.f50546b - 1;
            this.f50546b = i;
            return mo13350a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f50546b - 1;
    }
}
