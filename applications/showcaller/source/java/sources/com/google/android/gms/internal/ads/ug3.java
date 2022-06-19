package com.google.android.gms.internal.ads;

import java.util.ListIterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ug3.class */
final class ug3 implements ListIterator<String> {

    /* renamed from: d */
    final ListIterator<String> f30605d;

    /* renamed from: e */
    final /* synthetic */ int f30606e;

    /* renamed from: f */
    final /* synthetic */ wg3 f30607f;

    public ug3(wg3 wg3Var, int i) {
        we3 we3Var;
        this.f30607f = wg3Var;
        this.f30606e = i;
        we3Var = wg3Var.f31579d;
        this.f30605d = we3Var.listIterator(i);
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f30605d.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f30605d.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return this.f30605d.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f30605d.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ String previous() {
        return this.f30605d.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f30605d.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
