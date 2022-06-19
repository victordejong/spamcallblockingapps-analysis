package com.google.android.gms.common.data;

import androidx.annotation.RecentlyNonNull;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/data/AbstractDataBuffer.class */
public abstract class AbstractDataBuffer<T> implements DataBuffer<T> {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    @RecentlyNonNull
    public abstract T get(int i);

    @Override // com.google.android.gms.common.data.DataBuffer
    public int getCount() {
        return 0;
    }

    @Override // java.lang.Iterable
    @RecentlyNonNull
    public Iterator<T> iterator() {
        return new DataBufferIterator(this);
    }

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
    }
}
