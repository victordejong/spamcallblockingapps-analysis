package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlq.class */
abstract class dlq<E> extends AbstractList<E> implements dnr<E> {

    /* renamed from: a */
    private boolean f47188a = true;

    @Override // com.google.android.gms.internal.ads.dnr
    /* renamed from: a */
    public boolean mo16298a() {
        return this.f47188a;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, E e) {
        m16501c();
        super.add(i, e);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        m16501c();
        return super.add(e);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        m16501c();
        return super.addAll(i, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> collection) {
        m16501c();
        return super.addAll(collection);
    }

    @Override // com.google.android.gms.internal.ads.dnr
    /* renamed from: b */
    public final void mo16303b() {
        this.f47188a = false;
    }

    /* renamed from: c */
    public final void m16501c() {
        if (this.f47188a) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        m16501c();
        super.clear();
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        if (!(obj instanceof RandomAccess)) {
            return super.equals(obj);
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!get(i).equals(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (i * 31) + get(i2).hashCode();
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public E remove(int i) {
        m16501c();
        return (E) super.remove(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m16501c();
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        remove(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> collection) {
        m16501c();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<?> collection) {
        m16501c();
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i, E e) {
        m16501c();
        return (E) super.set(i, e);
    }
}
