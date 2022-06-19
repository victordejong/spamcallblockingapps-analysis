package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.C12045o;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: com.google.android.gms.common.data.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/data/c.class */
public final class C11950c<T> implements Iterator<T> {

    /* renamed from: a */
    protected final AbstractC11949b<T> f39439a;

    /* renamed from: b */
    protected int f39440b = -1;

    public C11950c(AbstractC11949b<T> abstractC11949b) {
        this.f39439a = (AbstractC11949b) C12045o.m19162a(abstractC11949b);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f39440b < this.f39439a.mo19251b() - 1;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            AbstractC11949b<T> abstractC11949b = this.f39439a;
            int i = this.f39440b + 1;
            this.f39440b = i;
            return abstractC11949b.mo19252a(i);
        }
        int i2 = this.f39440b;
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
