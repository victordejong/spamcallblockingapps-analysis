package io.reactivex.internal.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/observers/BlockingObserver.class */
public final class BlockingObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<T>, AbstractC9861b {
    public static final Object TERMINATED = new Object();
    public static final long serialVersionUID = -4875965440900746268L;
    public final Queue<Object> queue;

    public BlockingObserver(Queue<Object> queue) {
        this.queue = queue;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (DisposableHelper.dispose(this)) {
            this.queue.offer(TERMINATED);
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.queue.offer(NotificationLite.complete());
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.queue.offer(NotificationLite.error(th));
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        this.queue.offer(NotificationLite.next(t));
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }
}
