package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTimeoutMaybe.class */
public final class MaybeTimeoutMaybe<T, U> extends AbstractMaybeWithUpstream<T, T> {

    /* renamed from: g */
    final MaybeSource<U> f17229g;

    /* renamed from: h */
    final MaybeSource<? extends T> f17230h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutFallbackMaybeObserver.class */
    public static final class TimeoutFallbackMaybeObserver<T> extends AtomicReference<Disposable> implements MaybeObserver<T> {
        private static final long serialVersionUID = 8663801314800248617L;

        /* renamed from: f */
        final MaybeObserver<? super T> f17231f;

        TimeoutFallbackMaybeObserver(MaybeObserver<? super T> maybeObserver) {
            this.f17231f = maybeObserver;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17231f.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17231f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17231f.onSuccess(t);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutMainMaybeObserver.class */
    static final class TimeoutMainMaybeObserver<T, U> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = -5955289211445418871L;

        /* renamed from: f */
        final MaybeObserver<? super T> f17232f;

        /* renamed from: g */
        final TimeoutOtherMaybeObserver<T, U> f17233g = new TimeoutOtherMaybeObserver<>(this);

        /* renamed from: h */
        final MaybeSource<? extends T> f17234h;

        /* renamed from: i */
        final TimeoutFallbackMaybeObserver<T> f17235i;

        TimeoutMainMaybeObserver(MaybeObserver<? super T> maybeObserver, MaybeSource<? extends T> maybeSource) {
            this.f17232f = maybeObserver;
            this.f17234h = maybeSource;
            this.f17235i = maybeSource != null ? new TimeoutFallbackMaybeObserver<>(maybeObserver) : null;
        }

        /* renamed from: a */
        public void m3980a() {
            if (DisposableHelper.dispose(this)) {
                MaybeSource<? extends T> maybeSource = this.f17234h;
                if (maybeSource == null) {
                    this.f17232f.onError(new TimeoutException());
                } else {
                    maybeSource.mo4485b(this.f17235i);
                }
            }
        }

        /* renamed from: b */
        public void m3979b(Throwable th) {
            if (DisposableHelper.dispose(this)) {
                this.f17232f.onError(th);
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
            DisposableHelper.dispose(this.f17233g);
            TimeoutFallbackMaybeObserver<T> timeoutFallbackMaybeObserver = this.f17235i;
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
            DisposableHelper.dispose(this.f17233g);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f17232f.onComplete();
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f17233g);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f17232f.onError(th);
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
            DisposableHelper.dispose(this.f17233g);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f17232f.onSuccess(t);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTimeoutMaybe$TimeoutOtherMaybeObserver.class */
    static final class TimeoutOtherMaybeObserver<T, U> extends AtomicReference<Disposable> implements MaybeObserver<Object> {
        private static final long serialVersionUID = 8663801314800248617L;

        /* renamed from: f */
        final TimeoutMainMaybeObserver<T, U> f17236f;

        TimeoutOtherMaybeObserver(TimeoutMainMaybeObserver<T, U> timeoutMainMaybeObserver) {
            this.f17236f = timeoutMainMaybeObserver;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17236f.m3980a();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17236f.m3979b(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(Object obj) {
            this.f17236f.m3980a();
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        TimeoutMainMaybeObserver timeoutMainMaybeObserver = new TimeoutMainMaybeObserver(maybeObserver, this.f17230h);
        maybeObserver.onSubscribe(timeoutMainMaybeObserver);
        this.f17229g.mo4485b(timeoutMainMaybeObserver.f17233g);
        this.f16960f.mo4485b(timeoutMainMaybeObserver);
    }
}
