package p660rx.internal.util;

import p660rx.Observer;
import p660rx.Subscriber;
/* renamed from: rx.internal.util.ObserverSubscriber */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/ObserverSubscriber.class */
public final class ObserverSubscriber<T> extends Subscriber<T> {
    public final Observer<? super T> observer;

    public ObserverSubscriber(Observer<? super T> observer) {
        this.observer = observer;
    }

    @Override // p660rx.Observer
    public void onCompleted() {
        this.observer.onCompleted();
    }

    @Override // p660rx.Observer
    public void onError(Throwable th) {
        this.observer.onError(th);
    }

    @Override // p660rx.Observer
    public void onNext(T t) {
        this.observer.onNext(t);
    }
}
