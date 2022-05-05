package com.google.android.gms.common.data;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/AbstractDataBuffer.class */
public abstract class AbstractDataBuffer<T> implements DataBuffer<T> {

    /* renamed from: f */
    protected final DataHolder f7378f;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        release();
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    public abstract T get(int i);

    @Override // com.google.android.gms.common.data.DataBuffer
    public int getCount() {
        DataHolder dataHolder = this.f7378f;
        if (dataHolder == null) {
            return 0;
        }
        return dataHolder.getCount();
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new DataBufferIterator(this);
    }

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
        DataHolder dataHolder = this.f7378f;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }
}
