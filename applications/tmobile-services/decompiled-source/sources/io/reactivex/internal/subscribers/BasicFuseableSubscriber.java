package io.reactivex.internal.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/BasicFuseableSubscriber.class */
public abstract class BasicFuseableSubscriber<T, R> implements FlowableSubscriber<T>, QueueSubscription<R> {

    /* renamed from: f */
    protected final Subscriber<? super R> f19348f;

    /* renamed from: g */
    protected Subscription f19349g;

    /* renamed from: h */
    protected QueueSubscription<T> f19350h;

    /* renamed from: i */
    protected boolean f19351i;

    /* renamed from: j */
    protected int f19352j;

    public BasicFuseableSubscriber(Subscriber<? super R> subscriber) {
        this.f19348f = subscriber;
    }

    /* renamed from: a */
    protected void m3490a() {
    }

    /* renamed from: b */
    protected boolean m3489b() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final void m3488c(Throwable th) {
        Exceptions.m4428b(th);
        this.f19349g.cancel();
        onError(th);
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        this.f19349g.cancel();
    }

    public void clear() {
        this.f19350h.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public final int m3487d(int i) {
        QueueSubscription<T> queueSubscription = this.f19350h;
        if (queueSubscription == null || (i & 4) != 0) {
            return 0;
        }
        int requestFusion = queueSubscription.requestFusion(i);
        if (requestFusion != 0) {
            this.f19352j = requestFusion;
        }
        return requestFusion;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean isEmpty() {
        return this.f19350h.isEmpty();
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final boolean offer(R r) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (!this.f19351i) {
            this.f19351i = true;
            this.f19348f.onComplete();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (this.f19351i) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        this.f19351i = true;
        this.f19348f.onError(th);
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.validate(this.f19349g, subscription)) {
            this.f19349g = subscription;
            if (subscription instanceof QueueSubscription) {
                this.f19350h = (QueueSubscription) subscription;
            }
            if (m3489b()) {
                this.f19348f.onSubscribe(this);
                m3490a();
            }
        }
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
        this.f19349g.request(j);
    }
}
