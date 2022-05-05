package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.functions.Function;
import io.reactivex.internal.util.ErrorMode;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMapPublisher.class */
public final class FlowableConcatMapPublisher<T, R> extends Flowable<R> {

    /* renamed from: g */
    final Publisher<T> f15686g;

    /* renamed from: h */
    final Function<? super T, ? extends Publisher<? extends R>> f15687h;

    /* renamed from: i */
    final int f15688i;

    /* renamed from: j */
    final ErrorMode f15689j;

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        if (!FlowableScalarXMap.m4076a(this.f15686g, subscriber, this.f15687h)) {
            this.f15686g.mo5c(FlowableConcatMap.m4279C(subscriber, this.f15687h, this.f15688i, this.f15689j));
        }
    }
}
