package com.google.firebase.crashlytics.p293d.p297h;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: com.google.firebase.crashlytics.d.h.w */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/w.class */
public final class C9043w<E> implements List<E>, RandomAccess {

    /* renamed from: d */
    private final List<E> f39194d;

    private C9043w(List<E> list) {
        this.f39194d = Collections.unmodifiableList(list);
    }

    /* renamed from: c */
    public static <E> C9043w<E> m2086c(List<E> list) {
        return new C9043w<>(list);
    }

    /* renamed from: d */
    public static <E> C9043w<E> m2085d(E... eArr) {
        return new C9043w<>(Arrays.asList(eArr));
    }

    @Override // java.util.List
    public void add(int i, E e) {
        this.f39194d.add(i, e);
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(E e) {
        return this.f39194d.add(e);
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        return this.f39194d.addAll(i, collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        return this.f39194d.addAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.f39194d.clear();
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return this.f39194d.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.f39194d.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        return this.f39194d.equals(obj);
    }

    @Override // java.util.List
    public E get(int i) {
        return this.f39194d.get(i);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.f39194d.hashCode();
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return this.f39194d.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.f39194d.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return this.f39194d.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return this.f39194d.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return this.f39194d.listIterator();
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i) {
        return this.f39194d.listIterator(i);
    }

    @Override // java.util.List
    public E remove(int i) {
        return this.f39194d.remove(i);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        return this.f39194d.remove(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return this.f39194d.removeAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return this.f39194d.retainAll(collection);
    }

    @Override // java.util.List
    public E set(int i, E e) {
        return this.f39194d.set(i, e);
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return this.f39194d.size();
    }

    @Override // java.util.List
    public List<E> subList(int i, int i2) {
        return this.f39194d.subList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return this.f39194d.toArray();
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.f39194d.toArray(tArr);
    }
}
