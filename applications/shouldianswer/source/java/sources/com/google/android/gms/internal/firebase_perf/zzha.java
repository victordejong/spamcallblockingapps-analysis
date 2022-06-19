package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzey;
import com.google.android.gms.internal.firebase-perf.zzhb;
import java.util.ListIterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzha.class */
final class zzha implements ListIterator<String> {
    private ListIterator<String> zzuf;
    private final /* synthetic */ int zzug;
    private final /* synthetic */ zzhb zzuh;

    public zzha(zzhb zzhbVar, int i) {
        zzey zzeyVar;
        this.zzuh = zzhbVar;
        this.zzug = i;
        zzeyVar = ((zzhb) this.zzuh).zzui;
        this.zzuf = zzeyVar.listIterator(this.zzug);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.zzuf.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.zzuf.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.zzuf.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.zzuf.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.zzuf.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.zzuf.previousIndex();
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
