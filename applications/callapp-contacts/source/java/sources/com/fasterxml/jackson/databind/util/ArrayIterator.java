package com.fasterxml.jackson.databind.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/ArrayIterator.class */
public class ArrayIterator<T> implements Iterable<T>, Iterator<T> {

    /* renamed from: _a */
    private final T[] f34294_a;
    private int _index = 0;

    public ArrayIterator(T[] tArr) {
        this.f34294_a = tArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this._index < this.f34294_a.length;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return this;
    }

    @Override // java.util.Iterator
    public T next() {
        int i = this._index;
        T[] tArr = this.f34294_a;
        if (i < tArr.length) {
            this._index = i + 1;
            return tArr[i];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
