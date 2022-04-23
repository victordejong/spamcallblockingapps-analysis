package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vg2.class */
public final class vg2<E> extends AbstractList<E> {

    /* renamed from: d */
    private static final wg2 f8910d = wg2.m5052b(vg2.class);

    /* renamed from: b */
    final List<E> f8911b;

    /* renamed from: c */
    final Iterator<E> f8912c;

    public vg2(List<E> list, Iterator<E> it) {
        this.f8911b = list;
        this.f8912c = it;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        if (this.f8911b.size() > i) {
            return this.f8911b.get(i);
        }
        if (this.f8912c.hasNext()) {
            this.f8911b.add(this.f8912c.next());
            return get(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<E> iterator() {
        return new ug2(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        wg2 wg2Var = f8910d;
        wg2Var.m5053a("potentially expensive size() call");
        wg2Var.m5053a("blowup running");
        while (this.f8912c.hasNext()) {
            this.f8911b.add(this.f8912c.next());
        }
        return this.f8911b.size();
    }
}
