package io.reactivex.internal.operators.flowable;

import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.FlowableSubscriber;
import io.reactivex.annotations.Nullable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapCompletable.class */
public final class FlowableFlatMapCompletable<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Function<? super T, ? extends CompletableSource> f15890h;

    /* renamed from: i */
    final int f15891i;

    /* renamed from: j */
    final boolean f15892j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber.class */
    static final class FlatMapCompletableMainSubscriber<T> extends BasicIntQueueSubscription<T> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = 8443155186132538303L;

        /* renamed from: f */
        final Subscriber<? super T> f15893f;

        /* renamed from: h */
        final Function<? super T, ? extends CompletableSource> f15895h;

        /* renamed from: i */
        final boolean f15896i;

        /* renamed from: k */
        final int f15898k;

        /* renamed from: l */
        Subscription f15899l;

        /* renamed from: m */
        volatile boolean f15900m;

        /* renamed from: g */
        final AtomicThrowable f15894g = new AtomicThrowable();

        /* renamed from: j */
        final CompositeDisposable f15897j = new CompositeDisposable();

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber$InnerConsumer.class */
        final class InnerConsumer extends AtomicReference<Disposable> implements CompletableObserver, Disposable {
            private static final long serialVersionUID = 8606673141535671828L;

            InnerConsumer() {
            }

            @Override // io.reactivex.disposables.Disposable
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.disposables.Disposable
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                FlatMapCompletableMainSubscriber.this.m4237d(this);
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                FlatMapCompletableMainSubscriber.this.m4236f(this, th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }
        }

        FlatMapCompletableMainSubscriber(Subscriber<? super T> subscriber, Function<? super T, ? extends CompletableSource> function, boolean z, int i) {
            this.f15893f = subscriber;
            this.f15895h = function;
            this.f15896i = z;
            this.f15898k = i;
            lazySet(1);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f15900m = true;
            this.f15899l.cancel();
            this.f15897j.dispose();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
        }

        /* renamed from: d */
        void m4237d(FlatMapCompletableMainSubscriber<T>.InnerConsumer innerConsumer) {
            this.f15897j.mo4424c(innerConsumer);
            onComplete();
        }

        /* renamed from: f */
        void m4236f(FlatMapCompletableMainSubscriber<T>.InnerConsumer innerConsumer, Throwable th) {
            this.f15897j.mo4424c(innerConsumer);
            onError(th);
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return true;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable b = this.f15894g.m3455b();
                if (b != null) {
                    this.f15893f.onError(b);
                } else {
                    this.f15893f.onComplete();
                }
            } else if (this.f15898k != Integer.MAX_VALUE) {
                this.f15899l.request(1L);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.f15894g.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
            } else if (!this.f15896i) {
                cancel();
                if (getAndSet(0) > 0) {
                    this.f15893f.onError(this.f15894g.m3455b());
                }
            } else if (decrementAndGet() == 0) {
                this.f15893f.onError(this.f15894g.m3455b());
            } else if (this.f15898k != Integer.MAX_VALUE) {
                this.f15899l.request(1L);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            try {
                Object apply = this.f15895h.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null CompletableSource");
                CompletableSource completableSource = (CompletableSource) apply;
                getAndIncrement();
                InnerConsumer innerConsumer = new InnerConsumer();
                if (!this.f15900m && this.f15897j.mo4425b(innerConsumer)) {
                    completableSource.mo4514b(innerConsumer);
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f15899l.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15899l, subscription)) {
                this.f15899l = subscription;
                this.f15893f.onSubscribe(this);
                int i = this.f15898k;
                if (i == Integer.MAX_VALUE) {
                    subscription.request(Long.MAX_VALUE);
                } else {
                    subscription.request(i);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            return null;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return i & 2;
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new FlatMapCompletableMainSubscriber(subscriber, this.f15890h, this.f15892j, this.f15891i));
    }
}
