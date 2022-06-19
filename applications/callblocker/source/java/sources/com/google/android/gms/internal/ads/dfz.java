package com.google.android.gms.internal.ads;

import java.util.ListIterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dfz.class */
final class dfz implements ListIterator<String> {

    /* renamed from: a */
    private ListIterator<String> f14231a;

    /* renamed from: b */
    private final /* synthetic */ int f14232b;

    /* renamed from: c */
    private final /* synthetic */ dfw f14233c;

    public dfz(dfw dfwVar, int i) {
        ddm ddmVar;
        this.f14233c = dfwVar;
        this.f14232b = i;
        ddmVar = this.f14233c.f14228a;
        this.f14231a = ddmVar.listIterator(this.f14232b);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f14231a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f14231a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f14231a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f14231a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f14231a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f14231a.previousIndex();
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
