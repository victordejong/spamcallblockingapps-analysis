package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.exceptions.Exceptions;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFromFuture.class */
public final class MaybeFromFuture<T> extends Maybe<T> {

    /* renamed from: f */
    final Future<? extends T> f17136f;

    /* renamed from: g */
    final long f17137g;

    /* renamed from: h */
    final TimeUnit f17138h;

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        Disposable b = Disposables.m4440b();
        maybeObserver.onSubscribe(b);
        if (!b.isDisposed()) {
            try {
                Object obj = this.f17137g <= 0 ? (Object) this.f17136f.get() : (Object) this.f17136f.get(this.f17137g, this.f17138h);
                if (b.isDisposed()) {
                    return;
                }
                if (obj == null) {
                    maybeObserver.onComplete();
                } else {
                    maybeObserver.onSuccess(obj);
                }
            } catch (Throwable th) {
                Throwable th2 = th;
                if (th instanceof ExecutionException) {
                    th2 = th.getCause();
                }
                Exceptions.m4428b(th2);
                if (!b.isDisposed()) {
                    maybeObserver.onError(th2);
                }
            }
        }
    }
}
