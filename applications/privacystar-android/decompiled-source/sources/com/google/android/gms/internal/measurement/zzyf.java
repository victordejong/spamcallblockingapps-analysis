package com.google.android.gms.internal.measurement;

import java.util.ListIterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzyf.class */
final class zzyf implements ListIterator<String> {
    private ListIterator<String> zzccr;
    private final /* synthetic */ int zzccs;
    private final /* synthetic */ zzye zzcct;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzyf(zzye zzyeVar, int i) {
        zzwc zzwcVar;
        this.zzcct = zzyeVar;
        this.zzccs = i;
        zzwcVar = this.zzcct.zzccq;
        this.zzccr = zzwcVar.listIterator(this.zzccs);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.zzccr.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.zzccr.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.zzccr.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.zzccr.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.zzccr.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.zzccr.previousIndex();
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
