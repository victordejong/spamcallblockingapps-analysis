package io.reactivex.internal.subscribers;

import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/BlockingFirstSubscriber.class */
public final class BlockingFirstSubscriber<T> extends BlockingBaseSubscriber<T> {
    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (this.f19353f != null) {
            RxJavaPlugins.m3354t(th);
        }
        countDown();
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (this.f19353f == null) {
            this.f19353f = t;
            this.f19354g.cancel();
            countDown();
        }
    }
}
