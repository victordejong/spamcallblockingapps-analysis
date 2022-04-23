package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BlockingHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/BlockingFlowableIterable.class */
public final class BlockingFlowableIterable<T> implements Iterable<T> {

    /* renamed from: f */
    final Flowable<T> f15412f;

    /* renamed from: g */
    final int f15413g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator.class */
    static final class BlockingFlowableIterator<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T>, Iterator<T>, Runnable, Disposable {
        private static final long serialVersionUID = 6695226475494099826L;

        /* renamed from: f */
        final SpscArrayQueue<T> f15414f;

        /* renamed from: g */
        final long f15415g;

        /* renamed from: h */
        final long f15416h;

        /* renamed from: i */
        final Lock f15417i;

        /* renamed from: j */
        final Condition f15418j;

        /* renamed from: k */
        long f15419k;

        /* renamed from: l */
        volatile boolean f15420l;

        /* renamed from: m */
        volatile Throwable f15421m;

        BlockingFlowableIterator(int i) {
            this.f15414f = new SpscArrayQueue<>(i);
            this.f15415g = i;
            this.f15416h = i - (i >> 2);
            ReentrantLock reentrantLock = new ReentrantLock();
            this.f15417i = reentrantLock;
            this.f15418j = reentrantLock.newCondition();
        }

        /* renamed from: a */
        void m4318a() {
            this.f15417i.lock();
            try {
                this.f15418j.signalAll();
            } finally {
                this.f15417i.unlock();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            SubscriptionHelper.cancel(this);
            m4318a();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (!isDisposed()) {
                boolean z = this.f15420l;
                boolean isEmpty = this.f15414f.isEmpty();
                if (z) {
                    Throwable th = this.f15421m;
                    if (th != null) {
                        throw ExceptionHelper.m3434e(th);
                    } else if (isEmpty) {
                        return false;
                    }
                }
                if (!isEmpty) {
                    return true;
                }
                BlockingHelper.m3447b();
                this.f15417i.lock();
                while (!this.f15420l && this.f15414f.isEmpty() && !isDisposed()) {
                    try {
                        try {
                            this.f15418j.await();
                        } catch (InterruptedException e) {
                            run();
                            throw ExceptionHelper.m3434e(e);
                        }
                    } finally {
                        this.f15417i.unlock();
                    }
                }
            }
            Throwable th2 = this.f15421m;
            if (th2 == null) {
                return false;
            }
            throw ExceptionHelper.m3434e(th2);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T poll = this.f15414f.poll();
                long j = this.f15419k + 1;
                if (j == this.f15416h) {
                    this.f15419k = 0L;
                    get().request(j);
                } else {
                    this.f15419k = j;
                }
                return poll;
            }
            throw new NoSuchElementException();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f15420l = true;
            m4318a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f15421m = th;
            this.f15420l = true;
            m4318a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f15414f.offer(t)) {
                SubscriptionHelper.cancel(this);
                onError(new MissingBackpressureException("Queue full?!"));
                return;
            }
            m4318a();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.setOnce(this, subscription, this.f15415g);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }

        @Override // java.lang.Runnable
        public void run() {
            SubscriptionHelper.cancel(this);
            m4318a();
        }
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        BlockingFlowableIterator blockingFlowableIterator = new BlockingFlowableIterator(this.f15413g);
        this.f15412f.m4493v(blockingFlowableIterator);
        return blockingFlowableIterator;
    }
}
