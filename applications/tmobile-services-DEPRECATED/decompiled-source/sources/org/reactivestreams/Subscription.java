package org.reactivestreams;
/* loaded from: classes2-dex2jar.jar:org/reactivestreams/Subscription.class */
public interface Subscription {
    void cancel();

    void request(long j);
}
