package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.ResumeSingleObserver;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleResumeNext.class */
public final class SingleResumeNext<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<? extends T> f19146f;

    /* renamed from: g */
    final Function<? super Throwable, ? extends SingleSource<? extends T>> f19147g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleResumeNext$ResumeMainSingleObserver.class */
    static final class ResumeMainSingleObserver<T> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable {
        private static final long serialVersionUID = -5314538511045349925L;

        /* renamed from: f */
        final SingleObserver<? super T> f19148f;

        /* renamed from: g */
        final Function<? super Throwable, ? extends SingleSource<? extends T>> f19149g;

        ResumeMainSingleObserver(SingleObserver<? super T> singleObserver, Function<? super Throwable, ? extends SingleSource<? extends T>> function) {
            this.f19148f = singleObserver;
            this.f19149g = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            try {
                Object apply = this.f19149g.apply(th);
                ObjectHelper.m4363e(apply, "The nextFunction returned a null SingleSource.");
                ((SingleSource) apply).mo4457b(new ResumeSingleObserver(this, this.f19148f));
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                this.f19148f.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.f19148f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f19148f.onSuccess(t);
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19146f.mo4457b(new ResumeMainSingleObserver(singleObserver, this.f19147g));
    }
}
