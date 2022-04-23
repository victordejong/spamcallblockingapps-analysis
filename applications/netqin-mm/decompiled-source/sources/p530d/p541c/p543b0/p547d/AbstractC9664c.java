package p530d.p541c.p543b0.p547d;

import io.reactivex.internal.observers.InnerQueuedObserver;
/* renamed from: d.c.b0.d.c */
/* loaded from: classes2-dex2jar.jar:d/c/b0/d/c.class */
public interface AbstractC9664c<T> {
    void drain();

    void innerComplete(InnerQueuedObserver<T> innerQueuedObserver);

    void innerError(InnerQueuedObserver<T> innerQueuedObserver, Throwable th);

    void innerNext(InnerQueuedObserver<T> innerQueuedObserver, T t);
}
