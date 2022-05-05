package com.hannesdorfmann.mosby3.mvi;

import io.reactivex.observers.DisposableObserver;
import io.reactivex.subjects.BehaviorSubject;
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/mvi/DisposableViewStateObserver.class */
class DisposableViewStateObserver<VS> extends DisposableObserver<VS> {
    private final BehaviorSubject<VS> subject;

    public DisposableViewStateObserver(BehaviorSubject<VS> behaviorSubject) {
        this.subject = behaviorSubject;
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        throw new IllegalStateException("ViewState observable must not reach error state - onError()", th);
    }

    @Override // io.reactivex.Observer
    public void onNext(VS vs) {
        this.subject.onNext(vs);
    }
}
