package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dhm.class */
final class dhm implements Iterator<E> {

    /* renamed from: a */
    private int f14364a = 0;

    /* renamed from: b */
    private final /* synthetic */ dhj f14365b;

    public dhm(dhj dhjVar) {
        this.f14365b = dhjVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f14364a < this.f14365b.f14361a.size() || this.f14365b.f14362b.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [E, java.lang.Object] */
    @Override // java.util.Iterator
    public final E next() {
        while (this.f14364a >= this.f14365b.f14361a.size()) {
            this.f14365b.f14361a.add(this.f14365b.f14362b.next());
        }
        List<E> list = this.f14365b.f14361a;
        int i = this.f14364a;
        this.f14364a = i + 1;
        return list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
