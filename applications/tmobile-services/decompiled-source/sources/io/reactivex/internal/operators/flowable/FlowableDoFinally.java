package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDoFinally.class */
public final class FlowableDoFinally<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Action f15799h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallyConditionalSubscriber.class */
    static final class DoFinallyConditionalSubscriber<T> extends BasicIntQueueSubscription<T> implements ConditionalSubscriber<T> {
        private static final long serialVersionUID = 4109457741734051389L;

        /* renamed from: f */
        final ConditionalSubscriber<? super T> f15800f;

        /* renamed from: g */
        final Action f15801g;

        /* renamed from: h */
        Subscription f15802h;

        /* renamed from: i */
        QueueSubscription<T> f15803i;

        /* renamed from: j */
        boolean f15804j;

        DoFinallyConditionalSubscriber(ConditionalSubscriber<? super T> conditionalSubscriber, Action action) {
            this.f15800f = conditionalSubscriber;
            this.f15801g = action;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f15802h.cancel();
            m4253d();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f15803i.clear();
        }

        /* renamed from: d */
        void m4253d() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f15801g.run();
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    RxJavaPlugins.m3354t(th);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f15803i.isEmpty();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f15800f.onComplete();
            m4253d();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f15800f.onError(th);
            m4253d();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f15800f.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15802h, subscription)) {
                this.f15802h = subscription;
                if (subscription instanceof QueueSubscription) {
                    this.f15803i = (QueueSubscription) subscription;
                }
                this.f15800f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        /* renamed from: p */
        public boolean mo3605p(T t) {
            return this.f15800f.mo3605p(t);
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            T poll = this.f15803i.poll();
            if (poll == null && this.f15804j) {
                m4253d();
            }
            return poll;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f15802h.request(j);
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            QueueSubscription<T> queueSubscription = this.f15803i;
            boolean z = false;
            if (queueSubscription == null || (i & 4) != 0) {
                return 0;
            }
            int requestFusion = queueSubscription.requestFusion(i);
            if (requestFusion != 0) {
                if (requestFusion == 1) {
                    z = true;
                }
                this.f15804j = z;
            }
            return requestFusion;
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallySubscriber.class */
    static final class DoFinallySubscriber<T> extends BasicIntQueueSubscription<T> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = 4109457741734051389L;

        /* renamed from: f */
        final Subscriber<? super T> f15805f;

        /* renamed from: g */
        final Action f15806g;

        /* renamed from: h */
        Subscription f15807h;

        /* renamed from: i */
        QueueSubscription<T> f15808i;

        /* renamed from: j */
        boolean f15809j;

        DoFinallySubscriber(Subscriber<? super T> subscriber, Action action) {
            this.f15805f = subscriber;
            this.f15806g = action;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f15807h.cancel();
            m4252d();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f15808i.clear();
        }

        /* renamed from: d */
        void m4252d() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f15806g.run();
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    RxJavaPlugins.m3354t(th);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f15808i.isEmpty();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f15805f.onComplete();
            m4252d();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f15805f.onError(th);
            m4252d();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f15805f.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15807h, subscription)) {
                this.f15807h = subscription;
                if (subscription instanceof QueueSubscription) {
                    this.f15808i = (QueueSubscription) subscription;
                }
                this.f15805f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            T poll = this.f15808i.poll();
            if (poll == null && this.f15809j) {
                m4252d();
            }
            return poll;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f15807h.request(j);
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            QueueSubscription<T> queueSubscription = this.f15808i;
            boolean z = false;
            if (queueSubscription == null || (i & 4) != 0) {
                return 0;
            }
            int requestFusion = queueSubscription.requestFusion(i);
            if (requestFusion != 0) {
                if (requestFusion == 1) {
                    z = true;
                }
                this.f15809j = z;
            }
            return requestFusion;
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            this.f15411g.m4493v(new DoFinallyConditionalSubscriber((ConditionalSubscriber) subscriber, this.f15799h));
        } else {
            this.f15411g.m4493v(new DoFinallySubscriber(subscriber, this.f15799h));
        }
    }
}
