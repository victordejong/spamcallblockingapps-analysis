package io.reactivex.internal.operators.single;

import io.reactivex.Scheduler;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleUnsubscribeOn.class */
public final class SingleUnsubscribeOn<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<T> f19180f;

    /* renamed from: g */
    final Scheduler f19181g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleUnsubscribeOn$UnsubscribeOnSingleObserver.class */
    static final class UnsubscribeOnSingleObserver<T> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable, Runnable {
        private static final long serialVersionUID = 3256698449646456986L;

        /* renamed from: f */
        final SingleObserver<? super T> f19182f;

        /* renamed from: g */
        final Scheduler f19183g;

        /* renamed from: h */
        Disposable f19184h;

        UnsubscribeOnSingleObserver(SingleObserver<? super T> singleObserver, Scheduler scheduler) {
            this.f19182f = singleObserver;
            this.f19183g = scheduler;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Disposable andSet = getAndSet(DisposableHelper.DISPOSED);
            if (andSet != DisposableHelper.DISPOSED) {
                this.f19184h = andSet;
                this.f19183g.mo3499d(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19182f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.f19182f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f19182f.onSuccess(t);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f19184h.dispose();
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19180f.mo4457b(new UnsubscribeOnSingleObserver(singleObserver, this.f19181g));
    }
}
