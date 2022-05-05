package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzej.class */
abstract class zzej<E> extends zzfw<E> {

    /* renamed from: f */
    private final int f8378f;

    /* renamed from: g */
    private int f8379g;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzej(int i, int i2) {
        zzeb.m12736g(i2, i);
        this.f8378f = i;
        this.f8379g = i2;
    }

    /* renamed from: a */
    protected abstract E mo12696a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f8379g < this.f8378f;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f8379g > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i = this.f8379g;
            this.f8379g = i + 1;
            return mo12696a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f8379g;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i = this.f8379g - 1;
            this.f8379g = i;
            return mo12696a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f8379g - 1;
    }
}
