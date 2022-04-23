package io.reactivex.internal.operators.maybe;

import io.reactivex.FlowableSubscriber;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTimeoutPublisher.class */
public final class MaybeTimeoutPublisher<T, U> extends AbstractMaybeWithUpstream<T, T> {

    /* renamed from: g */
    final Publisher<U> f17237g;

    /* renamed from: h */
    final MaybeSource<? extends T> f17238h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTimeoutPublisher$TimeoutFallbackMaybeObserver.class */
    public static final class TimeoutFallbackMaybeObserver<T> extends AtomicReference<Disposable> implements MaybeObserver<T> {
        private static final long serialVersionUID = 8663801314800248617L;

        /* renamed from: f */
        final MaybeObserver<? super T> f17239f;

        TimeoutFallbackMaybeObserver(MaybeObserver<? super T> maybeObserver) {
            this.f17239f = maybeObserver;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17239f.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17239f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17239f.onSuccess(t);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTimeoutPublisher$TimeoutMainMaybeObserver.class */
    static final class TimeoutMainMaybeObserver<T, U> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = -5955289211445418871L;

        /* renamed from: f */
        final MaybeObserver<? super T> f17240f;

        /* renamed from: g */
        final TimeoutOtherMaybeObserver<T, U> f17241g = new TimeoutOtherMaybeObserver<>(this);

        /* renamed from: h */
        final MaybeSource<? extends T> f17242h;

        /* renamed from: i */
        final TimeoutFallbackMaybeObserver<T> f17243i;

        TimeoutMainMaybeObserver(MaybeObserver<? super T> maybeObserver, MaybeSource<? extends T> maybeSource) {
            this.f17240f = maybeObserver;
            this.f17242h = maybeSource;
            this.f17243i = maybeSource != null ? new TimeoutFallbackMaybeObserver<>(maybeObserver) : null;
        }

        /* renamed from: a */
        public void m3978a() {
            if (DisposableHelper.dispose(this)) {
                MaybeSource<? extends T> maybeSource = this.f17242h;
                if (maybeSource == null) {
                    this.f17240f.onError(new TimeoutException());
                } else {
                    maybeSource.mo4485b(this.f17243i);
                }
            }
        }

        /* renamed from: b */
        public void m3977b(Throwable th) {
            if (DisposableHelper.dispose(this)) {
                this.f17240f.onError(th);
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
            SubscriptionHelper.cancel(this.f17241g);
            TimeoutFallbackMaybeObserver<T> timeoutFallbackMaybeObserver = this.f17243i;
            if (timeoutFallbackMaybeObserver != null) {
                DisposableHelper.dispose(timeoutFallbackMaybeObserver);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            SubscriptionHelper.cancel(this.f17241g);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f17240f.onComplete();
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f17241g);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f17240f.onError(th);
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
            SubscriptionHelper.cancel(this.f17241g);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f17240f.onSuccess(t);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTimeoutPublisher$TimeoutOtherMaybeObserver.class */
    static final class TimeoutOtherMaybeObserver<T, U> extends AtomicReference<Subscription> implements FlowableSubscriber<Object> {
        private static final long serialVersionUID = 8663801314800248617L;

        /* renamed from: f */
        final TimeoutMainMaybeObserver<T, U> f17244f;

        TimeoutOtherMaybeObserver(TimeoutMainMaybeObserver<T, U> timeoutMainMaybeObserver) {
            this.f17244f = timeoutMainMaybeObserver;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f17244f.m3978a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f17244f.m3977b(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            get().cancel();
            this.f17244f.m3978a();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.setOnce(this, subscription, Long.MAX_VALUE);
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        TimeoutMainMaybeObserver timeoutMainMaybeObserver = new TimeoutMainMaybeObserver(maybeObserver, this.f17238h);
        maybeObserver.onSubscribe(timeoutMainMaybeObserver);
        this.f17237g.mo5c(timeoutMainMaybeObserver.f17241g);
        this.f16960f.mo4485b(timeoutMainMaybeObserver);
    }
}
