package com.google.common.collect;

import com.google.common.base.C15391m;
import java.util.Iterator;
/* renamed from: com.google.common.collect.ax */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ax.class */
abstract class AbstractC15492ax<F, T> implements Iterator<T> {

    /* renamed from: a */
    final Iterator<? extends F> f55769a;

    public AbstractC15492ax(Iterator<? extends F> it2) {
        this.f55769a = (Iterator) C15391m.m8946a(it2);
    }

    /* renamed from: a */
    abstract T mo8818a(F f);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f55769a.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return mo8818a(this.f55769a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f55769a.remove();
    }
}
