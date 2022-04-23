package p660rx.internal.operators;

import p660rx.Observable;
import p660rx.Subscriber;
import p660rx.exceptions.Exceptions;
import p660rx.functions.Func1;
import p660rx.internal.producers.SingleDelayedProducer;
import p660rx.plugins.RxJavaHooks;
/* renamed from: rx.internal.operators.OperatorAny */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorAny.class */
public final class OperatorAny<T> implements Observable.Operator<Boolean, T> {
    public final Func1<? super T, Boolean> predicate;
    public final boolean returnOnEmpty;

    public OperatorAny(Func1<? super T, Boolean> func1, boolean z) {
        this.predicate = func1;
        this.returnOnEmpty = z;
    }

    public Subscriber<? super T> call(final Subscriber<? super Boolean> subscriber) {
        final SingleDelayedProducer singleDelayedProducer = new SingleDelayedProducer(subscriber);
        Subscriber subscriber2 = (Subscriber<T>) new Subscriber<T>() { // from class: rx.internal.operators.OperatorAny.1
            public boolean done;
            public boolean hasElements;

            @Override // p660rx.Observer
            public void onCompleted() {
                if (!this.done) {
                    this.done = true;
                    if (this.hasElements) {
                        singleDelayedProducer.setValue(false);
                    } else {
                        singleDelayedProducer.setValue(Boolean.valueOf(OperatorAny.this.returnOnEmpty));
                    }
                }
            }

            @Override // p660rx.Observer
            public void onError(Throwable th) {
                if (!this.done) {
                    this.done = true;
                    subscriber.onError(th);
                    return;
                }
                RxJavaHooks.onError(th);
            }

            @Override // p660rx.Observer
            public void onNext(T t) {
                if (!this.done) {
                    this.hasElements = true;
                    try {
                        if (OperatorAny.this.predicate.call(t).booleanValue()) {
                            this.done = true;
                            singleDelayedProducer.setValue(Boolean.valueOf(true ^ OperatorAny.this.returnOnEmpty));
                            unsubscribe();
                        }
                    } catch (Throwable th) {
                        Exceptions.throwOrReport(th, this, t);
                    }
                }
            }
        };
        subscriber.add(subscriber2);
        subscriber.setProducer(singleDelayedProducer);
        return subscriber2;
    }
}
