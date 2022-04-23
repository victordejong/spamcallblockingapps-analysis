package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.o;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/data/c.class */
public final class c<T> implements Iterator<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final b<T> f22800a;

    /* renamed from: b  reason: collision with root package name */
    protected int f22801b = -1;

    public c(b<T> bVar) {
        this.f22800a = (b) o.a(bVar);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f22801b < this.f22800a.b() - 1;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            b<T> bVar = this.f22800a;
            int i = this.f22801b + 1;
            this.f22801b = i;
            return bVar.a(i);
        }
        int i2 = this.f22801b;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Cannot advance the iterator beyond ");
        sb.append(i2);
        throw new NoSuchElementException(sb.toString());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
