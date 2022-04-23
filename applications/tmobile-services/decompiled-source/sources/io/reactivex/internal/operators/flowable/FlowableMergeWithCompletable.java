package io.reactivex.internal.operators.flowable;

import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.HalfSerializer;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMergeWithCompletable.class */
public final class FlowableMergeWithCompletable<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final CompletableSource f16157h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber.class */
    static final class MergeWithSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -4592979584110982903L;

        /* renamed from: f */
        final Subscriber<? super T> f16158f;

        /* renamed from: g */
        final AtomicReference<Subscription> f16159g = new AtomicReference<>();

        /* renamed from: h */
        final OtherObserver f16160h = new OtherObserver(this);

        /* renamed from: i */
        final AtomicThrowable f16161i = new AtomicThrowable();

        /* renamed from: j */
        final AtomicLong f16162j = new AtomicLong();

        /* renamed from: k */
        volatile boolean f16163k;

        /* renamed from: l */
        volatile boolean f16164l;

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber$OtherObserver.class */
        static final class OtherObserver extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = -2935427570954647017L;

            /* renamed from: f */
            final MergeWithSubscriber<?> f16165f;

            OtherObserver(MergeWithSubscriber<?> mergeWithSubscriber) {
                this.f16165f = mergeWithSubscriber;
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                this.f16165f.m4169a();
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                this.f16165f.m4168b(th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }
        }

        MergeWithSubscriber(Subscriber<? super T> subscriber) {
            this.f16158f = subscriber;
        }

        /* renamed from: a */
        void m4169a() {
            this.f16164l = true;
            if (this.f16163k) {
                HalfSerializer.m3432b(this.f16158f, this, this.f16161i);
            }
        }

        /* renamed from: b */
        void m4168b(Throwable th) {
            SubscriptionHelper.cancel(this.f16159g);
            HalfSerializer.m3430d(this.f16158f, th, this, this.f16161i);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SubscriptionHelper.cancel(this.f16159g);
            DisposableHelper.dispose(this.f16160h);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16163k = true;
            if (this.f16164l) {
                HalfSerializer.m3432b(this.f16158f, this, this.f16161i);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f16160h);
            HalfSerializer.m3430d(this.f16158f, th, this, this.f16161i);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            HalfSerializer.m3428f(this.f16158f, t, this, this.f16161i);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.deferredSetOnce(this.f16159g, this.f16162j, subscription);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            SubscriptionHelper.deferredRequest(this.f16159g, this.f16162j, j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        MergeWithSubscriber mergeWithSubscriber = new MergeWithSubscriber(subscriber);
        subscriber.onSubscribe(mergeWithSubscriber);
        this.f15411g.m4493v(mergeWithSubscriber);
        this.f16157h.mo4514b(mergeWithSubscriber.f16160h);
    }
}
