package io.reactivex.internal.operators.observable;

import io.reactivex.Notification;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.internal.util.BlockingHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.observers.DisposableObserver;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/BlockingObservableLatest.class */
public final class BlockingObservableLatest<T> implements Iterable<T> {

    /* renamed from: f */
    final ObservableSource<T> f17505f;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator.class */
    static final class BlockingObservableLatestIterator<T> extends DisposableObserver<Notification<T>> implements Iterator<T> {

        /* renamed from: g */
        Notification<T> f17506g;

        /* renamed from: h */
        final Semaphore f17507h = new Semaphore(0);

        /* renamed from: i */
        final AtomicReference<Notification<T>> f17508i = new AtomicReference<>();

        BlockingObservableLatestIterator() {
        }

        /* renamed from: b */
        public void onNext(Notification<T> notification) {
            if (this.f17508i.getAndSet(notification) == null) {
                this.f17507h.release();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Notification<T> notification = this.f17506g;
            if (notification == null || !notification.m4478g()) {
                if (this.f17506g == null) {
                    try {
                        BlockingHelper.m3447b();
                        this.f17507h.acquire();
                        Notification<T> andSet = this.f17508i.getAndSet(null);
                        this.f17506g = andSet;
                        if (andSet.m4478g()) {
                            throw ExceptionHelper.m3434e(andSet.m4481d());
                        }
                    } catch (InterruptedException e) {
                        dispose();
                        this.f17506g = Notification.m4483b(e);
                        throw ExceptionHelper.m3434e(e);
                    }
                }
                return this.f17506g.m4477h();
            }
            throw ExceptionHelper.m3434e(this.f17506g.m4481d());
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T e = this.f17506g.m4480e();
                this.f17506g = null;
                return e;
            }
            throw new NoSuchElementException();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            RxJavaPlugins.m3354t(th);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    public BlockingObservableLatest(ObservableSource<T> observableSource) {
        this.f17505f = observableSource;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        BlockingObservableLatestIterator blockingObservableLatestIterator = new BlockingObservableLatestIterator();
        Observable.wrap(this.f17505f).materialize().subscribe(blockingObservableLatestIterator);
        return blockingObservableLatestIterator;
    }
}
