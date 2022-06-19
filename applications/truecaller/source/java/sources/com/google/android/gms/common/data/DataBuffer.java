package com.google.android.gms.common.data;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.Releasable;
import java.io.Closeable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/data/DataBuffer.class */
public interface DataBuffer<T> extends Iterable<T>, Releasable, Closeable {
    @RecentlyNonNull
    T get(int i);

    int getCount();
}
