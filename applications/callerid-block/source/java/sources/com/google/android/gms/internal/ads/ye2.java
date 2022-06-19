package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ye2.class */
final class ye2 implements Iterator<String> {

    /* renamed from: b */
    final Iterator<String> f9219b;

    /* renamed from: c */
    final /* synthetic */ ze2 f9220c;

    ye2(ze2 ze2Var) {
        this.f9220c = ze2Var;
        this.f9219b = ze2.a(ze2Var).iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f9219b.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.f9219b.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
