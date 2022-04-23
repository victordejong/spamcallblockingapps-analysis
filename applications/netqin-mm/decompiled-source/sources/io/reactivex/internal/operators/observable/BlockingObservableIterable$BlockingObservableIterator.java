package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p543b0.p557i.C9801c;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator.class */
public final class BlockingObservableIterable$BlockingObservableIterator<T> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<T>, Iterator<T>, AbstractC9861b {
    public static final long serialVersionUID = 6695226475494099826L;
    public final Condition condition;
    public volatile boolean done;
    public Throwable error;
    public final Lock lock;
    public final C9772a<T> queue;

    public BlockingObservableIterable$BlockingObservableIterator(int i) {
        this.queue = new C9772a<>(i);
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.condition = reentrantLock.newCondition();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        while (true) {
            boolean z = this.done;
            boolean isEmpty = this.queue.isEmpty();
            if (z) {
                Throwable th = this.error;
                if (th != null) {
                    throw ExceptionHelper.m222b(th);
                } else if (isEmpty) {
                    return false;
                }
            }
            if (!isEmpty) {
                return true;
            }
            try {
                C9801c.m2007a();
                this.lock.lock();
                while (!this.done && this.queue.isEmpty()) {
                    this.condition.await();
                }
                this.lock.unlock();
            } catch (InterruptedException e) {
                DisposableHelper.dispose(this);
                signalConsumer();
                throw ExceptionHelper.m222b(e);
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // java.util.Iterator
    public T next() {
        if (hasNext()) {
            return this.queue.poll();
        }
        throw new NoSuchElementException();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.done = true;
        signalConsumer();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.error = th;
        this.done = true;
        signalConsumer();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        this.queue.offer(t);
        signalConsumer();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove");
    }

    public void signalConsumer() {
        this.lock.lock();
        try {
            this.condition.signalAll();
        } finally {
            this.lock.unlock();
        }
    }
}
