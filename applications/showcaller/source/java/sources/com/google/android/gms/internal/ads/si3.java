package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/si3.class */
public final class si3<E> extends AbstractList<E> {

    /* renamed from: d */
    private static final ti3 f29532d = ti3.m10651b(si3.class);

    /* renamed from: e */
    final List<E> f29533e;

    /* renamed from: f */
    final Iterator<E> f29534f;

    public si3(List<E> list, Iterator<E> it) {
        this.f29533e = list;
        this.f29534f = it;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        if (this.f29533e.size() > i) {
            return this.f29533e.get(i);
        }
        if (!this.f29534f.hasNext()) {
            throw new NoSuchElementException();
        }
        this.f29533e.add(this.f29534f.next());
        return get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<E> iterator() {
        return new ri3(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        ti3 ti3Var = f29532d;
        ti3Var.mo10652a("potentially expensive size() call");
        ti3Var.mo10652a("blowup running");
        while (this.f29534f.hasNext()) {
            this.f29533e.add(this.f29534f.next());
        }
        return this.f29533e.size();
    }
}
