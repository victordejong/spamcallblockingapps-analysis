package com.google.android.gms.internal.measurement;

import java.util.ListIterator;
/* renamed from: com.google.android.gms.internal.measurement.ip */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ip.class */
final class C13584ip implements ListIterator<String> {

    /* renamed from: a */
    final ListIterator<String> f50855a;

    /* renamed from: b */
    final /* synthetic */ int f50856b;

    /* renamed from: c */
    final /* synthetic */ C13587is f50857c;

    public C13584ip(C13587is c13587is, int i) {
        AbstractC13540gz abstractC13540gz;
        this.f50857c = c13587is;
        this.f50856b = i;
        abstractC13540gz = c13587is.f50860a;
        this.f50855a = abstractC13540gz.listIterator(i);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f50855a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f50855a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return this.f50855a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f50855a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ String previous() {
        return this.f50855a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f50855a.previousIndex();
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
