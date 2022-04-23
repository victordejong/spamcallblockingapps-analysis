package com.google.android.gms.internal.ads;

import java.util.ListIterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqk.class */
final class dqk implements ListIterator<String> {

    /* renamed from: a  reason: collision with root package name */
    private ListIterator<String> f27107a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ int f27108b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ dql f27109c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dqk(dql dqlVar, int i) {
        dnz dnzVar;
        this.f27109c = dqlVar;
        this.f27108b = i;
        dnzVar = dqlVar.f27110a;
        this.f27107a = dnzVar.listIterator(i);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f27107a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f27107a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f27107a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f27107a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f27107a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f27107a.previousIndex();
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
