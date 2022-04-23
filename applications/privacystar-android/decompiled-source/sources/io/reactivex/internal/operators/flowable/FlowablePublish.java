package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.flowables.ConnectableFlowable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.fuseable.HasUpstreamPublisher;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublish.class */
public final class FlowablePublish<T> extends ConnectableFlowable<T> implements HasUpstreamPublisher<T> {
    static final long CANCELLED = Long.MIN_VALUE;
    final int bufferSize;
    final AtomicReference<PublishSubscriber<T>> current;
    final Publisher<T> onSubscribe;
    final Flowable<T> source;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublish$FlowablePublisher.class */
    public static final class FlowablePublisher<T> implements Publisher<T> {
        private final int bufferSize;
        private final AtomicReference<PublishSubscriber<T>> curr;

        FlowablePublisher(AtomicReference<PublishSubscriber<T>> atomicReference, int i) {
            this.curr = atomicReference;
            this.bufferSize = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x004f A[EDGE_INSN: B:19:0x004f->B:11:0x004f ?: BREAK  , SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0010 A[SYNTHETIC] */
        @Override // org.reactivestreams.Publisher
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void subscribe(org.reactivestreams.Subscriber<? super T> r6) {
            /*
                r5 = this;
                io.reactivex.internal.operators.flowable.FlowablePublish$InnerSubscriber r0 = new io.reactivex.internal.operators.flowable.FlowablePublish$InnerSubscriber
                r1 = r0
                r2 = r6
                r1.<init>(r2)
                r7 = r0
                r0 = r6
                r1 = r7
                r0.onSubscribe(r1)
            L_0x0010:
                r0 = r5
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.FlowablePublish$PublishSubscriber<T>> r0 = r0.curr
                java.lang.Object r0 = r0.get()
                io.reactivex.internal.operators.flowable.FlowablePublish$PublishSubscriber r0 = (io.reactivex.internal.operators.flowable.FlowablePublish.PublishSubscriber) r0
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L_0x0028
                r0 = r8
                r6 = r0
                r0 = r8
                boolean r0 = r0.isDisposed()
                if (r0 == 0) goto L_0x0047
            L_0x0028:
                io.reactivex.internal.operators.flowable.FlowablePublish$PublishSubscriber r0 = new io.reactivex.internal.operators.flowable.FlowablePublish$PublishSubscriber
                r1 = r0
                r2 = r5
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.FlowablePublish$PublishSubscriber<T>> r2 = r2.curr
                r3 = r5
                int r3 = r3.bufferSize
                r1.<init>(r2, r3)
                r6 = r0
                r0 = r5
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.FlowablePublish$PublishSubscriber<T>> r0 = r0.curr
                r1 = r8
                r2 = r6
                boolean r0 = r0.compareAndSet(r1, r2)
                if (r0 != 0) goto L_0x0047
                goto L_0x0010
            L_0x0047:
                r0 = r6
                r1 = r7
                boolean r0 = r0.add(r1)
                if (r0 == 0) goto L_0x0010
                r0 = r7
                long r0 = r0.get()
                r1 = -9223372036854775808
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0062
                r0 = r6
                r1 = r7
                r0.remove(r1)
                goto L_0x0067
            L_0x0062:
                r0 = r7
                r1 = r6
                r0.parent = r1
            L_0x0067:
                r0 = r6
                r0.dispatch()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowablePublish.FlowablePublisher.subscribe(org.reactivestreams.Subscriber):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber.class */
    public static final class InnerSubscriber<T> extends AtomicLong implements Subscription {
        private static final long serialVersionUID = -4453897557930727610L;
        final Subscriber<? super T> child;
        volatile PublishSubscriber<T> parent;

        InnerSubscriber(Subscriber<? super T> subscriber) {
            this.child = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            PublishSubscriber<T> publishSubscriber;
            if (get() != Long.MIN_VALUE && getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE && (publishSubscriber = this.parent) != null) {
                publishSubscriber.remove(this);
                publishSubscriber.dispatch();
            }
        }

        public long produced(long j) {
            return BackpressureHelper.producedCancel(this, j);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.addCancel(this, j);
                PublishSubscriber<T> publishSubscriber = this.parent;
                if (publishSubscriber != null) {
                    publishSubscriber.dispatch();
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber.class */
    static final class PublishSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Disposable {
        static final InnerSubscriber[] EMPTY = new InnerSubscriber[0];
        static final InnerSubscriber[] TERMINATED = new InnerSubscriber[0];
        private static final long serialVersionUID = -202316842419149694L;
        final int bufferSize;
        final AtomicReference<PublishSubscriber<T>> current;
        volatile SimpleQueue<T> queue;
        int sourceMode;
        volatile Object terminalEvent;

        /* renamed from: s */
        final AtomicReference<Subscription> f444s = new AtomicReference<>();
        final AtomicReference<InnerSubscriber[]> subscribers = new AtomicReference<>(EMPTY);
        final AtomicBoolean shouldConnect = new AtomicBoolean();

        PublishSubscriber(AtomicReference<PublishSubscriber<T>> atomicReference, int i) {
            this.current = atomicReference;
            this.bufferSize = i;
        }

        boolean add(InnerSubscriber<T> innerSubscriber) {
            InnerSubscriber[] innerSubscriberArr;
            InnerSubscriber[] innerSubscriberArr2;
            do {
                innerSubscriberArr = this.subscribers.get();
                if (innerSubscriberArr == TERMINATED) {
                    return false;
                }
                int length = innerSubscriberArr.length;
                innerSubscriberArr2 = new InnerSubscriber[length + 1];
                System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr2, 0, length);
                innerSubscriberArr2[length] = innerSubscriber;
            } while (!this.subscribers.compareAndSet(innerSubscriberArr, innerSubscriberArr2));
            return true;
        }

        boolean checkTerminated(Object obj, boolean z) {
            if (obj == null) {
                return false;
            }
            if (!NotificationLite.isComplete(obj)) {
                Throwable error = NotificationLite.getError(obj);
                this.current.compareAndSet(this, null);
                InnerSubscriber[] andSet = this.subscribers.getAndSet(TERMINATED);
                if (andSet.length != 0) {
                    for (InnerSubscriber innerSubscriber : andSet) {
                        innerSubscriber.child.onError(error);
                    }
                    return true;
                }
                RxJavaPlugins.onError(error);
                return true;
            } else if (!z) {
                return false;
            } else {
                this.current.compareAndSet(this, null);
                for (InnerSubscriber innerSubscriber2 : this.subscribers.getAndSet(TERMINATED)) {
                    innerSubscriber2.child.onComplete();
                }
                return true;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r13v0 */
        /* JADX WARN: Type inference failed for: r13v1, types: [long] */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Type inference failed for: r19v2 */
        /* JADX WARN: Type inference failed for: r19v3 */
        /* JADX WARN: Type inference failed for: r19v4, types: [long] */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void dispatch() {
            /*
                Method dump skipped, instructions count: 522
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowablePublish.PublishSubscriber.dispatch():void");
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.subscribers.get() != TERMINATED && this.subscribers.getAndSet(TERMINATED) != TERMINATED) {
                this.current.compareAndSet(this, null);
                SubscriptionHelper.cancel(this.f444s);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.subscribers.get() == TERMINATED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.terminalEvent == null) {
                this.terminalEvent = NotificationLite.complete();
                dispatch();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.terminalEvent == null) {
                this.terminalEvent = NotificationLite.error(th);
                dispatch();
                return;
            }
            RxJavaPlugins.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.sourceMode != 0 || this.queue.offer(t)) {
                dispatch();
            } else {
                onError(new MissingBackpressureException("Prefetch queue is full?!"));
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this.f444s, subscription)) {
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(3);
                    if (requestFusion == 1) {
                        this.sourceMode = requestFusion;
                        this.queue = queueSubscription;
                        this.terminalEvent = NotificationLite.complete();
                        dispatch();
                        return;
                    } else if (requestFusion == 2) {
                        this.sourceMode = requestFusion;
                        this.queue = queueSubscription;
                        subscription.request(this.bufferSize);
                        return;
                    }
                }
                this.queue = new SpscArrayQueue(this.bufferSize);
                subscription.request(this.bufferSize);
            }
        }

        void remove(InnerSubscriber<T> innerSubscriber) {
            InnerSubscriber[] innerSubscriberArr;
            InnerSubscriber[] innerSubscriberArr2;
            do {
                innerSubscriberArr = this.subscribers.get();
                int length = innerSubscriberArr.length;
                if (length != 0) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (innerSubscriberArr[i2].equals(innerSubscriber)) {
                            i = i2;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i >= 0) {
                        if (length == 1) {
                            innerSubscriberArr2 = EMPTY;
                        } else {
                            innerSubscriberArr2 = new InnerSubscriber[length - 1];
                            System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr2, 0, i);
                            System.arraycopy(innerSubscriberArr, i + 1, innerSubscriberArr2, i, (length - i) - 1);
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!this.subscribers.compareAndSet(innerSubscriberArr, innerSubscriberArr2));
        }
    }

    private FlowablePublish(Publisher<T> publisher, Flowable<T> flowable, AtomicReference<PublishSubscriber<T>> atomicReference, int i) {
        this.onSubscribe = publisher;
        this.source = flowable;
        this.current = atomicReference;
        this.bufferSize = i;
    }

    public static <T> ConnectableFlowable<T> create(Flowable<T> flowable, int i) {
        AtomicReference atomicReference = new AtomicReference();
        return RxJavaPlugins.onAssembly((ConnectableFlowable) new FlowablePublish(new FlowablePublisher(atomicReference, i), flowable, atomicReference, i));
    }

    @Override // io.reactivex.flowables.ConnectableFlowable
    public void connect(Consumer<? super Disposable> consumer) {
        PublishSubscriber<T> publishSubscriber;
        PublishSubscriber<T> publishSubscriber2;
        do {
            publishSubscriber = this.current.get();
            if (publishSubscriber != null) {
                publishSubscriber2 = publishSubscriber;
                if (!publishSubscriber.isDisposed()) {
                    break;
                }
            }
            publishSubscriber2 = new PublishSubscriber<>(this.current, this.bufferSize);
        } while (!this.current.compareAndSet(publishSubscriber, publishSubscriber2));
        boolean z = true;
        if (publishSubscriber2.shouldConnect.get() || !publishSubscriber2.shouldConnect.compareAndSet(false, true)) {
            z = false;
        }
        try {
            consumer.accept(publishSubscriber2);
            if (z) {
                this.source.subscribe((FlowableSubscriber) publishSubscriber2);
            }
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            throw ExceptionHelper.wrapOrThrow(th);
        }
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamPublisher
    public Publisher<T> source() {
        return this.source;
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super T> subscriber) {
        this.onSubscribe.subscribe(subscriber);
    }
}
