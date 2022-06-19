package com.google.android.gms.common.data;

import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Releasable;
import java.io.Closeable;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataBuffer.class */
public interface DataBuffer<T> extends Iterable<T>, Releasable, Closeable {
    void close();

    @RecentlyNonNull
    T get(int i);

    int getCount();

    @RecentlyNullable
    @KeepForSdk
    Bundle getMetadata();

    @Deprecated
    boolean isClosed();

    @Override // java.lang.Iterable
    @RecentlyNonNull
    Iterator<T> iterator();

    void release();

    @RecentlyNonNull
    Iterator<T> singleRefIterator();
}
