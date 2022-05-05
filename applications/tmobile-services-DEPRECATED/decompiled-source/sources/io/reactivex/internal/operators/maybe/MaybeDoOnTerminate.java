package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDoOnTerminate.class */
public final class MaybeDoOnTerminate<T> extends Maybe<T> {

    /* renamed from: f */
    final MaybeSource<T> f17053f;

    /* renamed from: g */
    final Action f17054g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDoOnTerminate$DoOnTerminate.class */
    final class DoOnTerminate implements MaybeObserver<T> {

        /* renamed from: f */
        final MaybeObserver<? super T> f17055f;

        DoOnTerminate(MaybeObserver<? super T> maybeObserver) {
            this.f17055f = maybeObserver;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            try {
                MaybeDoOnTerminate.this.f17054g.run();
                this.f17055f.onComplete();
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17055f.onError(th);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            try {
                MaybeDoOnTerminate.this.f17054g.run();
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                th = new CompositeException(th, th2);
            }
            this.f17055f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            this.f17055f.onSubscribe(disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                MaybeDoOnTerminate.this.f17054g.run();
                this.f17055f.onSuccess(t);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17055f.onError(th);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f17053f.mo4485b(new DoOnTerminate(maybeObserver));
    }
}
