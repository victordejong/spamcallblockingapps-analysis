package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableSubscribeOn.class */
public final class CompletableSubscribeOn extends Completable {

    /* renamed from: f */
    final CompletableSource f15366f;

    /* renamed from: g */
    final Scheduler f15367g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableSubscribeOn$SubscribeOnObserver.class */
    static final class SubscribeOnObserver extends AtomicReference<Disposable> implements CompletableObserver, Disposable, Runnable {
        private static final long serialVersionUID = 7000911171163930287L;

        /* renamed from: f */
        final CompletableObserver f15368f;

        /* renamed from: g */
        final SequentialDisposable f15369g = new SequentialDisposable();

        /* renamed from: h */
        final CompletableSource f15370h;

        SubscribeOnObserver(CompletableObserver completableObserver, CompletableSource completableSource) {
            this.f15368f = completableObserver;
            this.f15370h = completableSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f15369g.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f15368f.onComplete();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f15368f.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15370h.mo4514b(this);
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        SubscribeOnObserver subscribeOnObserver = new SubscribeOnObserver(completableObserver, this.f15366f);
        completableObserver.onSubscribe(subscribeOnObserver);
        subscribeOnObserver.f15369g.m4422a(this.f15367g.mo3499d(subscribeOnObserver));
    }
}
