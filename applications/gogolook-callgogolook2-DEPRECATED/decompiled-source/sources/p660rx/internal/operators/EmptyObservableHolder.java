package p660rx.internal.operators;

import p660rx.Observable;
import p660rx.Subscriber;
/* renamed from: rx.internal.operators.EmptyObservableHolder */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/EmptyObservableHolder.class */
public enum EmptyObservableHolder implements Observable.OnSubscribe<Object> {
    INSTANCE;
    
    public static final Observable<Object> EMPTY = Observable.unsafeCreate(INSTANCE);

    public static <T> Observable<T> instance() {
        return (Observable<T>) EMPTY;
    }

    public void call(Subscriber<? super Object> subscriber) {
        subscriber.onCompleted();
    }
}
