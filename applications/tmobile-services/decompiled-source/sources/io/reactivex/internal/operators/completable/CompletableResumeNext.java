package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableResumeNext.class */
public final class CompletableResumeNext extends Completable {

    /* renamed from: f */
    final CompletableSource f15361f;

    /* renamed from: g */
    final Function<? super Throwable, ? extends CompletableSource> f15362g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNextObserver.class */
    static final class ResumeNextObserver extends AtomicReference<Disposable> implements CompletableObserver, Disposable {
        private static final long serialVersionUID = 5018523762564524046L;

        /* renamed from: f */
        final CompletableObserver f15363f;

        /* renamed from: g */
        final Function<? super Throwable, ? extends CompletableSource> f15364g;

        /* renamed from: h */
        boolean f15365h;

        ResumeNextObserver(CompletableObserver completableObserver, Function<? super Throwable, ? extends CompletableSource> function) {
            this.f15363f = completableObserver;
            this.f15364g = function;
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
            this.f15363f.onComplete();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            if (this.f15365h) {
                this.f15363f.onError(th);
                return;
            }
            this.f15365h = true;
            try {
                Object apply = this.f15364g.apply(th);
                ObjectHelper.m4363e(apply, "The errorMapper returned a null CompletableSource");
                ((CompletableSource) apply).mo4514b(this);
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                this.f15363f.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.replace(this, disposable);
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        ResumeNextObserver resumeNextObserver = new ResumeNextObserver(completableObserver, this.f15362g);
        completableObserver.onSubscribe(resumeNextObserver);
        this.f15361f.mo4514b(resumeNextObserver);
    }
}
