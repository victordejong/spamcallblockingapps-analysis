package io.reactivex.internal.operators.maybe;

import io.reactivex.FlowableSubscriber;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDelaySubscriptionOtherPublisher.class */
public final class MaybeDelaySubscriptionOtherPublisher<T, U> extends AbstractMaybeWithUpstream<T, T> {

    /* renamed from: g */
    final Publisher<U> f17028g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDelaySubscriptionOtherPublisher$DelayMaybeObserver.class */
    public static final class DelayMaybeObserver<T> extends AtomicReference<Disposable> implements MaybeObserver<T> {
        private static final long serialVersionUID = 706635022205076709L;

        /* renamed from: f */
        final MaybeObserver<? super T> f17029f;

        DelayMaybeObserver(MaybeObserver<? super T> maybeObserver) {
            this.f17029f = maybeObserver;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17029f.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17029f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17029f.onSuccess(t);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDelaySubscriptionOtherPublisher$OtherSubscriber.class */
    static final class OtherSubscriber<T> implements FlowableSubscriber<Object>, Disposable {

        /* renamed from: f */
        final DelayMaybeObserver<T> f17030f;

        /* renamed from: g */
        MaybeSource<T> f17031g;

        /* renamed from: h */
        Subscription f17032h;

        OtherSubscriber(MaybeObserver<? super T> maybeObserver, MaybeSource<T> maybeSource) {
            this.f17030f = new DelayMaybeObserver<>(maybeObserver);
            this.f17031g = maybeSource;
        }

        /* renamed from: a */
        void m4001a() {
            MaybeSource<T> maybeSource = this.f17031g;
            this.f17031g = null;
            maybeSource.mo4485b(this.f17030f);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17032h.cancel();
            this.f17032h = SubscriptionHelper.CANCELLED;
            DisposableHelper.dispose(this.f17030f);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f17030f.get());
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Subscription subscription = this.f17032h;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (subscription != subscriptionHelper) {
                this.f17032h = subscriptionHelper;
                m4001a();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            Subscription subscription = this.f17032h;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (subscription != subscriptionHelper) {
                this.f17032h = subscriptionHelper;
                this.f17030f.f17029f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            Subscription subscription = this.f17032h;
            if (subscription != SubscriptionHelper.CANCELLED) {
                subscription.cancel();
                this.f17032h = SubscriptionHelper.CANCELLED;
                m4001a();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f17032h, subscription)) {
                this.f17032h = subscription;
                this.f17030f.f17029f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f17028g.mo5c(new OtherSubscriber(maybeObserver, this.f16960f));
    }
}
