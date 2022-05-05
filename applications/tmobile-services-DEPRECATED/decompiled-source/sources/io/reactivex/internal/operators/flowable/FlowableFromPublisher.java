package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFromPublisher.class */
public final class FlowableFromPublisher<T> extends Flowable<T> {

    /* renamed from: g */
    final Publisher<? extends T> f15984g;

    public FlowableFromPublisher(Publisher<? extends T> publisher) {
        this.f15984g = publisher;
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15984g.mo5c(subscriber);
    }
}
