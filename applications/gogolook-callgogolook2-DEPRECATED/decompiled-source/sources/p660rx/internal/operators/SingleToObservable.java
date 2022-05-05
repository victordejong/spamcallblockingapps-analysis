package p660rx.internal.operators;

import p660rx.Observable;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.Subscriber;
import p660rx.internal.producers.SingleProducer;
/* renamed from: rx.internal.operators.SingleToObservable */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/SingleToObservable.class */
public final class SingleToObservable<T> implements Observable.OnSubscribe<T> {
    public final Single.OnSubscribe<T> source;

    public SingleToObservable(Single.OnSubscribe<T> onSubscribe) {
        this.source = onSubscribe;
    }

    @Override // p660rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object obj) {
        call((Subscriber) ((Subscriber) obj));
    }

    public void call(final Subscriber<? super T> subscriber) {
        SingleSubscriber<T> singleLiftObservableOperator$WrapSubscriberIntoSingle = new SingleSubscriber<T>(subscriber) { // from class: rx.internal.operators.SingleLiftObservableOperator$WrapSubscriberIntoSingle
            public final Subscriber<? super T> actual;

            {
                this.actual = subscriber;
            }

            @Override // p660rx.SingleSubscriber
            public void onError(Throwable th) {
                this.actual.onError(th);
            }

            @Override // p660rx.SingleSubscriber
            public void onSuccess(T t) {
                Subscriber<? super T> subscriber2 = this.actual;
                subscriber2.setProducer(new SingleProducer(subscriber2, t));
            }
        };
        subscriber.add(singleLiftObservableOperator$WrapSubscriberIntoSingle);
        this.source.call(singleLiftObservableOperator$WrapSubscriberIntoSingle);
    }
}
