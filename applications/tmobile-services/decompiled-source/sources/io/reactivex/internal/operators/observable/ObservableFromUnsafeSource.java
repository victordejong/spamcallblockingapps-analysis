package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFromUnsafeSource.class */
public final class ObservableFromUnsafeSource<T> extends Observable<T> {

    /* renamed from: f */
    final ObservableSource<T> f17984f;

    public ObservableFromUnsafeSource(ObservableSource<T> observableSource) {
        this.f17984f = observableSource;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f17984f.subscribe(observer);
    }
}
