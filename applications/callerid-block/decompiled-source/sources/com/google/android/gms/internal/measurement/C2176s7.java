package com.google.android.gms.internal.measurement;

import java.util.ListIterator;
/* renamed from: com.google.android.gms.internal.measurement.s7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/s7.class */
final class C2176s7 implements ListIterator<String> {

    /* renamed from: b */
    final ListIterator<String> f9825b;

    /* renamed from: c */
    final /* synthetic */ int f9826c;

    /* renamed from: d */
    final /* synthetic */ v7 f9827d;

    C2176s7(v7 v7Var, int i) {
        this.f9827d = v7Var;
        this.f9826c = i;
        this.f9825b = v7.a(v7Var).listIterator(i);
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f9825b.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f9825b.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return this.f9825b.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f9825b.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ String previous() {
        return this.f9825b.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f9825b.previousIndex();
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
