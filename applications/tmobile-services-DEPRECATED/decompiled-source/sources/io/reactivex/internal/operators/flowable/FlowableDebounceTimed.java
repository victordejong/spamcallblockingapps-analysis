package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDebounceTimed.class */
public final class FlowableDebounceTimed<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final long f15737h;

    /* renamed from: i */
    final TimeUnit f15738i;

    /* renamed from: j */
    final Scheduler f15739j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceEmitter.class */
    public static final class DebounceEmitter<T> extends AtomicReference<Disposable> implements Runnable, Disposable {
        private static final long serialVersionUID = 6812032969491025141L;

        /* renamed from: f */
        final T f15740f;

        /* renamed from: g */
        final long f15741g;

        /* renamed from: h */
        final DebounceTimedSubscriber<T> f15742h;

        /* renamed from: i */
        final AtomicBoolean f15743i = new AtomicBoolean();

        DebounceEmitter(T t, long j, DebounceTimedSubscriber<T> debounceTimedSubscriber) {
            this.f15740f = t;
            this.f15741g = j;
            this.f15742h = debounceTimedSubscriber;
        }

        /* renamed from: a */
        void m4257a() {
            if (this.f15743i.compareAndSet(false, true)) {
                this.f15742h.m4255a(this.f15741g, this.f15740f, this);
            }
        }

        /* renamed from: b */
        public void m4256b(Disposable disposable) {
            DisposableHelper.replace(this, disposable);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            m4257a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDebounceTimed$DebounceTimedSubscriber.class */
    public static final class DebounceTimedSubscriber<T> extends AtomicLong implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -9102637559663639004L;

        /* renamed from: f */
        final Subscriber<? super T> f15744f;

        /* renamed from: g */
        final long f15745g;

        /* renamed from: h */
        final TimeUnit f15746h;

        /* renamed from: i */
        final Scheduler.Worker f15747i;

        /* renamed from: j */
        Subscription f15748j;

        /* renamed from: k */
        Disposable f15749k;

        /* renamed from: l */
        volatile long f15750l;

        /* renamed from: m */
        boolean f15751m;

        DebounceTimedSubscriber(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Scheduler.Worker worker) {
            this.f15744f = subscriber;
            this.f15745g = j;
            this.f15746h = timeUnit;
            this.f15747i = worker;
        }

        /* renamed from: a */
        void m4255a(long j, T t, DebounceEmitter<T> debounceEmitter) {
            if (j != this.f15750l) {
                return;
            }
            if (get() != 0) {
                this.f15744f.onNext(t);
                BackpressureHelper.m3450e(this, 1L);
                debounceEmitter.dispose();
                return;
            }
            cancel();
            this.f15744f.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f15748j.cancel();
            this.f15747i.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f15751m) {
                this.f15751m = true;
                Disposable disposable = this.f15749k;
                if (disposable != null) {
                    disposable.dispose();
                }
                DebounceEmitter debounceEmitter = (DebounceEmitter) disposable;
                if (debounceEmitter != null) {
                    debounceEmitter.m4257a();
                }
                this.f15744f.onComplete();
                this.f15747i.dispose();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15751m) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f15751m = true;
            Disposable disposable = this.f15749k;
            if (disposable != null) {
                disposable.dispose();
            }
            this.f15744f.onError(th);
            this.f15747i.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f15751m) {
                long j = this.f15750l + 1;
                this.f15750l = j;
                Disposable disposable = this.f15749k;
                if (disposable != null) {
                    disposable.dispose();
                }
                DebounceEmitter debounceEmitter = new DebounceEmitter(t, j, this);
                this.f15749k = debounceEmitter;
                debounceEmitter.m4256b(this.f15747i.mo3228c(debounceEmitter, this.f15745g, this.f15746h));
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15748j, subscription)) {
                this.f15748j = subscription;
                this.f15744f.onSubscribe(this);
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
        this.f15411g.m4493v(new DebounceTimedSubscriber(new SerializedSubscriber(subscriber), this.f15737h, this.f15738i, this.f15739j.mo3232b()));
    }
}
