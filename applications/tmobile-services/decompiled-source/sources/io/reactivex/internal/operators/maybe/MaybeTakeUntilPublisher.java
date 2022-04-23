package io.reactivex.internal.operators.maybe;

import io.reactivex.FlowableSubscriber;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher.class */
public final class MaybeTakeUntilPublisher<T, U> extends AbstractMaybeWithUpstream<T, T> {

    /* renamed from: g */
    final Publisher<U> f17225g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver.class */
    static final class TakeUntilMainMaybeObserver<T, U> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = -2187421758664251153L;

        /* renamed from: f */
        final MaybeObserver<? super T> f17226f;

        /* renamed from: g */
        final TakeUntilOtherMaybeObserver<U> f17227g = new TakeUntilOtherMaybeObserver<>(this);

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTakeUntilPublisher$TakeUntilMainMaybeObserver$TakeUntilOtherMaybeObserver.class */
        static final class TakeUntilOtherMaybeObserver<U> extends AtomicReference<Subscription> implements FlowableSubscriber<U> {
            private static final long serialVersionUID = -1266041316834525931L;

            /* renamed from: f */
            final TakeUntilMainMaybeObserver<?, U> f17228f;

            TakeUntilOtherMaybeObserver(TakeUntilMainMaybeObserver<?, U> takeUntilMainMaybeObserver) {
                this.f17228f = takeUntilMainMaybeObserver;
            }

            @Override // org.reactivestreams.Subscriber
            public void onComplete() {
                this.f17228f.m3982a();
            }

            @Override // org.reactivestreams.Subscriber
            public void onError(Throwable th) {
                this.f17228f.m3981b(th);
            }

            @Override // org.reactivestreams.Subscriber
            public void onNext(Object obj) {
                SubscriptionHelper.cancel(this);
                this.f17228f.m3982a();
            }

            @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
            public void onSubscribe(Subscription subscription) {
                SubscriptionHelper.setOnce(this, subscription, Long.MAX_VALUE);
            }
        }

        TakeUntilMainMaybeObserver(MaybeObserver<? super T> maybeObserver) {
            this.f17226f = maybeObserver;
        }

        /* renamed from: a */
        void m3982a() {
            if (DisposableHelper.dispose(this)) {
                this.f17226f.onComplete();
            }
        }

        /* renamed from: b */
        void m3981b(Throwable th) {
            if (DisposableHelper.dispose(this)) {
                this.f17226f.onError(th);
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
            SubscriptionHelper.cancel(this.f17227g);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            SubscriptionHelper.cancel(this.f17227g);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f17226f.onComplete();
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f17227g);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f17226f.onError(th);
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            SubscriptionHelper.cancel(this.f17227g);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f17226f.onSuccess(t);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        TakeUntilMainMaybeObserver takeUntilMainMaybeObserver = new TakeUntilMainMaybeObserver(maybeObserver);
        maybeObserver.onSubscribe(takeUntilMainMaybeObserver);
        this.f17225g.mo5c(takeUntilMainMaybeObserver.f17227g);
        this.f16960f.mo4485b(takeUntilMainMaybeObserver);
    }
}
