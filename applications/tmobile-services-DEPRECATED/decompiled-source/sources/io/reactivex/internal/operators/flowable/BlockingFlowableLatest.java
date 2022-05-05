package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.Notification;
import io.reactivex.internal.util.BlockingHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.subscribers.DisposableSubscriber;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/BlockingFlowableLatest.class */
public final class BlockingFlowableLatest<T> implements Iterable<T> {

    /* renamed from: f */
    final Publisher<? extends T> f15422f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/BlockingFlowableLatest$LatestSubscriberIterator.class */
    static final class LatestSubscriberIterator<T> extends DisposableSubscriber<Notification<T>> implements Iterator<T> {

        /* renamed from: g */
        final Semaphore f15423g = new Semaphore(0);

        /* renamed from: h */
        final AtomicReference<Notification<T>> f15424h = new AtomicReference<>();

        /* renamed from: i */
        Notification<T> f15425i;

        LatestSubscriberIterator() {
        }

        /* renamed from: c */
        public void onNext(Notification<T> notification) {
            if (this.f15424h.getAndSet(notification) == null) {
                this.f15423g.release();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Notification<T> notification = this.f15425i;
            if (notification == null || !notification.m4478g()) {
                Notification<T> notification2 = this.f15425i;
                if ((notification2 == null || notification2.m4477h()) && this.f15425i == null) {
                    try {
                        BlockingHelper.m3447b();
                        this.f15423g.acquire();
                        Notification<T> andSet = this.f15424h.getAndSet(null);
                        this.f15425i = andSet;
                        if (andSet.m4478g()) {
                            throw ExceptionHelper.m3434e(andSet.m4481d());
                        }
                    } catch (InterruptedException e) {
                        dispose();
                        this.f15425i = Notification.m4483b(e);
                        throw ExceptionHelper.m3434e(e);
                    }
                }
                return this.f15425i.m4477h();
            }
            throw ExceptionHelper.m3434e(this.f15425i.m4481d());
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext() || !this.f15425i.m4477h()) {
                throw new NoSuchElementException();
            }
            T e = this.f15425i.m4480e();
            this.f15425i = null;
            return e;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            RxJavaPlugins.m3354t(th);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        LatestSubscriberIterator latestSubscriberIterator = new LatestSubscriberIterator();
        Flowable.m4507g(this.f15422f).m4504j().m4493v(latestSubscriberIterator);
        return latestSubscriberIterator;
    }
}
