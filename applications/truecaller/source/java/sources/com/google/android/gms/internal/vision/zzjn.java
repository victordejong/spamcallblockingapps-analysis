package com.google.android.gms.internal.vision;

import java.util.ListIterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzjn.class */
public final class zzjn implements ListIterator<String> {
    private ListIterator<String> zzaal;
    private final /* synthetic */ int zzaam;
    private final /* synthetic */ zzjo zzaan;

    public zzjn(zzjo zzjoVar, int i) {
        this.zzaan = zzjoVar;
        this.zzaam = i;
        this.zzaal = zzjo.zza(zzjoVar).listIterator(i);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.zzaal.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.zzaal.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.zzaal.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.zzaal.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.zzaal.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.zzaal.previousIndex();
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
