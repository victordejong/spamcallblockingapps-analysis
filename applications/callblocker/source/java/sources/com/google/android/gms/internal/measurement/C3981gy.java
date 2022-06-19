package com.google.android.gms.internal.measurement;

import java.util.ListIterator;
/* renamed from: com.google.android.gms.internal.measurement.gy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/gy.class */
final class C3981gy implements ListIterator<String> {

    /* renamed from: a */
    private ListIterator<String> f18235a;

    /* renamed from: b */
    private final /* synthetic */ int f18236b;

    /* renamed from: c */
    private final /* synthetic */ C3982gz f18237c;

    public C3981gy(C3982gz c3982gz, int i) {
        AbstractC3923eu abstractC3923eu;
        this.f18237c = c3982gz;
        this.f18236b = i;
        abstractC3923eu = this.f18237c.f18238a;
        this.f18235a = abstractC3923eu.listIterator(this.f18236b);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f18235a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f18235a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f18235a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f18235a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f18235a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f18235a.previousIndex();
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
