package com.google.common.collect;

import com.google.common.base.m;
import java.util.Iterator;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ax.class */
abstract class ax<F, T> implements Iterator<T> {

    /* renamed from: a  reason: collision with root package name */
    final Iterator<? extends F> f32041a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ax(Iterator<? extends F> it2) {
        this.f32041a = (Iterator) m.a(it2);
    }

    abstract T a(F f);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f32041a.hasNext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Iterator
    public final T next() {
        return (T) a(this.f32041a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f32041a.remove();
    }
}
