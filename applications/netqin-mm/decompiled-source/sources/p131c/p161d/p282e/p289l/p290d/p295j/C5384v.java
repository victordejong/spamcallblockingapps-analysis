package p131c.p161d.p282e.p289l.p290d.p295j;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: c.d.e.l.d.j.v */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/v.class */
public final class C5384v<E> implements List<E>, RandomAccess {

    /* renamed from: a */
    public final List<E> f18297a;

    public C5384v(List<E> list) {
        this.f18297a = Collections.unmodifiableList(list);
    }

    /* renamed from: a */
    public static <E> C5384v<E> m23974a(List<E> list) {
        return new C5384v<>(list);
    }

    /* renamed from: a */
    public static <E> C5384v<E> m23973a(E... eArr) {
        return new C5384v<>(Arrays.asList(eArr));
    }

    @Override // java.util.List
    public void add(int i, E e) {
        this.f18297a.add(i, e);
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(E e) {
        return this.f18297a.add(e);
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        return this.f18297a.addAll(i, collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        return this.f18297a.addAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.f18297a.clear();
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return this.f18297a.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.f18297a.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        return this.f18297a.equals(obj);
    }

    @Override // java.util.List
    public E get(int i) {
        return this.f18297a.get(i);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.f18297a.hashCode();
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return this.f18297a.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.f18297a.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return this.f18297a.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return this.f18297a.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return this.f18297a.listIterator();
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i) {
        return this.f18297a.listIterator(i);
    }

    @Override // java.util.List
    public E remove(int i) {
        return this.f18297a.remove(i);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        return this.f18297a.remove(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return this.f18297a.removeAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return this.f18297a.retainAll(collection);
    }

    @Override // java.util.List
    public E set(int i, E e) {
        return this.f18297a.set(i, e);
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return this.f18297a.size();
    }

    @Override // java.util.List
    public List<E> subList(int i, int i2) {
        return this.f18297a.subList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return this.f18297a.toArray();
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.f18297a.toArray(tArr);
    }
}
