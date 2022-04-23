package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
import java.util.NoSuchElementException;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataBufferIterator.class */
public class DataBufferIterator<T> implements Iterator<T> {

    /* renamed from: f */
    protected final DataBuffer<T> f7384f;

    /* renamed from: g */
    protected int f7385g = -1;

    public DataBufferIterator(DataBuffer<T> dataBuffer) {
        Preconditions.m14523k(dataBuffer);
        this.f7384f = dataBuffer;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f7385g < this.f7384f.getCount() - 1;
    }

    @Override // java.util.Iterator
    public T next() {
        if (hasNext()) {
            DataBuffer<T> dataBuffer = this.f7384f;
            int i = this.f7385g + 1;
            this.f7385g = i;
            return dataBuffer.get(i);
        }
        int i2 = this.f7385g;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Cannot advance the iterator beyond ");
        sb.append(i2);
        throw new NoSuchElementException(sb.toString());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
