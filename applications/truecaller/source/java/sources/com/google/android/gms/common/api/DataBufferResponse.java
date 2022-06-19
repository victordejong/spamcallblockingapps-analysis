package com.google.android.gms.common.api;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataBuffer;
import java.util.Iterator;
import java.util.Objects;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/DataBufferResponse.class */
public class DataBufferResponse<T, R extends AbstractDataBuffer<T> & Result> extends Response<R> implements DataBuffer<T> {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ((AbstractDataBuffer) this.f5719a).close();
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    @RecentlyNonNull
    public final T get(int i) {
        return (T) ((AbstractDataBuffer) this.f5719a).get(i);
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    public final int getCount() {
        return ((AbstractDataBuffer) this.f5719a).getCount();
    }

    @Override // java.lang.Iterable
    @RecentlyNonNull
    public final Iterator<T> iterator() {
        return ((AbstractDataBuffer) this.f5719a).iterator();
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final void release() {
        Objects.requireNonNull((AbstractDataBuffer) this.f5719a);
    }
}
