package io.reactivex.internal.operators.maybe;

import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDelayWithCompletable.class */
public final class MaybeDelayWithCompletable<T> extends Maybe<T> {

    /* renamed from: f */
    final MaybeSource<T> f17033f;

    /* renamed from: g */
    final CompletableSource f17034g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$DelayWithMainObserver.class */
    static final class DelayWithMainObserver<T> implements MaybeObserver<T> {

        /* renamed from: f */
        final AtomicReference<Disposable> f17035f;

        /* renamed from: g */
        final MaybeObserver<? super T> f17036g;

        DelayWithMainObserver(AtomicReference<Disposable> atomicReference, MaybeObserver<? super T> maybeObserver) {
            this.f17035f = atomicReference;
            this.f17036g = maybeObserver;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17036g.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17036g.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.replace(this.f17035f, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17036g.onSuccess(t);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver.class */
    static final class OtherObserver<T> extends AtomicReference<Disposable> implements CompletableObserver, Disposable {
        private static final long serialVersionUID = 703409937383992161L;

        /* renamed from: f */
        final MaybeObserver<? super T> f17037f;

        /* renamed from: g */
        final MaybeSource<T> f17038g;

        OtherObserver(MaybeObserver<? super T> maybeObserver, MaybeSource<T> maybeSource) {
            this.f17037f = maybeObserver;
            this.f17038g = maybeSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17038g.mo4485b(new DelayWithMainObserver(this, this.f17037f));
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f17037f.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.f17037f.onSubscribe(this);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f17034g.mo4514b(new OtherObserver(maybeObserver, this.f17033f));
    }
}
