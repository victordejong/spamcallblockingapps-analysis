package io.reactivex.internal.subscribers;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/BlockingLastSubscriber.class */
public final class BlockingLastSubscriber<T> extends BlockingBaseSubscriber<T> {
    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        this.f19353f = null;
        countDown();
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        this.f19353f = t;
    }
}
