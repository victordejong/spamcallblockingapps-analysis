package io.reactivex.internal.operators.flowable;

import io.reactivex.subscribers.SerializedSubscriber;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSerialized.class */
public final class FlowableSerialized<T> extends AbstractFlowableWithUpstream<T, T> {
    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new SerializedSubscriber(subscriber));
    }
}
