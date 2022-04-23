package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ug2.class */
final class ug2 implements Iterator {

    /* renamed from: b */
    int f8782b = 0;

    /* renamed from: c */
    final /* synthetic */ vg2 f8783c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ug2(vg2 vg2Var) {
        this.f8783c = vg2Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8782b < this.f8783c.f8911b.size() || this.f8783c.f8912c.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f8782b < this.f8783c.f8911b.size()) {
            List<E> list = this.f8783c.f8911b;
            int i = this.f8782b;
            this.f8782b = i + 1;
            return list.get(i);
        }
        vg2 vg2Var = this.f8783c;
        vg2Var.f8911b.add(vg2Var.f8912c.next());
        return next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
