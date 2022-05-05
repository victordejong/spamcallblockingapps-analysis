package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscribers.QueueDrainSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.processors.UnicastProcessor;
import io.reactivex.subscribers.DisposableSubscriber;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector.class */
public final class FlowableWindowBoundarySelector<T, B, V> extends AbstractFlowableWithUpstream<T, Flowable<T>> {

    /* renamed from: h */
    final Publisher<B> f16830h;

    /* renamed from: i */
    final Function<? super B, ? extends Publisher<V>> f16831i;

    /* renamed from: j */
    final int f16832j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$OperatorWindowBoundaryCloseSubscriber.class */
    public static final class OperatorWindowBoundaryCloseSubscriber<T, V> extends DisposableSubscriber<V> {

        /* renamed from: g */
        final WindowBoundaryMainSubscriber<T, ?, V> f16833g;

        /* renamed from: h */
        final UnicastProcessor<T> f16834h;

        /* renamed from: i */
        boolean f16835i;

        OperatorWindowBoundaryCloseSubscriber(WindowBoundaryMainSubscriber<T, ?, V> windowBoundaryMainSubscriber, UnicastProcessor<T> unicastProcessor) {
            this.f16833g = windowBoundaryMainSubscriber;
            this.f16834h = unicastProcessor;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16835i) {
                this.f16835i = true;
                this.f16833g.m4039m(this);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16835i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16835i = true;
            this.f16833g.m4037o(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(V v) {
            m3174a();
            onComplete();
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$OperatorWindowBoundaryOpenSubscriber.class */
    static final class OperatorWindowBoundaryOpenSubscriber<T, B> extends DisposableSubscriber<B> {

        /* renamed from: g */
        final WindowBoundaryMainSubscriber<T, B, ?> f16836g;

        OperatorWindowBoundaryOpenSubscriber(WindowBoundaryMainSubscriber<T, B, ?> windowBoundaryMainSubscriber) {
            this.f16836g = windowBoundaryMainSubscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16836g.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16836g.m4037o(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(B b) {
            this.f16836g.m4036q(b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber.class */
    public static final class WindowBoundaryMainSubscriber<T, B, V> extends QueueDrainSubscriber<T, Object, Flowable<T>> implements Subscription {

        /* renamed from: m */
        final Publisher<B> f16837m;

        /* renamed from: n */
        final Function<? super B, ? extends Publisher<V>> f16838n;

        /* renamed from: o */
        final int f16839o;

        /* renamed from: q */
        Subscription f16841q;

        /* renamed from: r */
        final AtomicReference<Disposable> f16842r = new AtomicReference<>();

        /* renamed from: t */
        final AtomicLong f16844t = new AtomicLong();

        /* renamed from: u */
        final AtomicBoolean f16845u = new AtomicBoolean();

        /* renamed from: p */
        final CompositeDisposable f16840p = new CompositeDisposable();

        /* renamed from: s */
        final List<UnicastProcessor<T>> f16843s = new ArrayList();

        WindowBoundaryMainSubscriber(Subscriber<? super Flowable<T>> subscriber, Publisher<B> publisher, Function<? super B, ? extends Publisher<V>> function, int i) {
            super(subscriber, new MpscLinkedQueue());
            this.f16837m = publisher;
            this.f16838n = function;
            this.f16839o = i;
            this.f16844t.lazySet(1L);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.f16845u.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f16842r);
                if (this.f16844t.decrementAndGet() == 0) {
                    this.f16841q.cancel();
                }
            }
        }

        void dispose() {
            this.f16840p.dispose();
            DisposableHelper.dispose(this.f16842r);
        }

        @Override // io.reactivex.internal.subscribers.QueueDrainSubscriber, io.reactivex.internal.util.QueueDrain
        /* renamed from: f */
        public boolean mo3407f(Subscriber<? super Flowable<T>> subscriber, Object obj) {
            return false;
        }

        /* renamed from: m */
        void m4039m(OperatorWindowBoundaryCloseSubscriber<T, V> operatorWindowBoundaryCloseSubscriber) {
            this.f16840p.mo4424c(operatorWindowBoundaryCloseSubscriber);
            this.f19385i.offer(new WindowOperation(operatorWindowBoundaryCloseSubscriber.f16834h, null));
            if (m3478h()) {
                m4038n();
            }
        }

        /* renamed from: n */
        void m4038n() {
            SimpleQueue simpleQueue = this.f19385i;
            Subscriber<? super V> subscriber = this.f19384h;
            List<UnicastProcessor<T>> list = this.f16843s;
            int i = 1;
            while (true) {
                boolean z = this.f19387k;
                Object poll = simpleQueue.poll();
                boolean z2 = poll == null;
                if (z && z2) {
                    dispose();
                    Throwable th = this.f19388l;
                    if (th != null) {
                        for (UnicastProcessor<T> unicastProcessor : list) {
                            unicastProcessor.onError(th);
                        }
                    } else {
                        for (UnicastProcessor<T> unicastProcessor2 : list) {
                            unicastProcessor2.onComplete();
                        }
                    }
                    list.clear();
                    return;
                } else if (z2) {
                    int d = mo3409d(-i);
                    i = d;
                    if (d == 0) {
                        return;
                    }
                } else if (poll instanceof WindowOperation) {
                    WindowOperation windowOperation = (WindowOperation) poll;
                    UnicastProcessor<T> unicastProcessor3 = windowOperation.f16846a;
                    if (unicastProcessor3 != null) {
                        if (list.remove(unicastProcessor3)) {
                            windowOperation.f16846a.onComplete();
                            if (this.f16844t.decrementAndGet() == 0) {
                                dispose();
                                return;
                            }
                        } else {
                            continue;
                        }
                    } else if (!this.f16845u.get()) {
                        UnicastProcessor<T> F = UnicastProcessor.m3311F(this.f16839o);
                        long e = mo3408e();
                        if (e != 0) {
                            list.add(F);
                            subscriber.onNext(F);
                            if (e != Long.MAX_VALUE) {
                                mo3406g(1L);
                            }
                            try {
                                Object apply = this.f16838n.apply((B) windowOperation.f16847b);
                                ObjectHelper.m4363e(apply, "The publisher supplied is null");
                                Publisher publisher = (Publisher) apply;
                                OperatorWindowBoundaryCloseSubscriber operatorWindowBoundaryCloseSubscriber = new OperatorWindowBoundaryCloseSubscriber(this, F);
                                if (this.f16840p.mo4425b(operatorWindowBoundaryCloseSubscriber)) {
                                    this.f16844t.getAndIncrement();
                                    publisher.mo5c(operatorWindowBoundaryCloseSubscriber);
                                }
                            } catch (Throwable th2) {
                                cancel();
                                subscriber.onError(th2);
                            }
                        } else {
                            cancel();
                            subscriber.onError(new MissingBackpressureException("Could not deliver new window due to lack of requests"));
                        }
                    }
                } else {
                    for (UnicastProcessor<T> unicastProcessor4 : list) {
                        unicastProcessor4.onNext((T) NotificationLite.getValue(poll));
                    }
                }
            }
        }

        /* renamed from: o */
        void m4037o(Throwable th) {
            this.f16841q.cancel();
            this.f16840p.dispose();
            DisposableHelper.dispose(this.f16842r);
            this.f19384h.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f19387k) {
                this.f19387k = true;
                if (m3478h()) {
                    m4038n();
                }
                if (this.f16844t.decrementAndGet() == 0) {
                    this.f16840p.dispose();
                }
                this.f19384h.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f19387k) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f19388l = th;
            this.f19387k = true;
            if (m3478h()) {
                m4038n();
            }
            if (this.f16844t.decrementAndGet() == 0) {
                this.f16840p.dispose();
            }
            this.f19384h.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f19387k) {
                if (m3477i()) {
                    for (UnicastProcessor<T> unicastProcessor : this.f16843s) {
                        unicastProcessor.onNext(t);
                    }
                    if (mo3409d(-1) == 0) {
                        return;
                    }
                } else {
                    this.f19385i.offer(NotificationLite.next(t));
                    if (!m3478h()) {
                        return;
                    }
                }
                m4038n();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16841q, subscription)) {
                this.f16841q = subscription;
                this.f19384h.onSubscribe(this);
                if (!this.f16845u.get()) {
                    OperatorWindowBoundaryOpenSubscriber operatorWindowBoundaryOpenSubscriber = new OperatorWindowBoundaryOpenSubscriber(this);
                    if (this.f16842r.compareAndSet(null, operatorWindowBoundaryOpenSubscriber)) {
                        subscription.request(Long.MAX_VALUE);
                        this.f16837m.mo5c(operatorWindowBoundaryOpenSubscriber);
                    }
                }
            }
        }

        /* renamed from: q */
        void m4036q(B b) {
            this.f19385i.offer(new WindowOperation(null, b));
            if (m3478h()) {
                m4038n();
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            m3474l(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$WindowOperation.class */
    public static final class WindowOperation<T, B> {

        /* renamed from: a */
        final UnicastProcessor<T> f16846a;

        /* renamed from: b */
        final B f16847b;

        WindowOperation(UnicastProcessor<T> unicastProcessor, B b) {
            this.f16846a = unicastProcessor;
            this.f16847b = b;
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super Flowable<T>> subscriber) {
        this.f15411g.m4493v(new WindowBoundaryMainSubscriber(new SerializedSubscriber(subscriber), this.f16830h, this.f16831i, this.f16832j));
    }
}
