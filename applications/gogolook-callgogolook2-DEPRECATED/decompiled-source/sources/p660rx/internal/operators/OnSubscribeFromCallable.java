package p660rx.internal.operators;

import java.util.concurrent.Callable;
import p660rx.Observable;
import p660rx.Subscriber;
import p660rx.exceptions.Exceptions;
import p660rx.internal.producers.SingleDelayedProducer;
/* renamed from: rx.internal.operators.OnSubscribeFromCallable */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeFromCallable.class */
public final class OnSubscribeFromCallable<T> implements Observable.OnSubscribe<T> {
    public final Callable<? extends T> resultFactory;

    public OnSubscribeFromCallable(Callable<? extends T> callable) {
        this.resultFactory = callable;
    }

    @Override // p660rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object obj) {
        call((Subscriber) ((Subscriber) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void call(Subscriber<? super T> subscriber) {
        SingleDelayedProducer singleDelayedProducer = new SingleDelayedProducer(subscriber);
        subscriber.setProducer(singleDelayedProducer);
        try {
            singleDelayedProducer.setValue(this.resultFactory.call());
        } catch (Throwable th) {
            Exceptions.throwOrReport(th, subscriber);
        }
    }
}
