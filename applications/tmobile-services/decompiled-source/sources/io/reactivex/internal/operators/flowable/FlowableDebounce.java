package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.subscribers.DisposableSubscriber;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDebounce.class */
public final class FlowableDebounce<T, U> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Function<? super T, ? extends Publisher<U>> f15725h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber.class */
    public static final class DebounceSubscriber<T, U> extends AtomicLong implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 6725975399620862591L;

        /* renamed from: f */
        final Subscriber<? super T> f15726f;

        /* renamed from: g */
        final Function<? super T, ? extends Publisher<U>> f15727g;

        /* renamed from: h */
        Subscription f15728h;

        /* renamed from: i */
        final AtomicReference<Disposable> f15729i = new AtomicReference<>();

        /* renamed from: j */
        volatile long f15730j;

        /* renamed from: k */
        boolean f15731k;

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber.class */
        static final class DebounceInnerSubscriber<T, U> extends DisposableSubscriber<U> {

            /* renamed from: g */
            final DebounceSubscriber<T, U> f15732g;

            /* renamed from: h */
            final long f15733h;

            /* renamed from: i */
            final T f15734i;

            /* renamed from: j */
            boolean f15735j;

            /* renamed from: k */
            final AtomicBoolean f15736k = new AtomicBoolean();

            DebounceInnerSubscriber(DebounceSubscriber<T, U> debounceSubscriber, long j, T t) {
                this.f15732g = debounceSubscriber;
                this.f15733h = j;
                this.f15734i = t;
            }

            /* renamed from: c */
            void m4258c() {
                if (this.f15736k.compareAndSet(false, true)) {
                    this.f15732g.m4259a(this.f15733h, this.f15734i);
                }
            }

            @Override // org.reactivestreams.Subscriber
            public void onComplete() {
                if (!this.f15735j) {
                    this.f15735j = true;
                    m4258c();
                }
            }

            @Override // org.reactivestreams.Subscriber
            public void onError(Throwable th) {
                if (this.f15735j) {
                    RxJavaPlugins.m3354t(th);
                    return;
                }
                this.f15735j = true;
                this.f15732g.onError(th);
            }

            @Override // org.reactivestreams.Subscriber
            public void onNext(U u) {
                if (!this.f15735j) {
                    this.f15735j = true;
                    m3174a();
                    m4258c();
                }
            }
        }

        DebounceSubscriber(Subscriber<? super T> subscriber, Function<? super T, ? extends Publisher<U>> function) {
            this.f15726f = subscriber;
            this.f15727g = function;
        }

        /* renamed from: a */
        void m4259a(long j, T t) {
            if (j != this.f15730j) {
                return;
            }
            if (get() != 0) {
                this.f15726f.onNext(t);
                BackpressureHelper.m3450e(this, 1L);
                return;
            }
            cancel();
            this.f15726f.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f15728h.cancel();
            DisposableHelper.dispose(this.f15729i);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f15731k) {
                this.f15731k = true;
                Disposable disposable = this.f15729i.get();
                if (!DisposableHelper.isDisposed(disposable)) {
                    DebounceInnerSubscriber debounceInnerSubscriber = (DebounceInnerSubscriber) disposable;
                    if (debounceInnerSubscriber != null) {
                        debounceInnerSubscriber.m4258c();
                    }
                    DisposableHelper.dispose(this.f15729i);
                    this.f15726f.onComplete();
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f15729i);
            this.f15726f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f15731k) {
                long j = this.f15730j + 1;
                this.f15730j = j;
                Disposable disposable = this.f15729i.get();
                if (disposable != null) {
                    disposable.dispose();
                }
                try {
                    Object apply = this.f15727g.apply(t);
                    ObjectHelper.m4363e(apply, "The publisher supplied is null");
                    Publisher publisher = (Publisher) apply;
                    DebounceInnerSubscriber debounceInnerSubscriber = new DebounceInnerSubscriber(this, j, t);
                    if (this.f15729i.compareAndSet(disposable, debounceInnerSubscriber)) {
                        publisher.mo5c(debounceInnerSubscriber);
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    cancel();
                    this.f15726f.onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15728h, subscription)) {
                this.f15728h = subscription;
                this.f15726f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this, j);
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new DebounceSubscriber(new SerializedSubscriber(subscriber), this.f15725h));
    }
}
