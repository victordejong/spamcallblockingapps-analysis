package org.reactivestreams;
/* loaded from: classes2-dex2jar.jar:org/reactivestreams/Subscriber.class */
public interface Subscriber<T> {
    void onComplete();

    void onError(Throwable th);

    void onNext(T t);

    void onSubscribe(Subscription subscription);
}
