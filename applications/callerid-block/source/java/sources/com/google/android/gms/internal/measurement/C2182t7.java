package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* renamed from: com.google.android.gms.internal.measurement.t7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/t7.class */
final class C2182t7 implements Iterator<String> {

    /* renamed from: b */
    final Iterator<String> f9843b;

    /* renamed from: c */
    final /* synthetic */ v7 f9844c;

    C2182t7(v7 v7Var) {
        this.f9844c = v7Var;
        this.f9843b = v7.a(v7Var).iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f9843b.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.f9843b.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
