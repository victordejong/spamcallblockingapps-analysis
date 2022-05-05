package io.reactivex.internal.operators.single;

import io.reactivex.Scheduler;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleTimeout.class */
public final class SingleTimeout<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<T> f19160f;

    /* renamed from: g */
    final long f19161g;

    /* renamed from: h */
    final TimeUnit f19162h;

    /* renamed from: i */
    final Scheduler f19163i;

    /* renamed from: j */
    final SingleSource<? extends T> f19164j;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver.class */
    static final class TimeoutMainObserver<T> extends AtomicReference<Disposable> implements SingleObserver<T>, Runnable, Disposable {
        private static final long serialVersionUID = 37497744973048446L;

        /* renamed from: f */
        final SingleObserver<? super T> f19165f;

        /* renamed from: g */
        final AtomicReference<Disposable> f19166g = new AtomicReference<>();

        /* renamed from: h */
        final TimeoutFallbackObserver<T> f19167h;

        /* renamed from: i */
        SingleSource<? extends T> f19168i;

        /* renamed from: j */
        final long f19169j;

        /* renamed from: k */
        final TimeUnit f19170k;

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver$TimeoutFallbackObserver.class */
        static final class TimeoutFallbackObserver<T> extends AtomicReference<Disposable> implements SingleObserver<T> {
            private static final long serialVersionUID = 2071387740092105509L;

            /* renamed from: f */
            final SingleObserver<? super T> f19171f;

            TimeoutFallbackObserver(SingleObserver<? super T> singleObserver) {
                this.f19171f = singleObserver;
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                this.f19171f.onError(th);
            }

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(T t) {
                this.f19171f.onSuccess(t);
            }
        }

        TimeoutMainObserver(SingleObserver<? super T> singleObserver, SingleSource<? extends T> singleSource, long j, TimeUnit timeUnit) {
            this.f19165f = singleObserver;
            this.f19168i = singleSource;
            this.f19169j = j;
            this.f19170k = timeUnit;
            if (singleSource != null) {
                this.f19167h = new TimeoutFallbackObserver<>(singleObserver);
            } else {
                this.f19167h = null;
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
            DisposableHelper.dispose(this.f19166g);
            TimeoutFallbackObserver<T> timeoutFallbackObserver = this.f19167h;
            if (timeoutFallbackObserver != null) {
                DisposableHelper.dispose(timeoutFallbackObserver);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            Disposable disposable = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable == disposableHelper || !compareAndSet(disposable, disposableHelper)) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            DisposableHelper.dispose(this.f19166g);
            this.f19165f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            Disposable disposable = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable != disposableHelper && compareAndSet(disposable, disposableHelper)) {
                DisposableHelper.dispose(this.f19166g);
                this.f19165f.onSuccess(t);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Disposable disposable = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable != disposableHelper && compareAndSet(disposable, disposableHelper)) {
                if (disposable != null) {
                    disposable.dispose();
                }
                SingleSource<? extends T> singleSource = this.f19168i;
                if (singleSource == null) {
                    this.f19165f.onError(new TimeoutException(ExceptionHelper.m3435d(this.f19169j, this.f19170k)));
                    return;
                }
                this.f19168i = null;
                singleSource.mo4457b(this.f19167h);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        TimeoutMainObserver timeoutMainObserver = new TimeoutMainObserver(singleObserver, this.f19164j, this.f19161g, this.f19162h);
        singleObserver.onSubscribe(timeoutMainObserver);
        DisposableHelper.replace(timeoutMainObserver.f19166g, this.f19163i.mo3498e(timeoutMainObserver, this.f19161g, this.f19162h));
        this.f19160f.mo4457b(timeoutMainObserver);
    }
}
