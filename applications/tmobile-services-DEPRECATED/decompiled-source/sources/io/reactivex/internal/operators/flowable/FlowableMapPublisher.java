package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.functions.Function;
import io.reactivex.internal.operators.flowable.FlowableMap;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMapPublisher.class */
public final class FlowableMapPublisher<T, U> extends Flowable<U> {

    /* renamed from: g */
    final Publisher<T> f16155g;

    /* renamed from: h */
    final Function<? super T, ? extends U> f16156h;

    public FlowableMapPublisher(Publisher<T> publisher, Function<? super T, ? extends U> function) {
        this.f16155g = publisher;
        this.f16156h = function;
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super U> subscriber) {
        this.f16155g.mo5c(new FlowableMap.MapSubscriber(subscriber, this.f16156h));
    }
}
