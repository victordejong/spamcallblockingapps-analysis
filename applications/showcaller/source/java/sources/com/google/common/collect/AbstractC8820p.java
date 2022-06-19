package com.google.common.collect;

import com.google.common.base.C8756j;
import java.util.Iterator;
/* renamed from: com.google.common.collect.p */
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/p.class */
abstract class AbstractC8820p<F, T> implements Iterator<T> {

    /* renamed from: d */
    final Iterator<? extends F> f38726d;

    public AbstractC8820p(Iterator<? extends F> it) {
        this.f38726d = (Iterator) C8756j.m2789l(it);
    }

    /* renamed from: a */
    abstract T mo2600a(F f);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f38726d.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return mo2600a(this.f38726d.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f38726d.remove();
    }
}
