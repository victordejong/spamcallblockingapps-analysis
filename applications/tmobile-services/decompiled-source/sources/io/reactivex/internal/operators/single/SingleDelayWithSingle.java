package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.ResumeSingleObserver;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDelayWithSingle.class */
public final class SingleDelayWithSingle<T, U> extends Single<T> {

    /* renamed from: f */
    final SingleSource<T> f19015f;

    /* renamed from: g */
    final SingleSource<U> f19016g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDelayWithSingle$OtherObserver.class */
    static final class OtherObserver<T, U> extends AtomicReference<Disposable> implements SingleObserver<U>, Disposable {
        private static final long serialVersionUID = -8565274649390031272L;

        /* renamed from: f */
        final SingleObserver<? super T> f19017f;

        /* renamed from: g */
        final SingleSource<T> f19018g;

        OtherObserver(SingleObserver<? super T> singleObserver, SingleSource<T> singleSource) {
            this.f19017f = singleObserver;
            this.f19018g = singleSource;
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
            this.f19017f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.f19017f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(U u) {
            this.f19018g.mo4457b(new ResumeSingleObserver(this, this.f19017f));
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19016g.mo4457b(new OtherObserver(singleObserver, this.f19015f));
    }
}
