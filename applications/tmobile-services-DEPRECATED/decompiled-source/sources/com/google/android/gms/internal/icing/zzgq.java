package com.google.android.gms.internal.icing;

import java.util.ListIterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgq.class */
final class zzgq implements ListIterator<String> {

    /* renamed from: f */
    private ListIterator<String> f8098f;

    /* renamed from: g */
    private final /* synthetic */ int f8099g;

    /* renamed from: h */
    private final /* synthetic */ zzgr f8100h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgq(zzgr zzgrVar, int i) {
        zzeo zzeoVar;
        this.f8100h = zzgrVar;
        this.f8099g = i;
        zzeoVar = this.f8100h.f8101f;
        this.f8098f = zzeoVar.listIterator(this.f8099g);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f8098f.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f8098f.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f8098f.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f8098f.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f8098f.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f8098f.previousIndex();
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
