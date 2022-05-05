package io.reactivex.internal.observers;

import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/observers/ResumeSingleObserver.class */
public final class ResumeSingleObserver<T> implements SingleObserver<T> {

    /* renamed from: f */
    final AtomicReference<Disposable> f15220f;

    /* renamed from: g */
    final SingleObserver<? super T> f15221g;

    public ResumeSingleObserver(AtomicReference<Disposable> atomicReference, SingleObserver<? super T> singleObserver) {
        this.f15220f = atomicReference;
        this.f15221g = singleObserver;
    }

    @Override // io.reactivex.SingleObserver
    public void onError(Throwable th) {
        this.f15221g.onError(th);
    }

    @Override // io.reactivex.SingleObserver
    public void onSubscribe(Disposable disposable) {
        DisposableHelper.replace(this.f15220f, disposable);
    }

    @Override // io.reactivex.SingleObserver
    public void onSuccess(T t) {
        this.f15221g.onSuccess(t);
    }
}
