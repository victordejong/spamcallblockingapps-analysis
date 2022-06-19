package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* renamed from: com.google.android.gms.internal.measurement.b8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/b8.class */
final class C7311b8 implements Iterator<String> {

    /* renamed from: d */
    final Iterator<String> f34366d;

    /* renamed from: e */
    final /* synthetic */ C7339d8 f34367e;

    public C7311b8(C7339d8 c7339d8) {
        AbstractC7421j6 abstractC7421j6;
        this.f34367e = c7339d8;
        abstractC7421j6 = c7339d8.f34403d;
        this.f34366d = abstractC7421j6.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f34366d.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.f34366d.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
