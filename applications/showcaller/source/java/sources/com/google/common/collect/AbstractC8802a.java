package com.google.common.collect;

import com.google.common.base.C8756j;
import java.util.NoSuchElementException;
/* renamed from: com.google.common.collect.a */
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/a.class */
abstract class AbstractC8802a<E> extends AbstractC8822r<E> {

    /* renamed from: d */
    private final int f38722d;

    /* renamed from: e */
    private int f38723e;

    public AbstractC8802a(int i, int i2) {
        C8756j.m2786o(i2, i);
        this.f38722d = i;
        this.f38723e = i2;
    }

    /* renamed from: a */
    protected abstract E mo2639a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f38723e < this.f38722d;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f38723e > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i = this.f38723e;
            this.f38723e = i + 1;
            return mo2639a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f38723e;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i = this.f38723e - 1;
            this.f38723e = i;
            return mo2639a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f38723e - 1;
    }
}
