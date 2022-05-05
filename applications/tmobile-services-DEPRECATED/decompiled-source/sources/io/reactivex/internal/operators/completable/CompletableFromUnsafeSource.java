package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableFromUnsafeSource.class */
public final class CompletableFromUnsafeSource extends Completable {

    /* renamed from: f */
    final CompletableSource f15311f;

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f15311f.mo4514b(completableObserver);
    }
}
