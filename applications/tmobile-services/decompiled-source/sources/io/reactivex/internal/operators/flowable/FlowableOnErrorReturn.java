package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnErrorReturn.class */
public final class FlowableOnErrorReturn<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Function<? super Throwable, ? extends T> f16268h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnErrorReturn$OnErrorReturnSubscriber.class */
    static final class OnErrorReturnSubscriber<T> extends SinglePostCompleteSubscriber<T, T> {
        private static final long serialVersionUID = -3740826063558713822L;

        /* renamed from: j */
        final Function<? super Throwable, ? extends T> f16269j;

        OnErrorReturnSubscriber(Subscriber<? super T> subscriber, Function<? super Throwable, ? extends T> function) {
            super(subscriber);
            this.f16269j = function;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f19391f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            try {
                Object apply = this.f16269j.apply(th);
                ObjectHelper.m4363e(apply, "The valueSupplier returned a null value");
                m3473a(apply);
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                this.f19391f.onError(new CompositeException(th, th2));
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f19394i++;
            this.f19391f.onNext(t);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new OnErrorReturnSubscriber(subscriber, this.f16268h));
    }
}
