package io.reactivex.internal.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/VolatileSizeArrayList.class */
public final class VolatileSizeArrayList<T> extends AtomicInteger implements List<T>, RandomAccess {
    private static final long serialVersionUID = 3972397474470203923L;

    /* renamed from: f */
    final ArrayList<T> f19436f = new ArrayList<>();

    @Override // java.util.List
    public void add(int i, T t) {
        this.f19436f.add(i, t);
        lazySet(this.f19436f.size());
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(T t) {
        boolean add = this.f19436f.add(t);
        lazySet(this.f19436f.size());
        return add;
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends T> collection) {
        boolean addAll = this.f19436f.addAll(i, collection);
        lazySet(this.f19436f.size());
        return addAll;
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        boolean addAll = this.f19436f.addAll(collection);
        lazySet(this.f19436f.size());
        return addAll;
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.f19436f.clear();
        lazySet(0);
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return this.f19436f.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.f19436f.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        return obj instanceof VolatileSizeArrayList ? this.f19436f.equals(((VolatileSizeArrayList) obj).f19436f) : this.f19436f.equals(obj);
    }

    @Override // java.util.List
    public T get(int i) {
        return this.f19436f.get(i);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.f19436f.hashCode();
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return this.f19436f.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return get() == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return this.f19436f.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return this.f19436f.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<T> listIterator() {
        return this.f19436f.listIterator();
    }

    @Override // java.util.List
    public ListIterator<T> listIterator(int i) {
        return this.f19436f.listIterator(i);
    }

    @Override // java.util.List
    public T remove(int i) {
        T remove = this.f19436f.remove(i);
        lazySet(this.f19436f.size());
        return remove;
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        boolean remove = this.f19436f.remove(obj);
        lazySet(this.f19436f.size());
        return remove;
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        boolean removeAll = this.f19436f.removeAll(collection);
        lazySet(this.f19436f.size());
        return removeAll;
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        boolean retainAll = this.f19436f.retainAll(collection);
        lazySet(this.f19436f.size());
        return retainAll;
    }

    @Override // java.util.List
    public T set(int i, T t) {
        return this.f19436f.set(i, t);
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return get();
    }

    @Override // java.util.List
    public List<T> subList(int i, int i2) {
        return this.f19436f.subList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return this.f19436f.toArray();
    }

    @Override // java.util.List, java.util.Collection
    public <E> E[] toArray(E[] eArr) {
        return (E[]) this.f19436f.toArray(eArr);
    }

    @Override // java.util.concurrent.atomic.AtomicInteger
    public String toString() {
        return this.f19436f.toString();
    }
}
