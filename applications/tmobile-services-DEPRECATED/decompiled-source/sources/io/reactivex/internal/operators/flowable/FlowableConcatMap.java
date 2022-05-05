package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMap.class */
public final class FlowableConcatMap<T, R> extends AbstractFlowableWithUpstream<T, R> {

    /* renamed from: h */
    final Function<? super T, ? extends Publisher<? extends R>> f15641h;

    /* renamed from: i */
    final int f15642i;

    /* renamed from: j */
    final ErrorMode f15643j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.reactivex.internal.operators.flowable.FlowableConcatMap$1 */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMap$1.class */
    public static /* synthetic */ class C21171 {

        /* renamed from: a */
        static final /* synthetic */ int[] f15644a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ErrorMode.values().length];
            f15644a = iArr;
            try {
                iArr[ErrorMode.BOUNDARY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f15644a[ErrorMode.END.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber.class */
    public static abstract class BaseConcatMapSubscriber<T, R> extends AtomicInteger implements FlowableSubscriber<T>, ConcatMapSupport<R>, Subscription {
        private static final long serialVersionUID = -3511336836796789179L;

        /* renamed from: g */
        final Function<? super T, ? extends Publisher<? extends R>> f15646g;

        /* renamed from: h */
        final int f15647h;

        /* renamed from: i */
        final int f15648i;

        /* renamed from: j */
        Subscription f15649j;

        /* renamed from: k */
        int f15650k;

        /* renamed from: l */
        SimpleQueue<T> f15651l;

        /* renamed from: m */
        volatile boolean f15652m;

        /* renamed from: n */
        volatile boolean f15653n;

        /* renamed from: p */
        volatile boolean f15655p;

        /* renamed from: q */
        int f15656q;

        /* renamed from: f */
        final ConcatMapInner<R> f15645f = new ConcatMapInner<>(this);

        /* renamed from: o */
        final AtomicThrowable f15654o = new AtomicThrowable();

        BaseConcatMapSubscriber(Function<? super T, ? extends Publisher<? extends R>> function, int i) {
            this.f15646g = function;
            this.f15647h = i;
            this.f15648i = i - (i >> 2);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.ConcatMapSupport
        /* renamed from: c */
        public final void mo4274c() {
            this.f15655p = false;
            mo4278d();
        }

        /* renamed from: d */
        abstract void mo4278d();

        /* renamed from: e */
        abstract void mo4277e();

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            this.f15652m = true;
            mo4278d();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(T t) {
            if (this.f15656q == 2 || this.f15651l.offer(t)) {
                mo4278d();
                return;
            }
            this.f15649j.cancel();
            onError(new IllegalStateException("Queue full?!"));
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public final void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15649j, subscription)) {
                this.f15649j = subscription;
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f15656q = requestFusion;
                        this.f15651l = queueSubscription;
                        this.f15652m = true;
                        mo4277e();
                        mo4278d();
                        return;
                    } else if (requestFusion == 2) {
                        this.f15656q = requestFusion;
                        this.f15651l = queueSubscription;
                        mo4277e();
                        subscription.request(this.f15647h);
                        return;
                    }
                }
                this.f15651l = new SpscArrayQueue(this.f15647h);
                mo4277e();
                subscription.request(this.f15647h);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed.class */
    public static final class ConcatMapDelayed<T, R> extends BaseConcatMapSubscriber<T, R> {
        private static final long serialVersionUID = -2945777694260521066L;

        /* renamed from: r */
        final Subscriber<? super R> f15657r;

        /* renamed from: s */
        final boolean f15658s;

        ConcatMapDelayed(Subscriber<? super R> subscriber, Function<? super T, ? extends Publisher<? extends R>> function, int i, boolean z) {
            super(function, i);
            this.f15657r = subscriber;
            this.f15658s = z;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.ConcatMapSupport
        /* renamed from: a */
        public void mo4276a(Throwable th) {
            if (this.f15654o.m3456a(th)) {
                if (!this.f15658s) {
                    this.f15649j.cancel();
                    this.f15652m = true;
                }
                this.f15655p = false;
                mo4278d();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.ConcatMapSupport
        /* renamed from: b */
        public void mo4275b(R r) {
            this.f15657r.onNext(r);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f15653n) {
                this.f15653n = true;
                this.f15645f.cancel();
                this.f15649j.cancel();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.BaseConcatMapSubscriber
        /* renamed from: d */
        void mo4278d() {
            Object obj;
            if (getAndIncrement() == 0) {
                while (!this.f15653n) {
                    if (!this.f15655p) {
                        boolean z = this.f15652m;
                        if (!z || this.f15658s || this.f15654o.get() == null) {
                            try {
                                T poll = this.f15651l.poll();
                                boolean z2 = poll == null;
                                if (z && z2) {
                                    Throwable b = this.f15654o.m3455b();
                                    if (b != null) {
                                        this.f15657r.onError(b);
                                        return;
                                    } else {
                                        this.f15657r.onComplete();
                                        return;
                                    }
                                } else if (!z2) {
                                    try {
                                        Object apply = this.f15646g.apply(poll);
                                        ObjectHelper.m4363e(apply, "The mapper returned a null Publisher");
                                        Publisher publisher = (Publisher) apply;
                                        if (this.f15656q != 1) {
                                            int i = this.f15650k + 1;
                                            if (i == this.f15648i) {
                                                this.f15650k = 0;
                                                this.f15649j.request(i);
                                            } else {
                                                this.f15650k = i;
                                            }
                                        }
                                        if (publisher instanceof Callable) {
                                            try {
                                                obj = ((Callable) publisher).call();
                                            } catch (Throwable th) {
                                                Exceptions.m4428b(th);
                                                this.f15654o.m3456a(th);
                                                if (!this.f15658s) {
                                                    this.f15649j.cancel();
                                                    this.f15657r.onError(this.f15654o.m3455b());
                                                    return;
                                                }
                                                obj = null;
                                            }
                                            if (obj == null) {
                                                continue;
                                            } else if (this.f15645f.m3464f()) {
                                                this.f15657r.onNext(obj);
                                            } else {
                                                this.f15655p = true;
                                                this.f15645f.m3462h(new SimpleScalarSubscription(obj, this.f15645f));
                                            }
                                        } else {
                                            this.f15655p = true;
                                            publisher.mo5c(this.f15645f);
                                        }
                                    } catch (Throwable th2) {
                                        Exceptions.m4428b(th2);
                                        this.f15649j.cancel();
                                        this.f15654o.m3456a(th2);
                                        this.f15657r.onError(this.f15654o.m3455b());
                                        return;
                                    }
                                }
                            } catch (Throwable th3) {
                                Exceptions.m4428b(th3);
                                this.f15649j.cancel();
                                this.f15654o.m3456a(th3);
                                this.f15657r.onError(this.f15654o.m3455b());
                                return;
                            }
                        } else {
                            this.f15657r.onError(this.f15654o.m3455b());
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.BaseConcatMapSubscriber
        /* renamed from: e */
        void mo4277e() {
            this.f15657r.onSubscribe(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15654o.m3456a(th)) {
                this.f15652m = true;
                mo4278d();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f15645f.request(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapImmediate.class */
    public static final class ConcatMapImmediate<T, R> extends BaseConcatMapSubscriber<T, R> {
        private static final long serialVersionUID = 7898995095634264146L;

        /* renamed from: r */
        final Subscriber<? super R> f15659r;

        /* renamed from: s */
        final AtomicInteger f15660s = new AtomicInteger();

        ConcatMapImmediate(Subscriber<? super R> subscriber, Function<? super T, ? extends Publisher<? extends R>> function, int i) {
            super(function, i);
            this.f15659r = subscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.ConcatMapSupport
        /* renamed from: a */
        public void mo4276a(Throwable th) {
            if (this.f15654o.m3456a(th)) {
                this.f15649j.cancel();
                if (getAndIncrement() == 0) {
                    this.f15659r.onError(this.f15654o.m3455b());
                    return;
                }
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.ConcatMapSupport
        /* renamed from: b */
        public void mo4275b(R r) {
            if (get() == 0 && compareAndSet(0, 1)) {
                this.f15659r.onNext(r);
                if (!compareAndSet(1, 0)) {
                    this.f15659r.onError(this.f15654o.m3455b());
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f15653n) {
                this.f15653n = true;
                this.f15645f.cancel();
                this.f15649j.cancel();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.BaseConcatMapSubscriber
        /* renamed from: d */
        void mo4278d() {
            if (this.f15660s.getAndIncrement() == 0) {
                while (!this.f15653n) {
                    if (!this.f15655p) {
                        boolean z = this.f15652m;
                        try {
                            T poll = this.f15651l.poll();
                            boolean z2 = poll == null;
                            if (z && z2) {
                                this.f15659r.onComplete();
                                return;
                            } else if (!z2) {
                                try {
                                    Object apply = this.f15646g.apply(poll);
                                    ObjectHelper.m4363e(apply, "The mapper returned a null Publisher");
                                    Publisher publisher = (Publisher) apply;
                                    if (this.f15656q != 1) {
                                        int i = this.f15650k + 1;
                                        if (i == this.f15648i) {
                                            this.f15650k = 0;
                                            this.f15649j.request(i);
                                        } else {
                                            this.f15650k = i;
                                        }
                                    }
                                    if (publisher instanceof Callable) {
                                        try {
                                            Object call = ((Callable) publisher).call();
                                            if (call == null) {
                                                continue;
                                            } else if (!this.f15645f.m3464f()) {
                                                this.f15655p = true;
                                                this.f15645f.m3462h(new SimpleScalarSubscription(call, this.f15645f));
                                            } else if (get() == 0 && compareAndSet(0, 1)) {
                                                this.f15659r.onNext(call);
                                                if (!compareAndSet(1, 0)) {
                                                    this.f15659r.onError(this.f15654o.m3455b());
                                                    return;
                                                }
                                            }
                                        } catch (Throwable th) {
                                            Exceptions.m4428b(th);
                                            this.f15649j.cancel();
                                            this.f15654o.m3456a(th);
                                            this.f15659r.onError(this.f15654o.m3455b());
                                            return;
                                        }
                                    } else {
                                        this.f15655p = true;
                                        publisher.mo5c(this.f15645f);
                                    }
                                } catch (Throwable th2) {
                                    Exceptions.m4428b(th2);
                                    this.f15649j.cancel();
                                    this.f15654o.m3456a(th2);
                                    this.f15659r.onError(this.f15654o.m3455b());
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            Exceptions.m4428b(th3);
                            this.f15649j.cancel();
                            this.f15654o.m3456a(th3);
                            this.f15659r.onError(this.f15654o.m3455b());
                            return;
                        }
                    }
                    if (this.f15660s.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.BaseConcatMapSubscriber
        /* renamed from: e */
        void mo4277e() {
            this.f15659r.onSubscribe(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15654o.m3456a(th)) {
                this.f15645f.cancel();
                if (getAndIncrement() == 0) {
                    this.f15659r.onError(this.f15654o.m3455b());
                    return;
                }
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f15645f.request(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner.class */
    public static final class ConcatMapInner<R> extends SubscriptionArbiter implements FlowableSubscriber<R> {
        private static final long serialVersionUID = 897683679971470653L;

        /* renamed from: n */
        final ConcatMapSupport<R> f15661n;

        /* renamed from: o */
        long f15662o;

        ConcatMapInner(ConcatMapSupport<R> concatMapSupport) {
            super(false);
            this.f15661n = concatMapSupport;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            long j = this.f15662o;
            if (j != 0) {
                this.f15662o = 0L;
                m3463g(j);
            }
            this.f15661n.mo4274c();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            long j = this.f15662o;
            if (j != 0) {
                this.f15662o = 0L;
                m3463g(j);
            }
            this.f15661n.mo4276a(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(R r) {
            this.f15662o++;
            this.f15661n.mo4275b(r);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            m3462h(subscription);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapSupport.class */
    interface ConcatMapSupport<T> {
        /* renamed from: a */
        void mo4276a(Throwable th);

        /* renamed from: b */
        void mo4275b(T t);

        /* renamed from: c */
        void mo4274c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription.class */
    public static final class SimpleScalarSubscription<T> extends AtomicBoolean implements Subscription {

        /* renamed from: f */
        final Subscriber<? super T> f15663f;

        /* renamed from: g */
        final T f15664g;

        SimpleScalarSubscription(T t, Subscriber<? super T> subscriber) {
            this.f15664g = t;
            this.f15663f = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (j > 0 && compareAndSet(false, true)) {
                Subscriber<? super T> subscriber = this.f15663f;
                subscriber.onNext((T) this.f15664g);
                subscriber.onComplete();
            }
        }
    }

    /* renamed from: C */
    public static <T, R> Subscriber<T> m4279C(Subscriber<? super R> subscriber, Function<? super T, ? extends Publisher<? extends R>> function, int i, ErrorMode errorMode) {
        int i2 = C21171.f15644a[errorMode.ordinal()];
        return i2 != 1 ? i2 != 2 ? new ConcatMapImmediate(subscriber, function, i) : new ConcatMapDelayed(subscriber, function, i, true) : new ConcatMapDelayed(subscriber, function, i, false);
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        if (!FlowableScalarXMap.m4076a(this.f15411g, subscriber, this.f15641h)) {
            this.f15411g.mo5c(m4279C(subscriber, this.f15641h, this.f15642i, this.f15643j));
        }
    }
}
