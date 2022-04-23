package io.reactivex.internal.operators.single;

import io.reactivex.Scheduler;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleSubscribeOn.class */
public final class SingleSubscribeOn<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<? extends T> f19150f;

    /* renamed from: g */
    final Scheduler f19151g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleSubscribeOn$SubscribeOnObserver.class */
    static final class SubscribeOnObserver<T> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable, Runnable {
        private static final long serialVersionUID = 7000911171163930287L;

        /* renamed from: f */
        final SingleObserver<? super T> f19152f;

        /* renamed from: g */
        final SequentialDisposable f19153g = new SequentialDisposable();

        /* renamed from: h */
        final SingleSource<? extends T> f19154h;

        SubscribeOnObserver(SingleObserver<? super T> singleObserver, SingleSource<? extends T> singleSource) {
            this.f19152f = singleObserver;
            this.f19154h = singleSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f19153g.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19152f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f19152f.onSuccess(t);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f19154h.mo4457b(this);
        }
    }

    public SingleSubscribeOn(SingleSource<? extends T> singleSource, Scheduler scheduler) {
        this.f19150f = singleSource;
        this.f19151g = scheduler;
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        SubscribeOnObserver subscribeOnObserver = new SubscribeOnObserver(singleObserver, this.f19150f);
        singleObserver.onSubscribe(subscribeOnObserver);
        subscribeOnObserver.f19153g.m4422a(this.f19151g.mo3499d(subscribeOnObserver));
    }
}
