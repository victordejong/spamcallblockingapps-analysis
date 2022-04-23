package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFilterSingle.class */
public final class MaybeFilterSingle<T> extends Maybe<T> {

    /* renamed from: f */
    final SingleSource<T> f17072f;

    /* renamed from: g */
    final Predicate<? super T> f17073g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFilterSingle$FilterMaybeObserver.class */
    static final class FilterMaybeObserver<T> implements SingleObserver<T>, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super T> f17074f;

        /* renamed from: g */
        final Predicate<? super T> f17075g;

        /* renamed from: h */
        Disposable f17076h;

        FilterMaybeObserver(MaybeObserver<? super T> maybeObserver, Predicate<? super T> predicate) {
            this.f17074f = maybeObserver;
            this.f17075g = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Disposable disposable = this.f17076h;
            this.f17076h = DisposableHelper.DISPOSED;
            disposable.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17076h.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f17074f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17076h, disposable)) {
                this.f17076h = disposable;
                this.f17074f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                if (this.f17075g.mo3191a(t)) {
                    this.f17074f.onSuccess(t);
                } else {
                    this.f17074f.onComplete();
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17074f.onError(th);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f17072f.mo4457b(new FilterMaybeObserver(maybeObserver, this.f17073g));
    }
}
