package com.google.common.collect;

import com.google.common.base.C15391m;
import java.util.NoSuchElementException;
/* renamed from: com.google.common.collect.a */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/a.class */
abstract class AbstractC15401a<E> extends AbstractC15494az<E> {

    /* renamed from: a */
    private final int f55652a;

    /* renamed from: b */
    private int f55653b;

    protected AbstractC15401a(int i) {
        this(i, 0);
    }

    public AbstractC15401a(int i, int i2) {
        C15391m.m8935b(i2, i);
        this.f55652a = i;
        this.f55653b = i2;
    }

    /* renamed from: a */
    protected abstract E mo8714a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f55653b < this.f55652a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f55653b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i = this.f55653b;
            this.f55653b = i + 1;
            return mo8714a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f55653b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i = this.f55653b - 1;
            this.f55653b = i;
            return mo8714a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f55653b - 1;
    }
}
