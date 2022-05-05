package com.google.a.b;

import com.google.a.a.d;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/a/b/a.class */
abstract class a<E> extends af<E> {

    /* renamed from: a  reason: collision with root package name */
    private final int f3675a;

    /* renamed from: b  reason: collision with root package name */
    private int f3676b;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(int i) {
        this(i, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(int i, int i2) {
        d.b(i2, i);
        this.f3675a = i;
        this.f3676b = i2;
    }

    protected abstract E a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f3676b < this.f3675a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f3676b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f3676b;
        this.f3676b = i + 1;
        return a(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f3676b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.f3676b - 1;
        this.f3676b = i;
        return a(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f3676b - 1;
    }
}
