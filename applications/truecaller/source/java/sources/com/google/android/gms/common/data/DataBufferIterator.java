package com.google.android.gms.common.data;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p193e.p1432d.p1439c.p1440a.C22128a;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/data/DataBufferIterator.class */
public class DataBufferIterator<T> implements Iterator<T> {
    @RecentlyNonNull

    /* renamed from: a */
    public final DataBuffer<T> f5917a;

    /* renamed from: b */
    public int f5918b = -1;

    public DataBufferIterator(@RecentlyNonNull DataBuffer<T> dataBuffer) {
        this.f5917a = dataBuffer;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f5918b < this.f5917a.getCount() - 1;
    }

    @Override // java.util.Iterator
    @RecentlyNonNull
    public T next() {
        if (hasNext()) {
            DataBuffer<T> dataBuffer = this.f5917a;
            int i = this.f5918b + 1;
            this.f5918b = i;
            return dataBuffer.get(i);
        }
        throw new NoSuchElementException(C22128a.m8690L1(46, "Cannot advance the iterator beyond ", this.f5918b));
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
