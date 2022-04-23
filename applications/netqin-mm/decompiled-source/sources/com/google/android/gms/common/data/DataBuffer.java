package com.google.android.gms.common.data;

import com.google.android.gms.common.api.Releasable;
import java.io.Closeable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataBuffer.class */
public interface DataBuffer<T> extends Releasable, Closeable, Iterable<T> {
    T get(int i);

    int getCount();
}
