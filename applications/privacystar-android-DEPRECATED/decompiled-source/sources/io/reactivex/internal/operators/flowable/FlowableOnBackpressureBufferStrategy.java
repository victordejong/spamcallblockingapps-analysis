package io.reactivex.internal.operators.flowable;

import io.reactivex.BackpressureOverflowStrategy;
import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.Action;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy.class */
public final class FlowableOnBackpressureBufferStrategy<T> extends AbstractFlowableWithUpstream<T, T> {
    final long bufferSize;
    final Action onOverflow;
    final BackpressureOverflowStrategy strategy;

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableOnBackpressureBufferStrategy$1 */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy$1.class */
    static /* synthetic */ class C18701 {
        static final /* synthetic */ int[] $SwitchMap$io$reactivex$BackpressureOverflowStrategy = new int[BackpressureOverflowStrategy.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$io$reactivex$BackpressureOverflowStrategy[BackpressureOverflowStrategy.DROP_LATEST.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$io$reactivex$BackpressureOverflowStrategy[BackpressureOverflowStrategy.DROP_OLDEST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy$OnBackpressureBufferStrategySubscriber.class */
    static final class OnBackpressureBufferStrategySubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 3240706908776709697L;
        final Subscriber<? super T> actual;
        final long bufferSize;
        volatile boolean cancelled;
        volatile boolean done;
        Throwable error;
        final Action onOverflow;

        /* renamed from: s */
        Subscription f440s;
        final BackpressureOverflowStrategy strategy;
        final AtomicLong requested = new AtomicLong();
        final Deque<T> deque = new ArrayDeque();

        OnBackpressureBufferStrategySubscriber(Subscriber<? super T> subscriber, Action action, BackpressureOverflowStrategy backpressureOverflowStrategy, long j) {
            this.actual = subscriber;
            this.onOverflow = action;
            this.strategy = backpressureOverflowStrategy;
            this.bufferSize = j;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
            this.f440s.cancel();
            if (getAndIncrement() == 0) {
                clear(this.deque);
            }
        }

        void clear(Deque<T> deque) {
            synchronized (deque) {
                deque.clear();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:40:0x00a3, code lost:
            if (r0 != 0) goto L_0x00f4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00aa, code lost:
            if (r5.cancelled == false) goto L_0x00b3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00ad, code lost:
            clear(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00b2, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00b3, code lost:
            r0 = r5.done;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00ba, code lost:
            monitor-enter(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00bb, code lost:
            r0 = r0.isEmpty();
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00c4, code lost:
            monitor-exit(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00c7, code lost:
            if (r0 == false) goto L_0x00f4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00ca, code lost:
            r0 = r5.error;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00d2, code lost:
            if (r0 == null) goto L_0x00e3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00d5, code lost:
            clear(r0);
            r0.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00e2, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00e5, code lost:
            if (r0 == false) goto L_0x00f4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00e8, code lost:
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00ee, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x00f8, code lost:
            if (r0 == 0) goto L_0x0105;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x00fb, code lost:
            io.reactivex.internal.util.BackpressureHelper.produced(r5.requested, r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x0105, code lost:
            r0 = addAndGet(-r8);
            r8 = r0;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void drain() {
            /*
                Method dump skipped, instructions count: 278
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableOnBackpressureBufferStrategy.OnBackpressureBufferStrategySubscriber.drain():void");
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            boolean z;
            boolean z2;
            if (!this.done) {
                Deque<T> deque = this.deque;
                synchronized (deque) {
                    z = false;
                    z = false;
                    z2 = true;
                    if (deque.size() == this.bufferSize) {
                        switch (C18701.$SwitchMap$io$reactivex$BackpressureOverflowStrategy[this.strategy.ordinal()]) {
                            case 1:
                                deque.pollLast();
                                deque.offer(t);
                                z = true;
                                break;
                            case 2:
                                deque.poll();
                                deque.offer(t);
                                z = true;
                                break;
                        }
                    } else {
                        deque.offer(t);
                    }
                    z2 = false;
                }
                if (z) {
                    if (this.onOverflow != null) {
                        try {
                            this.onOverflow.run();
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            this.f440s.cancel();
                            onError(th);
                        }
                    }
                } else if (z2) {
                    this.f440s.cancel();
                    onError(new MissingBackpressureException());
                } else {
                    drain();
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f440s, subscription)) {
                this.f440s = subscription;
                this.actual.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(this.requested, j);
                drain();
            }
        }
    }

    public FlowableOnBackpressureBufferStrategy(Flowable<T> flowable, long j, Action action, BackpressureOverflowStrategy backpressureOverflowStrategy) {
        super(flowable);
        this.bufferSize = j;
        this.onOverflow = action;
        this.strategy = backpressureOverflowStrategy;
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super T> subscriber) {
        this.source.subscribe((FlowableSubscriber) new OnBackpressureBufferStrategySubscriber(subscriber, this.onOverflow, this.strategy, this.bufferSize));
    }
}
