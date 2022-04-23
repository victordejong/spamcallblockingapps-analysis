package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableOperator;
import io.reactivex.CompletableSource;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableLift.class */
public final class CompletableLift extends Completable {

    /* renamed from: f */
    final CompletableSource f15315f;

    /* renamed from: g */
    final CompletableOperator f15316g;

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        try {
            this.f15315f.mo4514b(this.f15316g.m4515a(completableObserver));
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            RxJavaPlugins.m3354t(th);
        }
    }
}
