package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlattenIterable.class */
public final class FlowableFlattenIterable<T, R> extends AbstractFlowableWithUpstream<T, R> {

    /* renamed from: h */
    final Function<? super T, ? extends Iterable<? extends R>> f15950h;

    /* renamed from: i */
    final int f15951i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber.class */
    static final class FlattenIterableSubscriber<T, R> extends BasicIntQueueSubscription<R> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -3096000382929934955L;

        /* renamed from: f */
        final Subscriber<? super R> f15952f;

        /* renamed from: g */
        final Function<? super T, ? extends Iterable<? extends R>> f15953g;

        /* renamed from: h */
        final int f15954h;

        /* renamed from: i */
        final int f15955i;

        /* renamed from: k */
        Subscription f15957k;

        /* renamed from: l */
        SimpleQueue<T> f15958l;

        /* renamed from: m */
        volatile boolean f15959m;

        /* renamed from: n */
        volatile boolean f15960n;

        /* renamed from: p */
        Iterator<? extends R> f15962p;

        /* renamed from: q */
        int f15963q;

        /* renamed from: r */
        int f15964r;

        /* renamed from: o */
        final AtomicReference<Throwable> f15961o = new AtomicReference<>();

        /* renamed from: j */
        final AtomicLong f15956j = new AtomicLong();

        FlattenIterableSubscriber(Subscriber<? super R> subscriber, Function<? super T, ? extends Iterable<? extends R>> function, int i) {
            this.f15952f = subscriber;
            this.f15953g = function;
            this.f15954h = i;
            this.f15955i = i - (i >> 2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r18v0 */
        /* JADX WARN: Type inference failed for: r18v1, types: [long] */
        /* JADX WARN: Type inference failed for: r18v2, types: [long] */
        /* JADX WARN: Type inference failed for: r18v3 */
        /* JADX WARN: Type inference failed for: r6v0, types: [java.util.concurrent.atomic.AtomicInteger, io.reactivex.internal.operators.flowable.FlowableFlattenIterable$FlattenIterableSubscriber<T, R>, io.reactivex.internal.operators.flowable.FlowableFlattenIterable$FlattenIterableSubscriber] */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4220b() {
            /*
                Method dump skipped, instructions count: 593
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFlattenIterable.FlattenIterableSubscriber.m4220b():void");
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f15960n) {
                this.f15960n = true;
                this.f15957k.cancel();
                if (getAndIncrement() == 0) {
                    this.f15958l.clear();
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f15962p = null;
            this.f15958l.clear();
        }

        /* renamed from: d */
        boolean m4219d(boolean z, boolean z2, Subscriber<?> subscriber, SimpleQueue<?> simpleQueue) {
            if (this.f15960n) {
                this.f15962p = null;
                simpleQueue.clear();
                return true;
            } else if (!z) {
                return false;
            } else {
                if (this.f15961o.get() != null) {
                    Throwable b = ExceptionHelper.m3437b(this.f15961o);
                    this.f15962p = null;
                    simpleQueue.clear();
                    subscriber.onError(b);
                    return true;
                } else if (!z2) {
                    return false;
                } else {
                    subscriber.onComplete();
                    return true;
                }
            }
        }

        /* renamed from: f */
        void m4218f(boolean z) {
            if (z) {
                int i = this.f15963q + 1;
                if (i == this.f15955i) {
                    this.f15963q = 0;
                    this.f15957k.request(i);
                    return;
                }
                this.f15963q = i;
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f15962p == null && this.f15958l.isEmpty();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f15959m) {
                this.f15959m = true;
                m4220b();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15959m || !ExceptionHelper.m3438a(this.f15961o, th)) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f15959m = true;
            m4220b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f15959m) {
                if (this.f15964r != 0 || this.f15958l.offer(t)) {
                    m4220b();
                } else {
                    onError(new MissingBackpressureException("Queue is full?!"));
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15957k, subscription)) {
                this.f15957k = subscription;
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f15964r = requestFusion;
                        this.f15958l = queueSubscription;
                        this.f15959m = true;
                        this.f15952f.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.f15964r = requestFusion;
                        this.f15958l = queueSubscription;
                        this.f15952f.onSubscribe(this);
                        subscription.request(this.f15954h);
                        return;
                    }
                }
                this.f15958l = new SpscArrayQueue(this.f15954h);
                this.f15952f.onSubscribe(this);
                subscription.request(this.f15954h);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public R poll() throws Exception {
            Iterator<? extends R> it;
            Iterator<? extends R> it2 = this.f15962p;
            while (true) {
                it = it2;
                if (it2 == null) {
                    T poll = this.f15958l.poll();
                    if (poll != null) {
                        it = ((Iterable) this.f15953g.apply(poll)).iterator();
                        if (it.hasNext()) {
                            this.f15962p = it;
                            break;
                        }
                        it2 = null;
                    } else {
                        return null;
                    }
                } else {
                    break;
                }
            }
            R r = (R) it.next();
            ObjectHelper.m4363e(r, "The iterator returned a null value");
            if (!it.hasNext()) {
                this.f15962p = null;
            }
            return r;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f15956j, j);
                m4220b();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return ((i & 1) == 0 || this.f15964r != 1) ? 0 : 1;
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super R> subscriber) {
        Flowable<T> flowable = this.f15411g;
        if (flowable instanceof Callable) {
            try {
                Object call = ((Callable) flowable).call();
                if (call == null) {
                    EmptySubscription.complete(subscriber);
                    return;
                }
                try {
                    FlowableFromIterable.m4215C(subscriber, ((Iterable) this.f15950h.apply(call)).iterator());
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    EmptySubscription.error(th, subscriber);
                }
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                EmptySubscription.error(th2, subscriber);
            }
        } else {
            flowable.m4493v(new FlattenIterableSubscriber(subscriber, this.f15950h, this.f15951i));
        }
    }
}
