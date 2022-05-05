package io.reactivex.internal.observers;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/observers/InnerQueuedObserverSupport.class */
public interface InnerQueuedObserverSupport<T> {
    void drain();

    void innerComplete(InnerQueuedObserver<T> innerQueuedObserver);

    void innerError(InnerQueuedObserver<T> innerQueuedObserver, Throwable th);

    void innerNext(InnerQueuedObserver<T> innerQueuedObserver, T t);
}
