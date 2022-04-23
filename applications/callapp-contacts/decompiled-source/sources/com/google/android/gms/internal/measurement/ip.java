package com.google.android.gms.internal.measurement;

import java.util.ListIterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ip.class */
final class ip implements ListIterator<String> {

    /* renamed from: a  reason: collision with root package name */
    final ListIterator<String> f29136a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f29137b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ is f29138c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ip(is isVar, int i) {
        gz gzVar;
        this.f29138c = isVar;
        this.f29137b = i;
        gzVar = isVar.f29141a;
        this.f29136a = gzVar.listIterator(i);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f29136a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f29136a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return this.f29136a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f29136a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ String previous() {
        return this.f29136a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f29136a.previousIndex();
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
