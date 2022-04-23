package com.fasterxml.jackson.databind.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/ArrayIterator.class */
public class ArrayIterator<T> implements Iterable<T>, Iterator<T> {
    private final T[] _a;
    private int _index = 0;

    public ArrayIterator(T[] tArr) {
        this._a = tArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this._index < this._a.length;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return this;
    }

    @Override // java.util.Iterator
    public T next() {
        int i = this._index;
        T[] tArr = this._a;
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
