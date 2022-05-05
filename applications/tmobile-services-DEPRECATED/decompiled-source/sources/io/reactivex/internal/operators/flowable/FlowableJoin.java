package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.operators.flowable.FlowableGroupJoin;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableJoin.class */
public final class FlowableJoin<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AbstractFlowableWithUpstream<TLeft, R> {

    /* renamed from: h */
    final Publisher<? extends TRight> f16108h;

    /* renamed from: i */
    final Function<? super TLeft, ? extends Publisher<TLeftEnd>> f16109i;

    /* renamed from: j */
    final Function<? super TRight, ? extends Publisher<TRightEnd>> f16110j;

    /* renamed from: k */
    final BiFunction<? super TLeft, ? super TRight, ? extends R> f16111k;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableJoin$JoinSubscription.class */
    static final class JoinSubscription<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements Subscription, FlowableGroupJoin.JoinSupport {
        private static final long serialVersionUID = -6071216598687999801L;

        /* renamed from: t */
        static final Integer f16112t = 1;

        /* renamed from: u */
        static final Integer f16113u = 2;

        /* renamed from: v */
        static final Integer f16114v = 3;

        /* renamed from: w */
        static final Integer f16115w = 4;

        /* renamed from: f */
        final Subscriber<? super R> f16116f;

        /* renamed from: m */
        final Function<? super TLeft, ? extends Publisher<TLeftEnd>> f16123m;

        /* renamed from: n */
        final Function<? super TRight, ? extends Publisher<TRightEnd>> f16124n;

        /* renamed from: o */
        final BiFunction<? super TLeft, ? super TRight, ? extends R> f16125o;

        /* renamed from: q */
        int f16127q;

        /* renamed from: r */
        int f16128r;

        /* renamed from: s */
        volatile boolean f16129s;

        /* renamed from: g */
        final AtomicLong f16117g = new AtomicLong();

        /* renamed from: i */
        final CompositeDisposable f16119i = new CompositeDisposable();

        /* renamed from: h */
        final SpscLinkedArrayQueue<Object> f16118h = new SpscLinkedArrayQueue<>(Flowable.m4511a());

        /* renamed from: j */
        final Map<Integer, TLeft> f16120j = new LinkedHashMap();

        /* renamed from: k */
        final Map<Integer, TRight> f16121k = new LinkedHashMap();

        /* renamed from: l */
        final AtomicReference<Throwable> f16122l = new AtomicReference<>();

        /* renamed from: p */
        final AtomicInteger f16126p = new AtomicInteger(2);

        JoinSubscription(Subscriber<? super R> subscriber, Function<? super TLeft, ? extends Publisher<TLeftEnd>> function, Function<? super TRight, ? extends Publisher<TRightEnd>> function2, BiFunction<? super TLeft, ? super TRight, ? extends R> biFunction) {
            this.f16116f = subscriber;
            this.f16123m = function;
            this.f16124n = function2;
            this.f16125o = biFunction;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        /* renamed from: a */
        public void mo4179a(Throwable th) {
            if (ExceptionHelper.m3438a(this.f16122l, th)) {
                this.f16126p.decrementAndGet();
                m4173g();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        /* renamed from: b */
        public void mo4178b(Throwable th) {
            if (ExceptionHelper.m3438a(this.f16122l, th)) {
                m4173g();
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        /* renamed from: c */
        public void mo4177c(boolean z, Object obj) {
            synchronized (this) {
                this.f16118h.m3545o(z ? f16112t : f16113u, obj);
            }
            m4173g();
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f16129s) {
                this.f16129s = true;
                m4174f();
                if (getAndIncrement() == 0) {
                    this.f16118h.clear();
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        /* renamed from: d */
        public void mo4176d(boolean z, FlowableGroupJoin.LeftRightEndSubscriber leftRightEndSubscriber) {
            synchronized (this) {
                this.f16118h.m3545o(z ? f16114v : f16115w, leftRightEndSubscriber);
            }
            m4173g();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        /* renamed from: e */
        public void mo4175e(FlowableGroupJoin.LeftRightSubscriber leftRightSubscriber) {
            this.f16119i.mo4424c(leftRightSubscriber);
            this.f16126p.decrementAndGet();
            m4173g();
        }

        /* renamed from: f */
        void m4174f() {
            this.f16119i.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: g */
        void m4173g() {
            if (getAndIncrement() == 0) {
                SpscLinkedArrayQueue<Object> spscLinkedArrayQueue = this.f16118h;
                Subscriber<? super R> subscriber = this.f16116f;
                int i = 1;
                while (!this.f16129s) {
                    if (this.f16122l.get() != null) {
                        spscLinkedArrayQueue.clear();
                        m4174f();
                        m4172h(subscriber);
                        return;
                    }
                    boolean z = this.f16126p.get() == 0;
                    Integer num = (Integer) spscLinkedArrayQueue.poll();
                    boolean z2 = num == null;
                    if (z && z2) {
                        this.f16120j.clear();
                        this.f16121k.clear();
                        this.f16119i.dispose();
                        subscriber.onComplete();
                        return;
                    } else if (z2) {
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        Object poll = spscLinkedArrayQueue.poll();
                        if (num == f16112t) {
                            int i2 = this.f16127q;
                            this.f16127q = i2 + 1;
                            this.f16120j.put(Integer.valueOf(i2), poll);
                            try {
                                Object apply = this.f16123m.apply(poll);
                                ObjectHelper.m4363e(apply, "The leftEnd returned a null Publisher");
                                Publisher publisher = (Publisher) apply;
                                FlowableGroupJoin.LeftRightEndSubscriber leftRightEndSubscriber = new FlowableGroupJoin.LeftRightEndSubscriber(this, true, i2);
                                this.f16119i.mo4425b(leftRightEndSubscriber);
                                publisher.mo5c(leftRightEndSubscriber);
                                if (this.f16122l.get() != null) {
                                    spscLinkedArrayQueue.clear();
                                    m4174f();
                                    m4172h(subscriber);
                                    return;
                                }
                                long j = this.f16117g.get();
                                long j2 = 0;
                                for (TRight tright : this.f16121k.values()) {
                                    try {
                                        Object obj = (Object) this.f16125o.apply(poll, tright);
                                        ObjectHelper.m4363e(obj, "The resultSelector returned a null value");
                                        if (j2 != j) {
                                            subscriber.onNext(obj);
                                            j2++;
                                        } else {
                                            ExceptionHelper.m3438a(this.f16122l, new MissingBackpressureException("Could not emit value due to lack of requests"));
                                            spscLinkedArrayQueue.clear();
                                            m4174f();
                                            m4172h(subscriber);
                                            return;
                                        }
                                    } catch (Throwable th) {
                                        m4171i(th, subscriber, spscLinkedArrayQueue);
                                        return;
                                    }
                                }
                                if (j2 != 0) {
                                    BackpressureHelper.m3450e(this.f16117g, j2);
                                }
                            } catch (Throwable th2) {
                                m4171i(th2, subscriber, spscLinkedArrayQueue);
                                return;
                            }
                        } else if (num == f16113u) {
                            int i3 = this.f16128r;
                            this.f16128r = i3 + 1;
                            this.f16121k.put(Integer.valueOf(i3), poll);
                            try {
                                Object apply2 = this.f16124n.apply(poll);
                                ObjectHelper.m4363e(apply2, "The rightEnd returned a null Publisher");
                                Publisher publisher2 = (Publisher) apply2;
                                FlowableGroupJoin.LeftRightEndSubscriber leftRightEndSubscriber2 = new FlowableGroupJoin.LeftRightEndSubscriber(this, false, i3);
                                this.f16119i.mo4425b(leftRightEndSubscriber2);
                                publisher2.mo5c(leftRightEndSubscriber2);
                                if (this.f16122l.get() != null) {
                                    spscLinkedArrayQueue.clear();
                                    m4174f();
                                    m4172h(subscriber);
                                    return;
                                }
                                long j3 = this.f16117g.get();
                                long j4 = 0;
                                for (TLeft tleft : this.f16120j.values()) {
                                    try {
                                        Object obj2 = (Object) this.f16125o.apply(tleft, poll);
                                        ObjectHelper.m4363e(obj2, "The resultSelector returned a null value");
                                        if (j4 != j3) {
                                            subscriber.onNext(obj2);
                                            j4++;
                                        } else {
                                            ExceptionHelper.m3438a(this.f16122l, new MissingBackpressureException("Could not emit value due to lack of requests"));
                                            spscLinkedArrayQueue.clear();
                                            m4174f();
                                            m4172h(subscriber);
                                            return;
                                        }
                                    } catch (Throwable th3) {
                                        m4171i(th3, subscriber, spscLinkedArrayQueue);
                                        return;
                                    }
                                }
                                if (j4 != 0) {
                                    BackpressureHelper.m3450e(this.f16117g, j4);
                                }
                            } catch (Throwable th4) {
                                m4171i(th4, subscriber, spscLinkedArrayQueue);
                                return;
                            }
                        } else if (num == f16114v) {
                            FlowableGroupJoin.LeftRightEndSubscriber leftRightEndSubscriber3 = (FlowableGroupJoin.LeftRightEndSubscriber) poll;
                            this.f16120j.remove(Integer.valueOf(leftRightEndSubscriber3.f16055h));
                            this.f16119i.mo4426a(leftRightEndSubscriber3);
                        } else if (num == f16115w) {
                            FlowableGroupJoin.LeftRightEndSubscriber leftRightEndSubscriber4 = (FlowableGroupJoin.LeftRightEndSubscriber) poll;
                            this.f16121k.remove(Integer.valueOf(leftRightEndSubscriber4.f16055h));
                            this.f16119i.mo4426a(leftRightEndSubscriber4);
                        }
                    }
                }
                spscLinkedArrayQueue.clear();
            }
        }

        /* renamed from: h */
        void m4172h(Subscriber<?> subscriber) {
            Throwable b = ExceptionHelper.m3437b(this.f16122l);
            this.f16120j.clear();
            this.f16121k.clear();
            subscriber.onError(b);
        }

        /* renamed from: i */
        void m4171i(Throwable th, Subscriber<?> subscriber, SimpleQueue<?> simpleQueue) {
            Exceptions.m4428b(th);
            ExceptionHelper.m3438a(this.f16122l, th);
            simpleQueue.clear();
            m4174f();
            m4172h(subscriber);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16117g, j);
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        JoinSubscription joinSubscription = new JoinSubscription(subscriber, this.f16109i, this.f16110j, this.f16111k);
        subscriber.onSubscribe(joinSubscription);
        FlowableGroupJoin.LeftRightSubscriber leftRightSubscriber = new FlowableGroupJoin.LeftRightSubscriber(joinSubscription, true);
        joinSubscription.f16119i.mo4425b(leftRightSubscriber);
        FlowableGroupJoin.LeftRightSubscriber leftRightSubscriber2 = new FlowableGroupJoin.LeftRightSubscriber(joinSubscription, false);
        joinSubscription.f16119i.mo4425b(leftRightSubscriber2);
        this.f15411g.m4493v(leftRightSubscriber);
        this.f16108h.mo5c(leftRightSubscriber2);
    }
}
