package com.hannesdorfmann.mosby3.mvi;

import io.reactivex.observers.DisposableObserver;
import io.reactivex.subjects.PublishSubject;
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/mvi/DisposableIntentObserver.class */
class DisposableIntentObserver<I> extends DisposableObserver<I> {
    private final PublishSubject<I> subject;

    public DisposableIntentObserver(PublishSubject<I> publishSubject) {
        this.subject = publishSubject;
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        this.subject.onComplete();
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        throw new IllegalStateException("View intents must not throw errors", th);
    }

    @Override // io.reactivex.Observer
    public void onNext(I i) {
        this.subject.onNext(i);
    }
}
