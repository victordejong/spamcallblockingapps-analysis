package com.google.android.gms.internal.measurement;

import java.util.ListIterator;
/* renamed from: com.google.android.gms.internal.measurement.a8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/a8.class */
final class C7297a8 implements ListIterator<String> {

    /* renamed from: d */
    final ListIterator<String> f34331d;

    /* renamed from: e */
    final /* synthetic */ int f34332e;

    /* renamed from: f */
    final /* synthetic */ C7339d8 f34333f;

    public C7297a8(C7339d8 c7339d8, int i) {
        AbstractC7421j6 abstractC7421j6;
        this.f34333f = c7339d8;
        this.f34332e = i;
        abstractC7421j6 = c7339d8.f34403d;
        this.f34331d = abstractC7421j6.listIterator(i);
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f34331d.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f34331d.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return this.f34331d.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f34331d.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ String previous() {
        return this.f34331d.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f34331d.previousIndex();
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
