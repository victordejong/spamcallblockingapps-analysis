package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiConsumer;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDoOnEvent.class */
public final class MaybeDoOnEvent<T> extends AbstractMaybeWithUpstream<T, T> {

    /* renamed from: g */
    final BiConsumer<? super T, ? super Throwable> f17049g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDoOnEvent$DoOnEventMaybeObserver.class */
    static final class DoOnEventMaybeObserver<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super T> f17050f;

        /* renamed from: g */
        final BiConsumer<? super T, ? super Throwable> f17051g;

        /* renamed from: h */
        Disposable f17052h;

        DoOnEventMaybeObserver(MaybeObserver<? super T> maybeObserver, BiConsumer<? super T, ? super Throwable> biConsumer) {
            this.f17050f = maybeObserver;
            this.f17051g = biConsumer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17052h.dispose();
            this.f17052h = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17052h.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17052h = DisposableHelper.DISPOSED;
            try {
                this.f17051g.mo4369a(null, null);
                this.f17050f.onComplete();
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17050f.onError(th);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17052h = DisposableHelper.DISPOSED;
            try {
                this.f17051g.mo4369a(null, th);
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                th = new CompositeException(th, th2);
            }
            this.f17050f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17052h, disposable)) {
                this.f17052h = disposable;
                this.f17050f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17052h = DisposableHelper.DISPOSED;
            try {
                this.f17051g.mo4369a(t, null);
                this.f17050f.onSuccess(t);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17050f.onError(th);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f16960f.mo4485b(new DoOnEventMaybeObserver(maybeObserver, this.f17049g));
    }
}
