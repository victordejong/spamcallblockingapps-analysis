package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeSubscribeOn.class */
public final class MaybeSubscribeOn<T> extends AbstractMaybeWithUpstream<T, T> {

    /* renamed from: g */
    final Scheduler f17205g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeSubscribeOn$SubscribeOnMaybeObserver.class */
    static final class SubscribeOnMaybeObserver<T> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = 8571289934935992137L;

        /* renamed from: f */
        final SequentialDisposable f17206f = new SequentialDisposable();

        /* renamed from: g */
        final MaybeObserver<? super T> f17207g;

        SubscribeOnMaybeObserver(MaybeObserver<? super T> maybeObserver) {
            this.f17207g = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f17206f.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17207g.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17207g.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17207g.onSuccess(t);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask.class */
    static final class SubscribeTask<T> implements Runnable {

        /* renamed from: f */
        final MaybeObserver<? super T> f17208f;

        /* renamed from: g */
        final MaybeSource<T> f17209g;

        SubscribeTask(MaybeObserver<? super T> maybeObserver, MaybeSource<T> maybeSource) {
            this.f17208f = maybeObserver;
            this.f17209g = maybeSource;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f17209g.mo4485b(this.f17208f);
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        SubscribeOnMaybeObserver subscribeOnMaybeObserver = new SubscribeOnMaybeObserver(maybeObserver);
        maybeObserver.onSubscribe(subscribeOnMaybeObserver);
        subscribeOnMaybeObserver.f17206f.m4422a(this.f17205g.mo3499d(new SubscribeTask(subscribeOnMaybeObserver, this.f16960f)));
    }
}
