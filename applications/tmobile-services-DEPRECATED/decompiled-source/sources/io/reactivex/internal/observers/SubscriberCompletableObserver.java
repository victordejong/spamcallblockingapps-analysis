package io.reactivex.internal.observers;

import io.reactivex.CompletableObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/observers/SubscriberCompletableObserver.class */
public final class SubscriberCompletableObserver<T> implements CompletableObserver, Subscription {

    /* renamed from: f */
    final Subscriber<? super T> f15222f;

    /* renamed from: g */
    Disposable f15223g;

    public SubscriberCompletableObserver(Subscriber<? super T> subscriber) {
        this.f15222f = subscriber;
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        this.f15223g.dispose();
    }

    @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
    public void onComplete() {
        this.f15222f.onComplete();
    }

    @Override // io.reactivex.CompletableObserver
    public void onError(Throwable th) {
        this.f15222f.onError(th);
    }

    @Override // io.reactivex.CompletableObserver
    public void onSubscribe(Disposable disposable) {
        if (DisposableHelper.validate(this.f15223g, disposable)) {
            this.f15223g = disposable;
            this.f15222f.onSubscribe(this);
        }
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
    }
}
