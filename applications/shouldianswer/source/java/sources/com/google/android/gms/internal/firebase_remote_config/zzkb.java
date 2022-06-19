package com.google.android.gms.internal.firebase_remote_config;

import java.util.ListIterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzkb.class */
final class zzkb implements ListIterator<String> {
    private ListIterator<String> zzxi;
    private final /* synthetic */ int zzxj;
    private final /* synthetic */ zzkc zzxk;

    public zzkb(zzkc zzkcVar, int i) {
        zzhx zzhxVar;
        this.zzxk = zzkcVar;
        this.zzxj = i;
        zzhxVar = this.zzxk.zzxl;
        this.zzxi = zzhxVar.listIterator(this.zzxj);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.zzxi.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.zzxi.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.zzxi.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.zzxi.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.zzxi.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.zzxi.previousIndex();
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
