package io.reactivex.internal.observers;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/observers/BlockingObserver.class */
public final class BlockingObserver<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable {

    /* renamed from: g */
    public static final Object f15182g = new Object();
    private static final long serialVersionUID = -4875965440900746268L;

    /* renamed from: f */
    final Queue<Object> f15183f;

    public BlockingObserver(Queue<Object> queue) {
        this.f15183f = queue;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        if (DisposableHelper.dispose(this)) {
            this.f15183f.offer(f15182g);
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        this.f15183f.offer(NotificationLite.complete());
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        this.f15183f.offer(NotificationLite.error(th));
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        this.f15183f.offer(NotificationLite.next(t));
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        DisposableHelper.setOnce(this, disposable);
    }
}
