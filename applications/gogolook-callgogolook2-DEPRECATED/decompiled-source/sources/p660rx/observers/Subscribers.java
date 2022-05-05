package p660rx.observers;

import p660rx.Subscriber;
/* renamed from: rx.observers.Subscribers */
/* loaded from: classes3-dex2jar.jar:rx/observers/Subscribers.class */
public final class Subscribers {
    public static <T> Subscriber<T> wrap(final Subscriber<? super T> subscriber) {
        return new Subscriber<T>(subscriber) { // from class: rx.observers.Subscribers.5
            @Override // p660rx.Observer
            public void onCompleted() {
                subscriber.onCompleted();
            }

            @Override // p660rx.Observer
            public void onError(Throwable th) {
                subscriber.onError(th);
            }

            @Override // p660rx.Observer
            public void onNext(T t) {
                subscriber.onNext(t);
            }
        };
    }
}
