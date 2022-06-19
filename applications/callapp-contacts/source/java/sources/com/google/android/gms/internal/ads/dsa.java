package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsa.class */
final class dsa implements Iterator<E> {

    /* renamed from: a */
    private int f47492a = 0;

    /* renamed from: b */
    private final /* synthetic */ drx f47493b;

    public dsa(drx drxVar) {
        this.f47493b = drxVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f47492a < this.f47493b.f47489a.size() || this.f47493b.f47490b.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [E, java.lang.Object] */
    @Override // java.util.Iterator
    public final E next() {
        while (this.f47492a >= this.f47493b.f47489a.size()) {
            this.f47493b.f47489a.add(this.f47493b.f47490b.next());
        }
        List<E> list = this.f47493b.f47489a;
        int i = this.f47492a;
        this.f47492a = i + 1;
        return list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
