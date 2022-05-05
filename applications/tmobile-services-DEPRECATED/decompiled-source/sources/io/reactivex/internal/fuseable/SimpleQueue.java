package io.reactivex.internal.fuseable;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/fuseable/SimpleQueue.class */
public interface SimpleQueue<T> {
    void clear();

    boolean isEmpty();

    boolean offer(@NonNull T t);

    @Nullable
    T poll() throws Exception;
}
