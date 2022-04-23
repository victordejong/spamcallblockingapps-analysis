package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drx.class */
public class drx<E> extends AbstractList<E> {

    /* renamed from: c  reason: collision with root package name */
    private static final drz f27141c = drz.a(drx.class);

    /* renamed from: a  reason: collision with root package name */
    List<E> f27142a;

    /* renamed from: b  reason: collision with root package name */
    Iterator<E> f27143b;

    public drx(List<E> list, Iterator<E> it2) {
        this.f27142a = list;
        this.f27143b = it2;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        if (this.f27142a.size() > i) {
            return this.f27142a.get(i);
        }
        if (this.f27143b.hasNext()) {
            this.f27142a.add(this.f27143b.next());
            return get(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new dsa(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        drz drzVar = f27141c;
        drzVar.a("potentially expensive size() call");
        drzVar.a("blowup running");
        while (this.f27143b.hasNext()) {
            this.f27142a.add(this.f27143b.next());
        }
        return this.f27142a.size();
    }
}
