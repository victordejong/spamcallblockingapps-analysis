package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableObserveOn.class */
public final class FlowableObserveOn<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Scheduler f16198h;

    /* renamed from: i */
    final boolean f16199i;

    /* renamed from: j */
    final int f16200j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber.class */
    static abstract class BaseObserveOnSubscriber<T> extends BasicIntQueueSubscription<T> implements FlowableSubscriber<T>, Runnable {
        private static final long serialVersionUID = -8241002408341274697L;

        /* renamed from: f */
        final Scheduler.Worker f16201f;

        /* renamed from: g */
        final boolean f16202g;

        /* renamed from: h */
        final int f16203h;

        /* renamed from: i */
        final int f16204i;

        /* renamed from: j */
        final AtomicLong f16205j = new AtomicLong();

        /* renamed from: k */
        Subscription f16206k;

        /* renamed from: l */
        SimpleQueue<T> f16207l;

        /* renamed from: m */
        volatile boolean f16208m;

        /* renamed from: n */
        volatile boolean f16209n;

        /* renamed from: o */
        Throwable f16210o;

        /* renamed from: p */
        int f16211p;

        /* renamed from: q */
        long f16212q;

        /* renamed from: r */
        boolean f16213r;

        BaseObserveOnSubscriber(Scheduler.Worker worker, boolean z, int i) {
            this.f16201f = worker;
            this.f16202g = z;
            this.f16203h = i;
            this.f16204i = i - (i >> 2);
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            if (!this.f16208m) {
                this.f16208m = true;
                this.f16206k.cancel();
                this.f16201f.dispose();
                if (!this.f16213r && getAndIncrement() == 0) {
                    this.f16207l.clear();
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final void clear() {
            this.f16207l.clear();
        }

        /* renamed from: d */
        final boolean m4156d(boolean z, boolean z2, Subscriber<?> subscriber) {
            if (this.f16208m) {
                clear();
                return true;
            } else if (!z) {
                return false;
            } else {
                if (!this.f16202g) {
                    Throwable th = this.f16210o;
                    if (th != null) {
                        this.f16208m = true;
                        clear();
                        subscriber.onError(th);
                        this.f16201f.dispose();
                        return true;
                    } else if (!z2) {
                        return false;
                    } else {
                        this.f16208m = true;
                        subscriber.onComplete();
                        this.f16201f.dispose();
                        return true;
                    }
                } else if (!z2) {
                    return false;
                } else {
                    this.f16208m = true;
                    Throwable th2 = this.f16210o;
                    if (th2 != null) {
                        subscriber.onError(th2);
                    } else {
                        subscriber.onComplete();
                    }
                    this.f16201f.dispose();
                    return true;
                }
            }
        }

        /* renamed from: f */
        abstract void mo4154f();

        /* renamed from: i */
        abstract void mo4153i();

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final boolean isEmpty() {
            return this.f16207l.isEmpty();
        }

        /* renamed from: j */
        abstract void mo4152j();

        /* renamed from: k */
        final void m4155k() {
            if (getAndIncrement() == 0) {
                this.f16201f.mo3229b(this);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            if (!this.f16209n) {
                this.f16209n = true;
                m4155k();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            if (this.f16209n) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16210o = th;
            this.f16209n = true;
            m4155k();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(T t) {
            if (!this.f16209n) {
                if (this.f16211p == 2) {
                    m4155k();
                    return;
                }
                if (!this.f16207l.offer(t)) {
                    this.f16206k.cancel();
                    this.f16210o = new MissingBackpressureException("Queue is full?!");
                    this.f16209n = true;
                }
                m4155k();
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16205j, j);
                m4155k();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public final int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.f16213r = true;
            return 2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f16213r) {
                mo4153i();
            } else if (this.f16211p == 1) {
                mo4152j();
            } else {
                mo4154f();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber.class */
    static final class ObserveOnConditionalSubscriber<T> extends BaseObserveOnSubscriber<T> {
        private static final long serialVersionUID = 644624475404284533L;

        /* renamed from: s */
        final ConditionalSubscriber<? super T> f16214s;

        /* renamed from: t */
        long f16215t;

        ObserveOnConditionalSubscriber(ConditionalSubscriber<? super T> conditionalSubscriber, Scheduler.Worker worker, boolean z, int i) {
            super(worker, z, i);
            this.f16214s = conditionalSubscriber;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v48, types: [long] */
        /* JADX WARN: Type inference failed for: r0v54, types: [org.reactivestreams.Subscription] */
        /* JADX WARN: Type inference failed for: r10v0, types: [long] */
        /* JADX WARN: Type inference failed for: r10v1 */
        /* JADX WARN: Type inference failed for: r10v2, types: [long] */
        /* JADX WARN: Type inference failed for: r10v3 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v5 */
        /* JADX WARN: Type inference failed for: r19v0 */
        /* JADX WARN: Type inference failed for: r19v1 */
        /* JADX WARN: Type inference failed for: r19v3 */
        /* JADX WARN: Type inference failed for: r5v0, types: [io.reactivex.internal.operators.flowable.FlowableObserveOn$ObserveOnConditionalSubscriber<T>, io.reactivex.internal.operators.flowable.FlowableObserveOn$BaseObserveOnSubscriber, java.util.concurrent.atomic.AtomicInteger, io.reactivex.internal.operators.flowable.FlowableObserveOn$ObserveOnConditionalSubscriber] */
        /* JADX WARN: Type inference failed for: r8v0, types: [long] */
        /* JADX WARN: Type inference failed for: r8v1 */
        /* JADX WARN: Type inference failed for: r8v2, types: [long] */
        /* JADX WARN: Type inference failed for: r8v3 */
        /* JADX WARN: Type inference failed for: r8v4 */
        /* JADX WARN: Type inference failed for: r8v5 */
        /* JADX WARN: Unknown variable types count: 4 */
        @Override // io.reactivex.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void mo4154f() {
            /*
                Method dump skipped, instructions count: 275
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableObserveOn.ObserveOnConditionalSubscriber.mo4154f():void");
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        /* renamed from: i */
        void mo4153i() {
            int i = 1;
            while (!this.f16208m) {
                boolean z = this.f16209n;
                this.f16214s.onNext(null);
                if (z) {
                    this.f16208m = true;
                    Throwable th = this.f16210o;
                    if (th != null) {
                        this.f16214s.onError(th);
                    } else {
                        this.f16214s.onComplete();
                    }
                    this.f16201f.dispose();
                    return;
                }
                int addAndGet = addAndGet(-i);
                i = addAndGet;
                if (addAndGet == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        /* renamed from: j */
        void mo4152j() {
            ConditionalSubscriber<? super T> conditionalSubscriber = this.f16214s;
            SimpleQueue<T> simpleQueue = this.f16207l;
            long j = this.f16212q;
            int i = 1;
            while (true) {
                long j2 = this.f16205j.get();
                while (j != j2) {
                    try {
                        Object obj = (T) simpleQueue.poll();
                        if (!this.f16208m) {
                            if (obj == null) {
                                this.f16208m = true;
                                conditionalSubscriber.onComplete();
                                this.f16201f.dispose();
                                return;
                            } else if (conditionalSubscriber.mo3605p(obj)) {
                                j++;
                            }
                        } else {
                            return;
                        }
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        this.f16208m = true;
                        this.f16206k.cancel();
                        conditionalSubscriber.onError(th);
                        this.f16201f.dispose();
                        return;
                    }
                }
                if (!this.f16208m) {
                    if (simpleQueue.isEmpty()) {
                        this.f16208m = true;
                        conditionalSubscriber.onComplete();
                        this.f16201f.dispose();
                        return;
                    }
                    int i2 = get();
                    if (i == i2) {
                        this.f16212q = j;
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        i = i2;
                    }
                } else {
                    return;
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16206k, subscription)) {
                this.f16206k = subscription;
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f16211p = 1;
                        this.f16207l = queueSubscription;
                        this.f16209n = true;
                        this.f16214s.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.f16211p = 2;
                        this.f16207l = queueSubscription;
                        this.f16214s.onSubscribe(this);
                        subscription.request(this.f16203h);
                        return;
                    }
                }
                this.f16207l = new SpscArrayQueue(this.f16203h);
                this.f16214s.onSubscribe(this);
                subscription.request(this.f16203h);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            T poll = this.f16207l.poll();
            if (!(poll == null || this.f16211p == 1)) {
                long j = this.f16215t + 1;
                if (j == this.f16204i) {
                    this.f16215t = 0L;
                    this.f16206k.request(j);
                } else {
                    this.f16215t = j;
                }
            }
            return poll;
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber.class */
    static final class ObserveOnSubscriber<T> extends BaseObserveOnSubscriber<T> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -4547113800637756442L;

        /* renamed from: s */
        final Subscriber<? super T> f16216s;

        ObserveOnSubscriber(Subscriber<? super T> subscriber, Scheduler.Worker worker, boolean z, int i) {
            super(worker, z, i);
            this.f16216s = subscriber;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v43, types: [long] */
        /* JADX WARN: Type inference failed for: r0v51, types: [org.reactivestreams.Subscription] */
        /* JADX WARN: Type inference failed for: r11v0, types: [long] */
        /* JADX WARN: Type inference failed for: r11v1, types: [long] */
        /* JADX WARN: Type inference failed for: r11v2 */
        /* JADX WARN: Type inference failed for: r11v3 */
        /* JADX WARN: Type inference failed for: r19v0 */
        /* JADX WARN: Type inference failed for: r19v3 */
        /* JADX WARN: Type inference failed for: r8v0, types: [long] */
        /* JADX WARN: Type inference failed for: r8v1 */
        /* JADX WARN: Type inference failed for: r8v2, types: [long] */
        /* JADX WARN: Type inference failed for: r8v3 */
        /* JADX WARN: Type inference failed for: r8v4 */
        /* JADX WARN: Type inference failed for: r8v5 */
        /* JADX WARN: Unknown variable types count: 3 */
        @Override // io.reactivex.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void mo4154f() {
            /*
                Method dump skipped, instructions count: 272
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableObserveOn.ObserveOnSubscriber.mo4154f():void");
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        /* renamed from: i */
        void mo4153i() {
            int i = 1;
            while (!this.f16208m) {
                boolean z = this.f16209n;
                this.f16216s.onNext(null);
                if (z) {
                    this.f16208m = true;
                    Throwable th = this.f16210o;
                    if (th != null) {
                        this.f16216s.onError(th);
                    } else {
                        this.f16216s.onComplete();
                    }
                    this.f16201f.dispose();
                    return;
                }
                int addAndGet = addAndGet(-i);
                i = addAndGet;
                if (addAndGet == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        /* renamed from: j */
        void mo4152j() {
            Subscriber<? super T> subscriber = this.f16216s;
            SimpleQueue<T> simpleQueue = this.f16207l;
            long j = this.f16212q;
            int i = 1;
            while (true) {
                long j2 = this.f16205j.get();
                while (j != j2) {
                    try {
                        Object obj = (T) simpleQueue.poll();
                        if (!this.f16208m) {
                            if (obj == null) {
                                this.f16208m = true;
                                subscriber.onComplete();
                                this.f16201f.dispose();
                                return;
                            }
                            subscriber.onNext(obj);
                            j++;
                        } else {
                            return;
                        }
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        this.f16208m = true;
                        this.f16206k.cancel();
                        subscriber.onError(th);
                        this.f16201f.dispose();
                        return;
                    }
                }
                if (!this.f16208m) {
                    if (simpleQueue.isEmpty()) {
                        this.f16208m = true;
                        subscriber.onComplete();
                        this.f16201f.dispose();
                        return;
                    }
                    int i2 = get();
                    if (i == i2) {
                        this.f16212q = j;
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        i = i2;
                    }
                } else {
                    return;
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16206k, subscription)) {
                this.f16206k = subscription;
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f16211p = 1;
                        this.f16207l = queueSubscription;
                        this.f16209n = true;
                        this.f16216s.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.f16211p = 2;
                        this.f16207l = queueSubscription;
                        this.f16216s.onSubscribe(this);
                        subscription.request(this.f16203h);
                        return;
                    }
                }
                this.f16207l = new SpscArrayQueue(this.f16203h);
                this.f16216s.onSubscribe(this);
                subscription.request(this.f16203h);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            T poll = this.f16207l.poll();
            if (!(poll == null || this.f16211p == 1)) {
                long j = this.f16212q + 1;
                if (j == this.f16204i) {
                    this.f16212q = 0L;
                    this.f16206k.request(j);
                } else {
                    this.f16212q = j;
                }
            }
            return poll;
        }
    }

    public FlowableObserveOn(Flowable<T> flowable, Scheduler scheduler, boolean z, int i) {
        super(flowable);
        this.f16198h = scheduler;
        this.f16199i = z;
        this.f16200j = i;
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        Scheduler.Worker b = this.f16198h.mo3232b();
        if (subscriber instanceof ConditionalSubscriber) {
            this.f15411g.m4493v(new ObserveOnConditionalSubscriber((ConditionalSubscriber) subscriber, b, this.f16199i, this.f16200j));
        } else {
            this.f15411g.m4493v(new ObserveOnSubscriber(subscriber, b, this.f16199i, this.f16200j));
        }
    }
}
