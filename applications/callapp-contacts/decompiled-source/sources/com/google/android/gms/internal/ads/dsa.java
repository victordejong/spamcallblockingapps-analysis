package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsa.class */
final class dsa implements Iterator<E> {

    /* renamed from: a  reason: collision with root package name */
    private int f27145a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ drx f27146b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dsa(drx drxVar) {
        this.f27146b = drxVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f27145a < this.f27146b.f27142a.size() || this.f27146b.f27143b.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [E, java.lang.Object] */
    @Override // java.util.Iterator
    public final E next() {
        while (this.f27145a >= this.f27146b.f27142a.size()) {
            this.f27146b.f27142a.add(this.f27146b.f27143b.next());
        }
        List<E> list = this.f27146b.f27142a;
        int i = this.f27145a;
        this.f27145a = i + 1;
        return list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
