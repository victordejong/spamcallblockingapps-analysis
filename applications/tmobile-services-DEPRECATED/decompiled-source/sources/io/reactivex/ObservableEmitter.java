package io.reactivex;

import io.reactivex.annotations.Nullable;
import io.reactivex.disposables.Disposable;
/* loaded from: classes-dex2jar.jar:io/reactivex/ObservableEmitter.class */
public interface ObservableEmitter<T> extends Emitter<T> {
    /* renamed from: a */
    void mo3860a(@Nullable Disposable disposable);

    boolean isDisposed();
}
