package p660rx.internal.operators;

import p660rx.Observable;
import p660rx.Subscriber;
import p660rx.exceptions.Exceptions;
import p660rx.plugins.RxJavaHooks;
/* renamed from: rx.internal.operators.OnSubscribeLift */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeLift.class */
public final class OnSubscribeLift<T, R> implements Observable.OnSubscribe<R> {
    public final Observable.Operator<? extends R, ? super T> operator;
    public final Observable.OnSubscribe<T> parent;

    public OnSubscribeLift(Observable.OnSubscribe<T> onSubscribe, Observable.Operator<? extends R, ? super T> operator) {
        this.parent = onSubscribe;
        this.operator = operator;
    }

    @Override // p660rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object obj) {
        call((Subscriber) ((Subscriber) obj));
    }

    public void call(Subscriber<? super R> subscriber) {
        try {
            Subscriber<? super T> call = RxJavaHooks.onObservableLift(this.operator).call(subscriber);
            call.onStart();
            this.parent.call(call);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            subscriber.onError(th);
        }
    }
}
