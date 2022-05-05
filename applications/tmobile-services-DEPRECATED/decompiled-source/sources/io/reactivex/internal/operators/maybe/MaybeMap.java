package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeMap.class */
public final class MaybeMap<T, R> extends AbstractMaybeWithUpstream<T, R> {

    /* renamed from: g */
    final Function<? super T, ? extends R> f17157g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeMap$MapMaybeObserver.class */
    static final class MapMaybeObserver<T, R> implements MaybeObserver<T>, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super R> f17158f;

        /* renamed from: g */
        final Function<? super T, ? extends R> f17159g;

        /* renamed from: h */
        Disposable f17160h;

        /* JADX INFO: Access modifiers changed from: package-private */
        public MapMaybeObserver(MaybeObserver<? super R> maybeObserver, Function<? super T, ? extends R> function) {
            this.f17158f = maybeObserver;
            this.f17159g = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Disposable disposable = this.f17160h;
            this.f17160h = DisposableHelper.DISPOSED;
            disposable.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17160h.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17158f.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17158f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17160h, disposable)) {
                this.f17160h = disposable;
                this.f17158f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                Object apply = this.f17159g.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null item");
                this.f17158f.onSuccess(apply);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17158f.onError(th);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super R> maybeObserver) {
        this.f16960f.mo4485b(new MapMaybeObserver(maybeObserver, this.f17157g));
    }
}
