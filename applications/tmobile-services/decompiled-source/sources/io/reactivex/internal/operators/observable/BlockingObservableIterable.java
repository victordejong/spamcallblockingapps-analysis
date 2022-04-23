package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.util.BlockingHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/BlockingObservableIterable.class */
public final class BlockingObservableIterable<T> implements Iterable<T> {

    /* renamed from: f */
    final ObservableSource<? extends T> f17498f;

    /* renamed from: g */
    final int f17499g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator.class */
    static final class BlockingObservableIterator<T> extends AtomicReference<Disposable> implements Observer<T>, Iterator<T>, Disposable {
        private static final long serialVersionUID = 6695226475494099826L;

        /* renamed from: f */
        final SpscLinkedArrayQueue<T> f17500f;

        /* renamed from: g */
        final Lock f17501g;

        /* renamed from: h */
        final Condition f17502h;

        /* renamed from: i */
        volatile boolean f17503i;

        /* renamed from: j */
        volatile Throwable f17504j;

        BlockingObservableIterator(int i) {
            this.f17500f = new SpscLinkedArrayQueue<>(i);
            ReentrantLock reentrantLock = new ReentrantLock();
            this.f17501g = reentrantLock;
            this.f17502h = reentrantLock.newCondition();
        }

        /* renamed from: a */
        void m3913a() {
            this.f17501g.lock();
            try {
                this.f17502h.signalAll();
            } finally {
                this.f17501g.unlock();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
            m3913a();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (!isDisposed()) {
                boolean z = this.f17503i;
                boolean isEmpty = this.f17500f.isEmpty();
                if (z) {
                    Throwable th = this.f17504j;
                    if (th != null) {
                        throw ExceptionHelper.m3434e(th);
                    } else if (isEmpty) {
                        return false;
                    }
                }
                if (!isEmpty) {
                    return true;
                }
                try {
                    BlockingHelper.m3447b();
                    this.f17501g.lock();
                    while (!this.f17503i && this.f17500f.isEmpty() && !isDisposed()) {
                        this.f17502h.await();
                    }
                    this.f17501g.unlock();
                } catch (InterruptedException e) {
                    DisposableHelper.dispose(this);
                    m3913a();
                    throw ExceptionHelper.m3434e(e);
                }
            }
            Throwable th2 = this.f17504j;
            if (th2 == null) {
                return false;
            }
            throw ExceptionHelper.m3434e(th2);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                return this.f17500f.poll();
            }
            throw new NoSuchElementException();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17503i = true;
            m3913a();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f17504j = th;
            this.f17503i = true;
            m3913a();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f17500f.offer(t);
            m3913a();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }
    }

    public BlockingObservableIterable(ObservableSource<? extends T> observableSource, int i) {
        this.f17498f = observableSource;
        this.f17499g = i;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        BlockingObservableIterator blockingObservableIterator = new BlockingObservableIterator(this.f17499g);
        this.f17498f.subscribe(blockingObservableIterator);
        return blockingObservableIterator;
    }
}
