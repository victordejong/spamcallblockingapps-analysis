package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposables;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeError.class */
public final class MaybeError<T> extends Maybe<T> {

    /* renamed from: f */
    final Throwable f17066f;

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        maybeObserver.onSubscribe(Disposables.m4441a());
        maybeObserver.onError(this.f17066f);
    }
}
