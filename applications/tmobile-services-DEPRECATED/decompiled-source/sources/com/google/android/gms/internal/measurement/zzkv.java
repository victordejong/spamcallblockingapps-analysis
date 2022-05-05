package com.google.android.gms.internal.measurement;

import java.util.ListIterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkv.class */
final class zzkv implements ListIterator<String> {

    /* renamed from: f */
    private ListIterator<String> f8627f;

    /* renamed from: g */
    private final /* synthetic */ int f8628g;

    /* renamed from: h */
    private final /* synthetic */ zzkw f8629h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkv(zzkw zzkwVar, int i) {
        zzis zzisVar;
        this.f8629h = zzkwVar;
        this.f8628g = i;
        zzisVar = this.f8629h.f8630f;
        this.f8627f = zzisVar.listIterator(this.f8628g);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f8627f.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f8627f.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f8627f.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f8627f.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f8627f.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f8627f.previousIndex();
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
