package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.observables.ConnectableObservable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableAutoConnect.class */
public final class ObservableAutoConnect<T> extends Observable<T> {

    /* renamed from: f */
    final ConnectableObservable<? extends T> f17555f;

    /* renamed from: g */
    final int f17556g;

    /* renamed from: h */
    final Consumer<? super Disposable> f17557h;

    /* renamed from: i */
    final AtomicInteger f17558i;

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17555f.subscribe((Observer<? super Object>) observer);
        if (this.f17558i.incrementAndGet() == this.f17556g) {
            this.f17555f.mo3394d(this.f17557h);
        }
    }
}
