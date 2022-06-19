package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dhj.class */
public class dhj<E> extends AbstractList<E> {

    /* renamed from: c */
    private static final dhl f14360c = dhl.m9456a(dhj.class);

    /* renamed from: a */
    List<E> f14361a;

    /* renamed from: b */
    Iterator<E> f14362b;

    public dhj(List<E> list, Iterator<E> it) {
        this.f14361a = list;
        this.f14362b = it;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        E e;
        if (this.f14361a.size() > i) {
            e = this.f14361a.get(i);
        } else if (!this.f14362b.hasNext()) {
            throw new NoSuchElementException();
        } else {
            this.f14361a.add(this.f14362b.next());
            e = get(i);
        }
        return e;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new dhm(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        f14360c.mo9455a("potentially expensive size() call");
        f14360c.mo9455a("blowup running");
        while (this.f14362b.hasNext()) {
            this.f14361a.add(this.f14362b.next());
        }
        return this.f14361a.size();
    }
}
