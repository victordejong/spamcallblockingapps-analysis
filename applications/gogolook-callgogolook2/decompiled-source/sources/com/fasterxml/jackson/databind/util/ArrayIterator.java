package com.fasterxml.jackson.databind.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/util/ArrayIterator.class */
public class ArrayIterator<T> implements Iterator<T>, Iterable<T> {

    /* renamed from: _a */
    public final T[] f3808_a;
    public int _index = 0;

    public ArrayIterator(T[] tArr) {
        this.f3808_a = tArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this._index < this.f3808_a.length;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return this;
    }

    @Override // java.util.Iterator
    public T next() {
        int i = this._index;
        T[] tArr = this.f3808_a;
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
