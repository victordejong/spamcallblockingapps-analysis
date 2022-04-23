package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.ScalarSubscription;
import java.util.concurrent.Callable;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableScalarXMap.class */
public final class FlowableScalarXMap {

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableScalarXMap$ScalarXMapFlowable.class */
    static final class ScalarXMapFlowable<T, R> extends Flowable<R> {

        /* renamed from: g */
        final T f16481g;

        /* renamed from: h */
        final Function<? super T, ? extends Publisher<? extends R>> f16482h;

        @Override // io.reactivex.Flowable
        /* renamed from: w */
        public void mo3305w(Subscriber<? super R> subscriber) {
            try {
                Object apply = this.f16482h.apply((T) this.f16481g);
                ObjectHelper.m4363e(apply, "The mapper returned a null Publisher");
                Publisher publisher = (Publisher) apply;
                if (publisher instanceof Callable) {
                    try {
                        Object call = ((Callable) publisher).call();
                        if (call == null) {
                            EmptySubscription.complete(subscriber);
                        } else {
                            subscriber.onSubscribe(new ScalarSubscription(subscriber, call));
                        }
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        EmptySubscription.error(th, subscriber);
                    }
                } else {
                    publisher.mo5c(subscriber);
                }
            } catch (Throwable th2) {
                EmptySubscription.error(th2, subscriber);
            }
        }
    }

    private FlowableScalarXMap() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: a */
    public static <T, R> boolean m4076a(Publisher<T> publisher, Subscriber<? super R> subscriber, Function<? super T, ? extends Publisher<? extends R>> function) {
        if (!(publisher instanceof Callable)) {
            return false;
        }
        try {
            Object obj = (Object) ((Callable) publisher).call();
            if (obj == 0) {
                EmptySubscription.complete(subscriber);
                return true;
            }
            try {
                Object apply = function.apply(obj);
                ObjectHelper.m4363e(apply, "The mapper returned a null Publisher");
                Publisher publisher2 = (Publisher) apply;
                if (publisher2 instanceof Callable) {
                    try {
                        Object call = ((Callable) publisher2).call();
                        if (call == null) {
                            EmptySubscription.complete(subscriber);
                            return true;
                        }
                        subscriber.onSubscribe(new ScalarSubscription(subscriber, call));
                        return true;
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        EmptySubscription.error(th, subscriber);
                        return true;
                    }
                } else {
                    publisher2.mo5c(subscriber);
                    return true;
                }
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                EmptySubscription.error(th2, subscriber);
                return true;
            }
        } catch (Throwable th3) {
            Exceptions.m4428b(th3);
            EmptySubscription.error(th3, subscriber);
            return true;
        }
    }
}
