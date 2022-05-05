package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.functions.Function;
import io.reactivex.internal.operators.flowable.FlowableConcatMapEager;
import io.reactivex.internal.util.ErrorMode;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMapEagerPublisher.class */
public final class FlowableConcatMapEagerPublisher<T, R> extends Flowable<R> {

    /* renamed from: g */
    final Publisher<T> f15681g;

    /* renamed from: h */
    final Function<? super T, ? extends Publisher<? extends R>> f15682h;

    /* renamed from: i */
    final int f15683i;

    /* renamed from: j */
    final int f15684j;

    /* renamed from: k */
    final ErrorMode f15685k;

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        this.f15681g.mo5c(new FlowableConcatMapEager.ConcatMapEagerDelayErrorSubscriber(subscriber, this.f15682h, this.f15683i, this.f15684j, this.f15685k));
    }
}
