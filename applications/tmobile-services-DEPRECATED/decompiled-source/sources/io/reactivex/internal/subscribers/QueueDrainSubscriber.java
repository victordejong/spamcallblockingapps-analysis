package io.reactivex.internal.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.QueueDrain;
import io.reactivex.internal.util.QueueDrainHelper;
import org.reactivestreams.Subscriber;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/QueueDrainSubscriber.class */
public abstract class QueueDrainSubscriber<T, U, V> extends QueueDrainSubscriberPad4 implements FlowableSubscriber<T>, QueueDrain<U, V> {

    /* renamed from: h */
    protected final Subscriber<? super V> f19384h;

    /* renamed from: i */
    protected final SimplePlainQueue<U> f19385i;

    /* renamed from: j */
    protected volatile boolean f19386j;

    /* renamed from: k */
    protected volatile boolean f19387k;

    /* renamed from: l */
    protected Throwable f19388l;

    public QueueDrainSubscriber(Subscriber<? super V> subscriber, SimplePlainQueue<U> simplePlainQueue) {
        this.f19384h = subscriber;
        this.f19385i = simplePlainQueue;
    }

    @Override // io.reactivex.internal.util.QueueDrain
    /* renamed from: a */
    public final boolean mo3412a() {
        return this.f19387k;
    }

    @Override // io.reactivex.internal.util.QueueDrain
    /* renamed from: b */
    public final boolean mo3411b() {
        return this.f19386j;
    }

    @Override // io.reactivex.internal.util.QueueDrain
    /* renamed from: c */
    public final Throwable mo3410c() {
        return this.f19388l;
    }

    @Override // io.reactivex.internal.util.QueueDrain
    /* renamed from: d */
    public final int mo3409d(int i) {
        return this.f19390f.addAndGet(i);
    }

    @Override // io.reactivex.internal.util.QueueDrain
    /* renamed from: e */
    public final long mo3408e() {
        return this.f19389g.get();
    }

    /* renamed from: f */
    public boolean mo3407f(Subscriber<? super V> subscriber, U u) {
        return false;
    }

    @Override // io.reactivex.internal.util.QueueDrain
    /* renamed from: g */
    public final long mo3406g(long j) {
        return this.f19389g.addAndGet(-j);
    }

    /* renamed from: h */
    public final boolean m3478h() {
        return this.f19390f.getAndIncrement() == 0;
    }

    /* renamed from: i */
    public final boolean m3477i() {
        boolean z = true;
        if (this.f19390f.get() != 0 || !this.f19390f.compareAndSet(0, 1)) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: j */
    public final void m3476j(U u, boolean z, Disposable disposable) {
        Subscriber<? super V> subscriber = this.f19384h;
        SimplePlainQueue<U> simplePlainQueue = this.f19385i;
        if (m3477i()) {
            long j = this.f19389g.get();
            if (j != 0) {
                if (mo3407f(subscriber, u) && j != Long.MAX_VALUE) {
                    mo3406g(1L);
                }
                if (mo3409d(-1) == 0) {
                    return;
                }
            } else {
                disposable.dispose();
                subscriber.onError(new MissingBackpressureException("Could not emit buffer due to lack of requests"));
                return;
            }
        } else {
            simplePlainQueue.offer(u);
            if (!m3478h()) {
                return;
            }
        }
        QueueDrainHelper.m3401e(simplePlainQueue, subscriber, z, disposable, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: k */
    public final void m3475k(U u, boolean z, Disposable disposable) {
        Subscriber<? super V> subscriber = this.f19384h;
        SimplePlainQueue<U> simplePlainQueue = this.f19385i;
        if (m3477i()) {
            long j = this.f19389g.get();
            if (j == 0) {
                this.f19386j = true;
                disposable.dispose();
                subscriber.onError(new MissingBackpressureException("Could not emit buffer due to lack of requests"));
                return;
            } else if (simplePlainQueue.isEmpty()) {
                if (mo3407f(subscriber, u) && j != Long.MAX_VALUE) {
                    mo3406g(1L);
                }
                if (mo3409d(-1) == 0) {
                    return;
                }
            } else {
                simplePlainQueue.offer(u);
            }
        } else {
            simplePlainQueue.offer(u);
            if (!m3478h()) {
                return;
            }
        }
        QueueDrainHelper.m3401e(simplePlainQueue, subscriber, z, disposable, this);
    }

    /* renamed from: l */
    public final void m3474l(long j) {
        if (SubscriptionHelper.validate(j)) {
            BackpressureHelper.m3454a(this.f19389g, j);
        }
    }
}
