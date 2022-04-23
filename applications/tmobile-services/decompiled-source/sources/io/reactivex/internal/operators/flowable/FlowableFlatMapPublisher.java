package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.functions.Function;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapPublisher.class */
public final class FlowableFlatMapPublisher<T, U> extends Flowable<U> {

    /* renamed from: g */
    final Publisher<T> f15930g;

    /* renamed from: h */
    final Function<? super T, ? extends Publisher<? extends U>> f15931h;

    /* renamed from: i */
    final boolean f15932i;

    /* renamed from: j */
    final int f15933j;

    /* renamed from: k */
    final int f15934k;

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super U> subscriber) {
        if (!FlowableScalarXMap.m4076a(this.f15930g, subscriber, this.f15931h)) {
            this.f15930g.mo5c(FlowableFlatMap.m4251C(subscriber, this.f15931h, this.f15932i, this.f15933j, this.f15934k));
        }
    }
}
