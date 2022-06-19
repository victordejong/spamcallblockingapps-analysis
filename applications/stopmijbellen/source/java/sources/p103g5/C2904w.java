package p103g5;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: g5.w */
/* loaded from: classes-dex2jar.jar:g5/w.class */
public final class C2904w<E> implements List<E>, RandomAccess {

    /* renamed from: a */
    public final List<E> f9790a;

    public C2904w(List<E> list) {
        this.f9790a = Collections.unmodifiableList(list);
    }

    @Override // java.util.List
    public void add(int i, E e) {
        this.f9790a.add(i, e);
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(E e) {
        return this.f9790a.add(e);
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        return this.f9790a.addAll(i, collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        return this.f9790a.addAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.f9790a.clear();
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return this.f9790a.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.f9790a.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        return this.f9790a.equals(obj);
    }

    @Override // java.util.List
    public E get(int i) {
        return this.f9790a.get(i);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.f9790a.hashCode();
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return this.f9790a.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.f9790a.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return this.f9790a.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return this.f9790a.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return this.f9790a.listIterator();
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i) {
        return this.f9790a.listIterator(i);
    }

    @Override // java.util.List
    public E remove(int i) {
        return this.f9790a.remove(i);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        return this.f9790a.remove(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return this.f9790a.removeAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return this.f9790a.retainAll(collection);
    }

    @Override // java.util.List
    public E set(int i, E e) {
        return this.f9790a.set(i, e);
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return this.f9790a.size();
    }

    @Override // java.util.List
    public List<E> subList(int i, int i2) {
        return this.f9790a.subList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return this.f9790a.toArray();
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.f9790a.toArray(tArr);
    }
}
