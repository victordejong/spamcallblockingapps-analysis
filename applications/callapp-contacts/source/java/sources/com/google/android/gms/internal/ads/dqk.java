package com.google.android.gms.internal.ads;

import java.util.ListIterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqk.class */
final class dqk implements ListIterator<String> {

    /* renamed from: a */
    private ListIterator<String> f47419a;

    /* renamed from: b */
    private final /* synthetic */ int f47420b;

    /* renamed from: c */
    private final /* synthetic */ dql f47421c;

    public dqk(dql dqlVar, int i) {
        dnz dnzVar;
        this.f47421c = dqlVar;
        this.f47420b = i;
        dnzVar = dqlVar.f47422a;
        this.f47419a = dnzVar.listIterator(i);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f47419a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f47419a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f47419a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f47419a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f47419a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f47419a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
