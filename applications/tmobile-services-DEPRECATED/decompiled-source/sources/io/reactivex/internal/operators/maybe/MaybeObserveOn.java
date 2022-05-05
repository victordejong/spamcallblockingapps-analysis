package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeObserveOn.class */
public final class MaybeObserveOn<T> extends AbstractMaybeWithUpstream<T, T> {

    /* renamed from: g */
    final Scheduler f17176g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver.class */
    static final class ObserveOnMaybeObserver<T> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable, Runnable {
        private static final long serialVersionUID = 8571289934935992137L;

        /* renamed from: f */
        final MaybeObserver<? super T> f17177f;

        /* renamed from: g */
        final Scheduler f17178g;

        /* renamed from: h */
        T f17179h;

        /* renamed from: i */
        Throwable f17180i;

        ObserveOnMaybeObserver(MaybeObserver<? super T> maybeObserver, Scheduler scheduler) {
            this.f17177f = maybeObserver;
            this.f17178g = scheduler;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            DisposableHelper.replace(this, this.f17178g.mo3499d(this));
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17180i = th;
            DisposableHelper.replace(this, this.f17178g.mo3499d(this));
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.f17177f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17179h = t;
            DisposableHelper.replace(this, this.f17178g.mo3499d(this));
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f17180i;
            if (th != null) {
                this.f17180i = null;
                this.f17177f.onError(th);
                return;
            }
            T t = this.f17179h;
            if (t != null) {
                this.f17179h = null;
                this.f17177f.onSuccess(t);
                return;
            }
            this.f17177f.onComplete();
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f16960f.mo4485b(new ObserveOnMaybeObserver(maybeObserver, this.f17176g));
    }
}
