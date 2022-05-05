package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.HasUpstreamPublisher;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream.class */
abstract class AbstractFlowableWithUpstream<T, R> extends Flowable<R> implements HasUpstreamPublisher<T> {

    /* renamed from: g */
    protected final Flowable<T> f15411g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractFlowableWithUpstream(Flowable<T> flowable) {
        ObjectHelper.m4363e(flowable, "source is null");
        this.f15411g = flowable;
    }
}
