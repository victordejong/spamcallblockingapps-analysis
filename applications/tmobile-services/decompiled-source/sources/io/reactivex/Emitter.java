package io.reactivex;

import io.reactivex.annotations.NonNull;
/* loaded from: classes-dex2jar.jar:io/reactivex/Emitter.class */
public interface Emitter<T> {
    void onComplete();

    void onError(@NonNull Throwable th);

    void onNext(@NonNull T t);
}
