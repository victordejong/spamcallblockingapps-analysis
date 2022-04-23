package com.google.android.gms.internal.ads;

import java.util.ListIterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xe2.class */
final class xe2 implements ListIterator<String> {

    /* renamed from: b */
    final ListIterator<String> f9104b;

    /* renamed from: c */
    final /* synthetic */ int f9105c;

    /* renamed from: d */
    final /* synthetic */ ze2 f9106d;

    xe2(ze2 ze2Var, int i) {
        this.f9106d = ze2Var;
        this.f9105c = i;
        this.f9104b = ze2.a(ze2Var).listIterator(i);
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f9104b.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f9104b.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return this.f9104b.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f9104b.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ String previous() {
        return this.f9104b.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f9104b.previousIndex();
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
