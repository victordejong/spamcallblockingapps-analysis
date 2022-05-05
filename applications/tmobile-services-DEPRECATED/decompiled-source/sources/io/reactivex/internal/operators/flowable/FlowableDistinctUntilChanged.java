package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
import io.reactivex.functions.BiPredicate;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscribers.BasicFuseableConditionalSubscriber;
import io.reactivex.internal.subscribers.BasicFuseableSubscriber;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDistinctUntilChanged.class */
public final class FlowableDistinctUntilChanged<T, K> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Function<? super T, K> f15786h;

    /* renamed from: i */
    final BiPredicate<? super K, ? super K> f15787i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedConditionalSubscriber.class */
    static final class DistinctUntilChangedConditionalSubscriber<T, K> extends BasicFuseableConditionalSubscriber<T, T> {

        /* renamed from: k */
        final Function<? super T, K> f15788k;

        /* renamed from: l */
        final BiPredicate<? super K, ? super K> f15789l;

        /* renamed from: m */
        K f15790m;

        /* renamed from: n */
        boolean f15791n;

        DistinctUntilChangedConditionalSubscriber(ConditionalSubscriber<? super T> conditionalSubscriber, Function<? super T, K> function, BiPredicate<? super K, ? super K> biPredicate) {
            super(conditionalSubscriber);
            this.f15788k = function;
            this.f15789l = biPredicate;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!mo3605p(t)) {
                this.f19344g.request(1L);
            }
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        /* renamed from: p */
        public boolean mo3605p(T t) {
            if (this.f19346i) {
                return false;
            }
            if (this.f19347j != 0) {
                return this.f19343f.mo3605p(t);
            }
            try {
                K apply = this.f15788k.apply(t);
                if (this.f15791n) {
                    boolean a = this.f15789l.mo4360a((K) this.f15790m, apply);
                    this.f15790m = apply;
                    if (a) {
                        return false;
                    }
                } else {
                    this.f15791n = true;
                    this.f15790m = apply;
                }
                this.f19343f.onNext(t);
                return true;
            } catch (Throwable th) {
                m3492c(th);
                return true;
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            while (true) {
                T poll = this.f19345h.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f15788k.apply(poll);
                if (!this.f15791n) {
                    this.f15791n = true;
                    this.f15790m = apply;
                    return poll;
                } else if (!this.f15789l.mo4360a((K) this.f15790m, apply)) {
                    this.f15790m = apply;
                    return poll;
                } else {
                    this.f15790m = apply;
                    if (this.f19347j != 1) {
                        this.f19344g.request(1L);
                    }
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m3491d(i);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDistinctUntilChanged$DistinctUntilChangedSubscriber.class */
    static final class DistinctUntilChangedSubscriber<T, K> extends BasicFuseableSubscriber<T, T> implements ConditionalSubscriber<T> {

        /* renamed from: k */
        final Function<? super T, K> f15792k;

        /* renamed from: l */
        final BiPredicate<? super K, ? super K> f15793l;

        /* renamed from: m */
        K f15794m;

        /* renamed from: n */
        boolean f15795n;

        DistinctUntilChangedSubscriber(Subscriber<? super T> subscriber, Function<? super T, K> function, BiPredicate<? super K, ? super K> biPredicate) {
            super(subscriber);
            this.f15792k = function;
            this.f15793l = biPredicate;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!mo3605p(t)) {
                this.f19349g.request(1L);
            }
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        /* renamed from: p */
        public boolean mo3605p(T t) {
            if (this.f19351i) {
                return false;
            }
            if (this.f19352j != 0) {
                this.f19348f.onNext(t);
                return true;
            }
            try {
                K apply = this.f15792k.apply(t);
                if (this.f15795n) {
                    boolean a = this.f15793l.mo4360a((K) this.f15794m, apply);
                    this.f15794m = apply;
                    if (a) {
                        return false;
                    }
                } else {
                    this.f15795n = true;
                    this.f15794m = apply;
                }
                this.f19348f.onNext(t);
                return true;
            } catch (Throwable th) {
                m3488c(th);
                return true;
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            while (true) {
                T poll = this.f19350h.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f15792k.apply(poll);
                if (!this.f15795n) {
                    this.f15795n = true;
                    this.f15794m = apply;
                    return poll;
                } else if (!this.f15793l.mo4360a((K) this.f15794m, apply)) {
                    this.f15794m = apply;
                    return poll;
                } else {
                    this.f15794m = apply;
                    if (this.f19352j != 1) {
                        this.f19349g.request(1L);
                    }
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m3487d(i);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            this.f15411g.m4493v(new DistinctUntilChangedConditionalSubscriber((ConditionalSubscriber) subscriber, this.f15786h, this.f15787i));
        } else {
            this.f15411g.m4493v(new DistinctUntilChangedSubscriber(subscriber, this.f15786h, this.f15787i));
        }
    }
}
