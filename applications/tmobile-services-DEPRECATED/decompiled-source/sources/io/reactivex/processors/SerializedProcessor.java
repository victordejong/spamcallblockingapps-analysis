package io.reactivex.processors;

import io.reactivex.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/processors/SerializedProcessor.class */
final class SerializedProcessor<T> extends FlowableProcessor<T> {

    /* renamed from: g */
    final FlowableProcessor<T> f19574g;

    /* renamed from: h */
    boolean f19575h;

    /* renamed from: i */
    AppendOnlyLinkedArrayList<Object> f19576i;

    /* renamed from: j */
    volatile boolean f19577j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SerializedProcessor(FlowableProcessor<T> flowableProcessor) {
        this.f19574g = flowableProcessor;
    }

    /* renamed from: D */
    void m3314D() {
        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList;
        while (true) {
            synchronized (this) {
                appendOnlyLinkedArrayList = this.f19576i;
                if (appendOnlyLinkedArrayList == null) {
                    this.f19575h = false;
                    return;
                }
                this.f19576i = null;
            }
            appendOnlyLinkedArrayList.m3460b(this.f19574g);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (!this.f19577j) {
            synchronized (this) {
                if (!this.f19577j) {
                    this.f19577j = true;
                    if (this.f19575h) {
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f19576i;
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList2 = appendOnlyLinkedArrayList;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList2 = new AppendOnlyLinkedArrayList<>(4);
                            this.f19576i = appendOnlyLinkedArrayList2;
                        }
                        appendOnlyLinkedArrayList2.m3459c(NotificationLite.complete());
                        return;
                    }
                    this.f19575h = true;
                    this.f19574g.onComplete();
                }
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (this.f19577j) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        synchronized (this) {
            boolean z = true;
            if (!this.f19577j) {
                this.f19577j = true;
                if (this.f19575h) {
                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f19576i;
                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList2 = appendOnlyLinkedArrayList;
                    if (appendOnlyLinkedArrayList == null) {
                        appendOnlyLinkedArrayList2 = new AppendOnlyLinkedArrayList<>(4);
                        this.f19576i = appendOnlyLinkedArrayList2;
                    }
                    appendOnlyLinkedArrayList2.m3457e(NotificationLite.error(th));
                    return;
                }
                this.f19575h = true;
                z = false;
            }
            if (z) {
                RxJavaPlugins.m3354t(th);
            } else {
                this.f19574g.onError(th);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (!this.f19577j) {
            synchronized (this) {
                if (!this.f19577j) {
                    if (this.f19575h) {
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f19576i;
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList2 = appendOnlyLinkedArrayList;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList2 = new AppendOnlyLinkedArrayList<>(4);
                            this.f19576i = appendOnlyLinkedArrayList2;
                        }
                        appendOnlyLinkedArrayList2.m3459c(NotificationLite.next(t));
                        return;
                    }
                    this.f19575h = true;
                    this.f19574g.onNext(t);
                    m3314D();
                }
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        boolean z = true;
        z = true;
        if (!this.f19577j) {
            synchronized (this) {
                if (!this.f19577j) {
                    if (this.f19575h) {
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f19576i;
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList2 = appendOnlyLinkedArrayList;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList2 = new AppendOnlyLinkedArrayList<>(4);
                            this.f19576i = appendOnlyLinkedArrayList2;
                        }
                        appendOnlyLinkedArrayList2.m3459c(NotificationLite.subscription(subscription));
                        return;
                    }
                    this.f19575h = true;
                    z = false;
                }
            }
        }
        if (z) {
            subscription.cancel();
            return;
        }
        this.f19574g.onSubscribe(subscription);
        m3314D();
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f19574g.mo5c(subscriber);
    }
}
