package com.google.android.gms.internal.ads;

import java.util.ListIterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeof.class */
final class zzeof implements ListIterator<String> {
    private final /* synthetic */ int zzhzx;
    private ListIterator<String> zzivc;
    private final /* synthetic */ zzeog zzivd;

    public zzeof(zzeog zzeogVar, int i) {
        zzelv zzelvVar;
        this.zzivd = zzeogVar;
        this.zzhzx = i;
        zzelvVar = zzeogVar.zzive;
        this.zzivc = zzelvVar.listIterator(i);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.zzivc.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.zzivc.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.zzivc.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.zzivc.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.zzivc.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.zzivc.previousIndex();
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
