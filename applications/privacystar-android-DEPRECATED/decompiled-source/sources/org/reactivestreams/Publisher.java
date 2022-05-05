package org.reactivestreams;
/* loaded from: classes2-dex2jar.jar:org/reactivestreams/Publisher.class */
public interface Publisher<T> {
    void subscribe(Subscriber<? super T> subscriber);
}
