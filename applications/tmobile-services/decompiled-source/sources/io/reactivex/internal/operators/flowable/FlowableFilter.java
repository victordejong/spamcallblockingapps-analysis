package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.subscribers.BasicFuseableConditionalSubscriber;
import io.reactivex.internal.subscribers.BasicFuseableSubscriber;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFilter.class */
public final class FlowableFilter<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Predicate<? super T> f15856h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber.class */
    static final class FilterConditionalSubscriber<T> extends BasicFuseableConditionalSubscriber<T, T> {

        /* renamed from: k */
        final Predicate<? super T> f15857k;

        FilterConditionalSubscriber(ConditionalSubscriber<? super T> conditionalSubscriber, Predicate<? super T> predicate) {
            super(conditionalSubscriber);
            this.f15857k = predicate;
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
                return this.f19343f.mo3605p(null);
            }
            try {
                boolean z = false;
                if (this.f15857k.mo3191a(t)) {
                    z = false;
                    if (this.f19343f.mo3605p(t)) {
                        z = true;
                    }
                }
                return z;
            } catch (Throwable th) {
                m3492c(th);
                return true;
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            QueueSubscription<T> queueSubscription = this.f19345h;
            Predicate<? super T> predicate = this.f15857k;
            while (true) {
                T poll = queueSubscription.poll();
                if (poll == null) {
                    return null;
                }
                if (predicate.mo3191a(poll)) {
                    return poll;
                }
                if (this.f19347j == 2) {
                    queueSubscription.request(1L);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m3491d(i);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFilter$FilterSubscriber.class */
    static final class FilterSubscriber<T> extends BasicFuseableSubscriber<T, T> implements ConditionalSubscriber<T> {

        /* renamed from: k */
        final Predicate<? super T> f15858k;

        FilterSubscriber(Subscriber<? super T> subscriber, Predicate<? super T> predicate) {
            super(subscriber);
            this.f15858k = predicate;
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
                this.f19348f.onNext(null);
                return true;
            }
            try {
                boolean a = this.f15858k.mo3191a(t);
                if (a) {
                    this.f19348f.onNext(t);
                }
                return a;
            } catch (Throwable th) {
                m3488c(th);
                return true;
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            QueueSubscription<T> queueSubscription = this.f19350h;
            Predicate<? super T> predicate = this.f15858k;
            while (true) {
                T poll = queueSubscription.poll();
                if (poll == null) {
                    return null;
                }
                if (predicate.mo3191a(poll)) {
                    return poll;
                }
                if (this.f19352j == 2) {
                    queueSubscription.request(1L);
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
            this.f15411g.m4493v(new FilterConditionalSubscriber((ConditionalSubscriber) subscriber, this.f15856h));
        } else {
            this.f15411g.m4493v(new FilterSubscriber(subscriber, this.f15856h));
        }
    }
}
