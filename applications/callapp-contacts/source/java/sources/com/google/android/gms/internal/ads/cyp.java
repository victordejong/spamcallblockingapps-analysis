package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyp.class */
abstract class cyp<E> extends czz<E> {

    /* renamed from: a */
    private final int f46770a;

    /* renamed from: b */
    private int f46771b;

    public cyp(int i, int i2) {
        cyg.m17056b(i2, i);
        this.f46770a = i;
        this.f46771b = i2;
    }

    /* renamed from: a */
    protected abstract E mo17029a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f46771b < this.f46770a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f46771b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i = this.f46771b;
            this.f46771b = i + 1;
            return mo17029a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f46771b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i = this.f46771b - 1;
            this.f46771b = i;
            return mo17029a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f46771b - 1;
    }
}
