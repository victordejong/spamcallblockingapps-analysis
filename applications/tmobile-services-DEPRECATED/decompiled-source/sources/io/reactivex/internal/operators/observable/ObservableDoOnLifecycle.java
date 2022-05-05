package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.observers.DisposableLambdaObserver;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDoOnLifecycle.class */
public final class ObservableDoOnLifecycle<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    private final Consumer<? super Disposable> f17856g;

    /* renamed from: h */
    private final Action f17857h;

    public ObservableDoOnLifecycle(Observable<T> observable, Consumer<? super Disposable> consumer, Action action) {
        super(observable);
        this.f17856g = consumer;
        this.f17857h = action;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new DisposableLambdaObserver(observer, this.f17856g, this.f17857h));
    }
}
