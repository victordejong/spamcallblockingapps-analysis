package com.google.common.collect;

import com.google.common.base.m;
import java.util.NoSuchElementException;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/a.class */
abstract class a<E> extends az<E> {

    /* renamed from: a  reason: collision with root package name */
    private final int f31948a;

    /* renamed from: b  reason: collision with root package name */
    private int f31949b;

    protected a(int i) {
        this(i, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(int i, int i2) {
        m.b(i2, i);
        this.f31948a = i;
        this.f31949b = i2;
    }

    protected abstract E a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f31949b < this.f31948a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f31949b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i = this.f31949b;
            this.f31949b = i + 1;
            return a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f31949b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i = this.f31949b - 1;
            this.f31949b = i;
            return a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f31949b - 1;
    }
}
