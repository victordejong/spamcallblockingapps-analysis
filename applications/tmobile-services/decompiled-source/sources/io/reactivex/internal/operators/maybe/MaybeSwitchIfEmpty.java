package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeSwitchIfEmpty.class */
public final class MaybeSwitchIfEmpty<T> extends AbstractMaybeWithUpstream<T, T> {

    /* renamed from: g */
    final MaybeSource<? extends T> f17210g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeSwitchIfEmpty$SwitchIfEmptyMaybeObserver.class */
    static final class SwitchIfEmptyMaybeObserver<T> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = -2223459372976438024L;

        /* renamed from: f */
        final MaybeObserver<? super T> f17211f;

        /* renamed from: g */
        final MaybeSource<? extends T> f17212g;

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeSwitchIfEmpty$SwitchIfEmptyMaybeObserver$OtherMaybeObserver.class */
        static final class OtherMaybeObserver<T> implements MaybeObserver<T> {

            /* renamed from: f */
            final MaybeObserver<? super T> f17213f;

            /* renamed from: g */
            final AtomicReference<Disposable> f17214g;

            OtherMaybeObserver(MaybeObserver<? super T> maybeObserver, AtomicReference<Disposable> atomicReference) {
                this.f17213f = maybeObserver;
                this.f17214g = atomicReference;
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                this.f17213f.onComplete();
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                this.f17213f.onError(th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this.f17214g, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(T t) {
                this.f17213f.onSuccess(t);
            }
        }

        SwitchIfEmptyMaybeObserver(MaybeObserver<? super T> maybeObserver, MaybeSource<? extends T> maybeSource) {
            this.f17211f = maybeObserver;
            this.f17212g = maybeSource;
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
            Disposable disposable = get();
            if (disposable != DisposableHelper.DISPOSED && compareAndSet(disposable, null)) {
                this.f17212g.mo4485b(new OtherMaybeObserver(this.f17211f, this));
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17211f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.f17211f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17211f.onSuccess(t);
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f16960f.mo4485b(new SwitchIfEmptyMaybeObserver(maybeObserver, this.f17210g));
    }
}
