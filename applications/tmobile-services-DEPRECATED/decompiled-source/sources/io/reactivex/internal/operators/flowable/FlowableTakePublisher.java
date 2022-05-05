package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.internal.operators.flowable.FlowableTake;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakePublisher.class */
public final class FlowableTakePublisher<T> extends Flowable<T> {

    /* renamed from: g */
    final Publisher<T> f16656g;

    /* renamed from: h */
    final long f16657h;

    public FlowableTakePublisher(Publisher<T> publisher, long j) {
        this.f16656g = publisher;
        this.f16657h = j;
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f16656g.mo5c(new FlowableTake.TakeSubscriber(subscriber, this.f16657h));
    }
}
