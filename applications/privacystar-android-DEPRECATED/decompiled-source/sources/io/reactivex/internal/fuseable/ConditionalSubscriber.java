package io.reactivex.internal.fuseable;

import io.reactivex.FlowableSubscriber;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/fuseable/ConditionalSubscriber.class */
public interface ConditionalSubscriber<T> extends FlowableSubscriber<T> {
    boolean tryOnNext(T t);
}
