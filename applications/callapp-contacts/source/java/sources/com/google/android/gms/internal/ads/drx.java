package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drx.class */
public class drx<E> extends AbstractList<E> {

    /* renamed from: c */
    private static final drz f47488c = drz.m15790a(drx.class);

    /* renamed from: a */
    List<E> f47489a;

    /* renamed from: b */
    Iterator<E> f47490b;

    public drx(List<E> list, Iterator<E> it2) {
        this.f47489a = list;
        this.f47490b = it2;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        if (this.f47489a.size() > i) {
            return this.f47489a.get(i);
        }
        if (!this.f47490b.hasNext()) {
            throw new NoSuchElementException();
        }
        this.f47489a.add(this.f47490b.next());
        return get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new dsa(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        drz drzVar = f47488c;
        drzVar.mo15789a("potentially expensive size() call");
        drzVar.mo15789a("blowup running");
        while (this.f47490b.hasNext()) {
            this.f47489a.add(this.f47490b.next());
        }
        return this.f47489a.size();
    }
}
