package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableConcat.class */
public final class CompletableConcat extends Completable {
    final int prefetch;
    final Publisher<? extends CompletableSource> sources;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber.class */
    static final class CompletableConcatSubscriber extends AtomicInteger implements FlowableSubscriber<CompletableSource>, Disposable {
        private static final long serialVersionUID = 9032184911934499404L;
        volatile boolean active;
        final CompletableObserver actual;
        int consumed;
        volatile boolean done;
        final int limit;
        final int prefetch;
        SimpleQueue<CompletableSource> queue;

        /* renamed from: s */
        Subscription f358s;
        int sourceFused;
        final ConcatInnerObserver inner = new ConcatInnerObserver(this);
        final AtomicBoolean once = new AtomicBoolean();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber$ConcatInnerObserver.class */
        public static final class ConcatInnerObserver extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = -5454794857847146511L;
            final CompletableConcatSubscriber parent;

            ConcatInnerObserver(CompletableConcatSubscriber completableConcatSubscriber) {
                this.parent = completableConcatSubscriber;
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                this.parent.innerComplete();
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                this.parent.innerError(th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.replace(this, disposable);
            }
        }

        CompletableConcatSubscriber(CompletableObserver completableObserver, int i) {
            this.actual = completableObserver;
            this.prefetch = i;
            this.limit = i - (i >> 2);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f358s.cancel();
            DisposableHelper.dispose(this.inner);
        }

        void drain() {
            if (getAndIncrement() == 0) {
                while (!isDisposed()) {
                    if (!this.active) {
                        boolean z = this.done;
                        try {
                            CompletableSource poll = this.queue.poll();
                            boolean z2 = poll == null;
                            if (!z || !z2) {
                                if (!z2) {
                                    this.active = true;
                                    poll.subscribe(this.inner);
                                    request();
                                }
                            } else if (this.once.compareAndSet(false, true)) {
                                this.actual.onComplete();
                                return;
                            } else {
                                return;
                            }
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            innerError(th);
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        void innerComplete() {
            this.active = false;
            drain();
        }

        void innerError(Throwable th) {
            if (this.once.compareAndSet(false, true)) {
                this.f358s.cancel();
                this.actual.onError(th);
                return;
            }
            RxJavaPlugins.onError(th);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.inner.get());
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.once.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.inner);
                this.actual.onError(th);
                return;
            }
            RxJavaPlugins.onError(th);
        }

        public void onNext(CompletableSource completableSource) {
            if (this.sourceFused != 0 || this.queue.offer(completableSource)) {
                drain();
            } else {
                onError(new MissingBackpressureException());
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f358s, subscription)) {
                this.f358s = subscription;
                long j = this.prefetch == Integer.MAX_VALUE ? Long.MAX_VALUE : this.prefetch;
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(3);
                    if (requestFusion == 1) {
                        this.sourceFused = requestFusion;
                        this.queue = queueSubscription;
                        this.done = true;
                        this.actual.onSubscribe(this);
                        drain();
                        return;
                    } else if (requestFusion == 2) {
                        this.sourceFused = requestFusion;
                        this.queue = queueSubscription;
                        this.actual.onSubscribe(this);
                        subscription.request(j);
                        return;
                    }
                }
                if (this.prefetch == Integer.MAX_VALUE) {
                    this.queue = new SpscLinkedArrayQueue(Flowable.bufferSize());
                } else {
                    this.queue = new SpscArrayQueue(this.prefetch);
                }
                this.actual.onSubscribe(this);
                subscription.request(j);
            }
        }

        void request() {
            if (this.sourceFused != 1) {
                int i = this.consumed + 1;
                if (i == this.limit) {
                    this.consumed = 0;
                    this.f358s.request(i);
                    return;
                }
                this.consumed = i;
            }
        }
    }

    public CompletableConcat(Publisher<? extends CompletableSource> publisher, int i) {
        this.sources = publisher;
        this.prefetch = i;
    }

    @Override // io.reactivex.Completable
    public void subscribeActual(CompletableObserver completableObserver) {
        this.sources.subscribe(new CompletableConcatSubscriber(completableObserver, this.prefetch));
    }
}
