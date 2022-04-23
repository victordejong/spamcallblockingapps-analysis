package io.reactivex;

import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/CompletableObserver.class */
public interface CompletableObserver {
    void onComplete();

    void onError(@NonNull Throwable th);

    void onSubscribe(@NonNull Disposable disposable);
}
