package p660rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p660rx.Observable;
import p660rx.Producer;
import p660rx.Subscriber;
import p660rx.exceptions.Exceptions;
import p660rx.exceptions.MissingBackpressureException;
import p660rx.functions.Func1;
import p660rx.internal.producers.ProducerArbiter;
import p660rx.internal.util.ExceptionsUtils;
import p660rx.internal.util.ScalarSynchronousObservable;
import p660rx.internal.util.atomic.SpscAtomicArrayQueue;
import p660rx.internal.util.unsafe.SpscArrayQueue;
import p660rx.internal.util.unsafe.UnsafeAccess;
import p660rx.observers.SerializedSubscriber;
import p660rx.plugins.RxJavaHooks;
import p660rx.subscriptions.SerialSubscription;
/* renamed from: rx.internal.operators.OnSubscribeConcatMap */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeConcatMap.class */
public final class OnSubscribeConcatMap<T, R> implements Observable.OnSubscribe<R> {
    public final int delayErrorMode;
    public final Func1<? super T, ? extends Observable<? extends R>> mapper;
    public final int prefetch;
    public final Observable<? extends T> source;

    /* renamed from: rx.internal.operators.OnSubscribeConcatMap$ConcatMapInnerScalarProducer */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerScalarProducer.class */
    public static final class ConcatMapInnerScalarProducer<T, R> implements Producer {
        public boolean once;
        public final ConcatMapSubscriber<T, R> parent;
        public final R value;

        public ConcatMapInnerScalarProducer(R r, ConcatMapSubscriber<T, R> concatMapSubscriber) {
            this.value = r;
            this.parent = concatMapSubscriber;
        }

        @Override // p660rx.Producer
        public void request(long j) {
            if (!this.once && j > 0) {
                this.once = true;
                ConcatMapSubscriber<T, R> concatMapSubscriber = this.parent;
                concatMapSubscriber.innerNext(this.value);
                concatMapSubscriber.innerCompleted(1L);
            }
        }
    }

    /* renamed from: rx.internal.operators.OnSubscribeConcatMap$ConcatMapInnerSubscriber */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber.class */
    public static final class ConcatMapInnerSubscriber<T, R> extends Subscriber<R> {
        public final ConcatMapSubscriber<T, R> parent;
        public long produced;

        public ConcatMapInnerSubscriber(ConcatMapSubscriber<T, R> concatMapSubscriber) {
            this.parent = concatMapSubscriber;
        }

        @Override // p660rx.Observer
        public void onCompleted() {
            this.parent.innerCompleted(this.produced);
        }

        @Override // p660rx.Observer
        public void onError(Throwable th) {
            this.parent.innerError(th, this.produced);
        }

        @Override // p660rx.Observer
        public void onNext(R r) {
            this.produced++;
            this.parent.innerNext(r);
        }

        @Override // p660rx.Subscriber
        public void setProducer(Producer producer) {
            this.parent.arbiter.setProducer(producer);
        }
    }

    /* renamed from: rx.internal.operators.OnSubscribeConcatMap$ConcatMapSubscriber */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber.class */
    public static final class ConcatMapSubscriber<T, R> extends Subscriber<T> {
        public volatile boolean active;
        public final Subscriber<? super R> actual;
        public final int delayErrorMode;
        public volatile boolean done;
        public final SerialSubscription inner;
        public final Func1<? super T, ? extends Observable<? extends R>> mapper;
        public final Queue<Object> queue;
        public final ProducerArbiter arbiter = new ProducerArbiter();
        public final AtomicInteger wip = new AtomicInteger();
        public final AtomicReference<Throwable> error = new AtomicReference<>();

        public ConcatMapSubscriber(Subscriber<? super R> subscriber, Func1<? super T, ? extends Observable<? extends R>> func1, int i, int i2) {
            this.actual = subscriber;
            this.mapper = func1;
            this.delayErrorMode = i2;
            this.queue = UnsafeAccess.isUnsafeAvailable() ? new SpscArrayQueue<>(i) : new SpscAtomicArrayQueue<>(i);
            this.inner = new SerialSubscription();
            request(i);
        }

        public void drain() {
            if (this.wip.getAndIncrement() == 0) {
                int i = this.delayErrorMode;
                while (!this.actual.isUnsubscribed()) {
                    if (!this.active) {
                        if (i != 1 || this.error.get() == null) {
                            boolean z = this.done;
                            Object poll = this.queue.poll();
                            boolean z2 = poll == null;
                            if (z && z2) {
                                Throwable terminate = ExceptionsUtils.terminate(this.error);
                                if (terminate == null) {
                                    this.actual.onCompleted();
                                    return;
                                } else if (!ExceptionsUtils.isTerminated(terminate)) {
                                    this.actual.onError(terminate);
                                    return;
                                } else {
                                    return;
                                }
                            } else if (!z2) {
                                try {
                                    Observable observable = (Observable) this.mapper.call((Object) NotificationLite.getValue(poll));
                                    if (observable == null) {
                                        drainError(new NullPointerException("The source returned by the mapper was null"));
                                        return;
                                    } else if (observable != Observable.empty()) {
                                        if (observable instanceof ScalarSynchronousObservable) {
                                            this.active = true;
                                            this.arbiter.setProducer(new ConcatMapInnerScalarProducer(((ScalarSynchronousObservable) observable).get(), this));
                                        } else {
                                            ConcatMapInnerSubscriber concatMapInnerSubscriber = new ConcatMapInnerSubscriber(this);
                                            this.inner.set(concatMapInnerSubscriber);
                                            if (!concatMapInnerSubscriber.isUnsubscribed()) {
                                                this.active = true;
                                                observable.unsafeSubscribe(concatMapInnerSubscriber);
                                            } else {
                                                return;
                                            }
                                        }
                                        request(1L);
                                    } else {
                                        request(1L);
                                    }
                                } catch (Throwable th) {
                                    Exceptions.throwIfFatal(th);
                                    drainError(th);
                                    return;
                                }
                            }
                        } else {
                            Throwable terminate2 = ExceptionsUtils.terminate(this.error);
                            if (!ExceptionsUtils.isTerminated(terminate2)) {
                                this.actual.onError(terminate2);
                                return;
                            }
                            return;
                        }
                    }
                    if (this.wip.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        public void drainError(Throwable th) {
            unsubscribe();
            if (ExceptionsUtils.addThrowable(this.error, th)) {
                Throwable terminate = ExceptionsUtils.terminate(this.error);
                if (!ExceptionsUtils.isTerminated(terminate)) {
                    this.actual.onError(terminate);
                    return;
                }
                return;
            }
            pluginError(th);
        }

        public void innerCompleted(long j) {
            if (j != 0) {
                this.arbiter.produced(j);
            }
            this.active = false;
            drain();
        }

        public void innerError(Throwable th, long j) {
            if (!ExceptionsUtils.addThrowable(this.error, th)) {
                pluginError(th);
            } else if (this.delayErrorMode == 0) {
                Throwable terminate = ExceptionsUtils.terminate(this.error);
                if (!ExceptionsUtils.isTerminated(terminate)) {
                    this.actual.onError(terminate);
                }
                unsubscribe();
            } else {
                if (j != 0) {
                    this.arbiter.produced(j);
                }
                this.active = false;
                drain();
            }
        }

        public void innerNext(R r) {
            this.actual.onNext(r);
        }

        @Override // p660rx.Observer
        public void onCompleted() {
            this.done = true;
            drain();
        }

        @Override // p660rx.Observer
        public void onError(Throwable th) {
            if (ExceptionsUtils.addThrowable(this.error, th)) {
                this.done = true;
                if (this.delayErrorMode == 0) {
                    Throwable terminate = ExceptionsUtils.terminate(this.error);
                    if (!ExceptionsUtils.isTerminated(terminate)) {
                        this.actual.onError(terminate);
                    }
                    this.inner.unsubscribe();
                    return;
                }
                drain();
                return;
            }
            pluginError(th);
        }

        @Override // p660rx.Observer
        public void onNext(T t) {
            if (!this.queue.offer(NotificationLite.next(t))) {
                unsubscribe();
                onError(new MissingBackpressureException());
                return;
            }
            drain();
        }

        public void pluginError(Throwable th) {
            RxJavaHooks.onError(th);
        }

        public void requestMore(long j) {
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i > 0) {
                this.arbiter.request(j);
            } else if (i < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            }
        }
    }

    public OnSubscribeConcatMap(Observable<? extends T> observable, Func1<? super T, ? extends Observable<? extends R>> func1, int i, int i2) {
        this.source = observable;
        this.mapper = func1;
        this.prefetch = i;
        this.delayErrorMode = i2;
    }

    @Override // p660rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object obj) {
        call((Subscriber) ((Subscriber) obj));
    }

    public void call(Subscriber<? super R> subscriber) {
        final ConcatMapSubscriber concatMapSubscriber = new ConcatMapSubscriber(this.delayErrorMode == 0 ? new SerializedSubscriber<>(subscriber) : subscriber, this.mapper, this.prefetch, this.delayErrorMode);
        subscriber.add(concatMapSubscriber);
        subscriber.add(concatMapSubscriber.inner);
        subscriber.setProducer(new Producer(this) { // from class: rx.internal.operators.OnSubscribeConcatMap.1
            @Override // p660rx.Producer
            public void request(long j) {
                concatMapSubscriber.requestMore(j);
            }
        });
        if (!subscriber.isUnsubscribed()) {
            this.source.unsafeSubscribe(concatMapSubscriber);
        }
    }
}
