package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposables;
import io.reactivex.internal.fuseable.ScalarCallable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeJust.class */
public final class MaybeJust<T> extends Maybe<T> implements ScalarCallable<T> {

    /* renamed from: f */
    final T f17155f;

    @Override // io.reactivex.internal.fuseable.ScalarCallable, java.util.concurrent.Callable
    public T call() {
        return this.f17155f;
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        maybeObserver.onSubscribe(Disposables.m4441a());
        maybeObserver.onSuccess((T) this.f17155f);
    }
}
