package io.reactivex.internal.operators.single;

import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.ResumeSingleObserver;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDelayWithCompletable.class */
public final class SingleDelayWithCompletable<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<T> f19000f;

    /* renamed from: g */
    final CompletableSource f19001g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDelayWithCompletable$OtherObserver.class */
    static final class OtherObserver<T> extends AtomicReference<Disposable> implements CompletableObserver, Disposable {
        private static final long serialVersionUID = -8565274649390031272L;

        /* renamed from: f */
        final SingleObserver<? super T> f19002f;

        /* renamed from: g */
        final SingleSource<T> f19003g;

        OtherObserver(SingleObserver<? super T> singleObserver, SingleSource<T> singleSource) {
            this.f19002f = singleObserver;
            this.f19003g = singleSource;
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
            this.f19003g.mo4457b(new ResumeSingleObserver(this, this.f19002f));
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f19002f.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.f19002f.onSubscribe(this);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19001g.mo4514b(new OtherObserver(singleObserver, this.f19000f));
    }
}
