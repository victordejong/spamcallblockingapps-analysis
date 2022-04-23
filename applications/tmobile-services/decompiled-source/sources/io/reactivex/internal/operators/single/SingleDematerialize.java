package io.reactivex.internal.operators.single;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.Notification;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.annotations.Experimental;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
@Experimental
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDematerialize.class */
public final class SingleDematerialize<T, R> extends Maybe<R> {

    /* renamed from: f */
    final Single<T> f19019f;

    /* renamed from: g */
    final Function<? super T, Notification<R>> f19020g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDematerialize$DematerializeObserver.class */
    static final class DematerializeObserver<T, R> implements SingleObserver<T>, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super R> f19021f;

        /* renamed from: g */
        final Function<? super T, Notification<R>> f19022g;

        /* renamed from: h */
        Disposable f19023h;

        DematerializeObserver(MaybeObserver<? super R> maybeObserver, Function<? super T, Notification<R>> function) {
            this.f19021f = maybeObserver;
            this.f19022g = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f19023h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19023h.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19021f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f19023h, disposable)) {
                this.f19023h = disposable;
                this.f19021f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                Notification<R> apply = this.f19022g.apply(t);
                ObjectHelper.m4363e(apply, "The selector returned a null Notification");
                Notification<R> notification = apply;
                if (notification.m4477h()) {
                    this.f19021f.onSuccess(notification.m4480e());
                } else if (notification.m4479f()) {
                    this.f19021f.onComplete();
                } else {
                    this.f19021f.onError(notification.m4481d());
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f19021f.onError(th);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super R> maybeObserver) {
        this.f19019f.mo4457b(new DematerializeObserver(maybeObserver, this.f19020g));
    }
}
