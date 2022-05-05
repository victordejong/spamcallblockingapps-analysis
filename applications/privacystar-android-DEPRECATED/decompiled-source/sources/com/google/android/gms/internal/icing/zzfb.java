package com.google.android.gms.internal.icing;

import java.util.ListIterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfb.class */
final class zzfb implements ListIterator<String> {
    private final /* synthetic */ int val$index;
    private ListIterator<String> zzlq;
    private final /* synthetic */ zzfa zzlr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfb(zzfa zzfaVar, int i) {
        zzdb zzdbVar;
        this.zzlr = zzfaVar;
        this.val$index = i;
        zzdbVar = this.zzlr.zzlp;
        this.zzlq = zzdbVar.listIterator(this.val$index);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.zzlq.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.zzlq.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.zzlq.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.zzlq.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.zzlq.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.zzlq.previousIndex();
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
