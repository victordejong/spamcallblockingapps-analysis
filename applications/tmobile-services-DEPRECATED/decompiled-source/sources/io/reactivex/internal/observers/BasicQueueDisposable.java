package io.reactivex.internal.observers;

import io.reactivex.internal.fuseable.QueueDisposable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/observers/BasicQueueDisposable.class */
public abstract class BasicQueueDisposable<T> implements QueueDisposable<T> {
    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called");
    }
}
