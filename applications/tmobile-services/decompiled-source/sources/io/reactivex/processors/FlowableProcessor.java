package io.reactivex.processors;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import org.reactivestreams.Processor;
/* loaded from: classes2-dex2jar.jar:io/reactivex/processors/FlowableProcessor.class */
public abstract class FlowableProcessor<T> extends Flowable<T> implements Processor<T, T>, FlowableSubscriber<T> {
    @CheckReturnValue
    @NonNull
    /* renamed from: C */
    public final FlowableProcessor<T> m3338C() {
        return this instanceof SerializedProcessor ? this : new SerializedProcessor(this);
    }
}
