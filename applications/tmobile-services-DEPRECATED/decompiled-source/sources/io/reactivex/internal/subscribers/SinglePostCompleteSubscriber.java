package io.reactivex.internal.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/SinglePostCompleteSubscriber.class */
public abstract class SinglePostCompleteSubscriber<T, R> extends AtomicLong implements FlowableSubscriber<T>, Subscription {
    private static final long serialVersionUID = 7917814472626990048L;

    /* renamed from: f */
    protected final Subscriber<? super R> f19391f;

    /* renamed from: g */
    protected Subscription f19392g;

    /* renamed from: h */
    protected R f19393h;

    /* renamed from: i */
    protected long f19394i;

    public SinglePostCompleteSubscriber(Subscriber<? super R> subscriber) {
        this.f19391f = subscriber;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m3473a(R r) {
        long j = this.f19394i;
        if (j != 0) {
            BackpressureHelper.m3450e(this, j);
        }
        while (true) {
            long j2 = get();
            if ((j2 & Long.MIN_VALUE) != 0) {
                mo3472b(r);
                return;
            } else if ((j2 & Long.MAX_VALUE) != 0) {
                lazySet(-9223372036854775807L);
                this.f19391f.onNext(r);
                this.f19391f.onComplete();
                return;
            } else {
                this.f19393h = r;
                if (!compareAndSet(0L, Long.MIN_VALUE)) {
                    this.f19393h = null;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: b */
    protected void mo3472b(R r) {
    }

    public void cancel() {
        this.f19392g.cancel();
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (SubscriptionHelper.validate(this.f19392g, subscription)) {
            this.f19392g = subscription;
            this.f19391f.onSubscribe(this);
        }
    }

    @Override // org.reactivestreams.Subscription
    public final void request(long j) {
        long j2;
        if (SubscriptionHelper.validate(j)) {
            do {
                j2 = get();
                if ((j2 & Long.MIN_VALUE) != 0) {
                    if (compareAndSet(Long.MIN_VALUE, -9223372036854775807L)) {
                        this.f19391f.onNext((R) this.f19393h);
                        this.f19391f.onComplete();
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(j2, BackpressureHelper.m3452c(j2, j)));
            this.f19392g.request(j);
        }
    }
}
