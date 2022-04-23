package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatten.class */
public final class MaybeFlatten<T, R> extends AbstractMaybeWithUpstream<T, R> {

    /* renamed from: g */
    final Function<? super T, ? extends MaybeSource<? extends R>> f17126g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver.class */
    static final class FlatMapMaybeObserver<T, R> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = 4375739915521278546L;

        /* renamed from: f */
        final MaybeObserver<? super R> f17127f;

        /* renamed from: g */
        final Function<? super T, ? extends MaybeSource<? extends R>> f17128g;

        /* renamed from: h */
        Disposable f17129h;

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatten$FlatMapMaybeObserver$InnerObserver.class */
        final class InnerObserver implements MaybeObserver<R> {
            InnerObserver() {
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                FlatMapMaybeObserver.this.f17127f.onComplete();
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                FlatMapMaybeObserver.this.f17127f.onError(th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(FlatMapMaybeObserver.this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(R r) {
                FlatMapMaybeObserver.this.f17127f.onSuccess(r);
            }
        }

        FlatMapMaybeObserver(MaybeObserver<? super R> maybeObserver, Function<? super T, ? extends MaybeSource<? extends R>> function) {
            this.f17127f = maybeObserver;
            this.f17128g = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f17129h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17127f.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17127f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17129h, disposable)) {
                this.f17129h = disposable;
                this.f17127f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                Object apply = this.f17128g.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null MaybeSource");
                MaybeSource maybeSource = (MaybeSource) apply;
                if (!isDisposed()) {
                    maybeSource.mo4485b(new InnerObserver());
                }
            } catch (Exception e) {
                Exceptions.m4428b(e);
                this.f17127f.onError(e);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super R> maybeObserver) {
        this.f16960f.mo4485b(new FlatMapMaybeObserver(maybeObserver, this.f17126g));
    }
}
