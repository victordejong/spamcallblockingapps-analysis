package io.reactivex;

import io.reactivex.annotations.NonNull;
/* loaded from: classes-dex2jar.jar:io/reactivex/SingleEmitter.class */
public interface SingleEmitter<T> {
    void onError(@NonNull Throwable th);

    void onSuccess(@NonNull T t);
}
