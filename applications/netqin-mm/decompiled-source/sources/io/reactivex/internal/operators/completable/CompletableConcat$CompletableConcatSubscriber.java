package io.reactivex.internal.operators.completable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9809c;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p546c.AbstractC9658g;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber.class */
public final class CompletableConcat$CompletableConcatSubscriber extends AtomicInteger implements AbstractC9829h<AbstractC9809c>, AbstractC9861b {
    public static final long serialVersionUID = 9032184911934499404L;
    public volatile boolean active;
    public final AbstractC9647b actual;
    public int consumed;
    public volatile boolean done;
    public final int limit;
    public final int prefetch;
    public AbstractC9661j<AbstractC9809c> queue;

    /* renamed from: s */
    public AbstractC10434d f38330s;
    public int sourceFused;
    public final ConcatInnerObserver inner = new ConcatInnerObserver(this);
    public final AtomicBoolean once = new AtomicBoolean();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber$ConcatInnerObserver.class */
    public static final class ConcatInnerObserver extends AtomicReference<AbstractC9861b> implements AbstractC9647b {
        public static final long serialVersionUID = -5454794857847146511L;
        public final CompletableConcat$CompletableConcatSubscriber parent;

        public ConcatInnerObserver(CompletableConcat$CompletableConcatSubscriber completableConcat$CompletableConcatSubscriber) {
            this.parent = completableConcat$CompletableConcatSubscriber;
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onComplete() {
            this.parent.innerComplete();
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onError(Throwable th) {
            this.parent.innerError(th);
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.replace(this, bVar);
        }
    }

    public CompletableConcat$CompletableConcatSubscriber(AbstractC9647b bVar, int i) {
        this.actual = bVar;
        this.prefetch = i;
        this.limit = i - (i >> 2);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.f38330s.cancel();
        DisposableHelper.dispose(this.inner);
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            while (!isDisposed()) {
                if (!this.active) {
                    boolean z = this.done;
                    try {
                        AbstractC9809c poll = this.queue.poll();
                        boolean z2 = poll == null;
                        if (!z || !z2) {
                            if (!z2) {
                                this.active = true;
                                poll.mo1980a(this.inner);
                                request();
                            }
                        } else if (this.once.compareAndSet(false, true)) {
                            this.actual.onComplete();
                            return;
                        } else {
                            return;
                        }
                    } catch (Throwable th) {
                        C9863a.m1822b(th);
                        innerError(th);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }
    }

    public void innerComplete() {
        this.active = false;
        drain();
    }

    public void innerError(Throwable th) {
        if (this.once.compareAndSet(false, true)) {
            this.f38330s.cancel();
            this.actual.onError(th);
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(this.inner.get());
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.done = true;
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.once.compareAndSet(false, true)) {
            DisposableHelper.dispose(this.inner);
            this.actual.onError(th);
            return;
        }
        C9815a.m1923b(th);
    }

    public void onNext(AbstractC9809c cVar) {
        if (this.sourceFused != 0 || this.queue.offer(cVar)) {
            drain();
        } else {
            onError(new MissingBackpressureException());
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38330s, dVar)) {
            this.f38330s = dVar;
            int i = this.prefetch;
            long j = i == Integer.MAX_VALUE ? Long.MAX_VALUE : i;
            if (dVar instanceof AbstractC9658g) {
                AbstractC9658g gVar = (AbstractC9658g) dVar;
                int requestFusion = gVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.sourceFused = requestFusion;
                    this.queue = gVar;
                    this.done = true;
                    this.actual.onSubscribe(this);
                    drain();
                    return;
                } else if (requestFusion == 2) {
                    this.sourceFused = requestFusion;
                    this.queue = gVar;
                    this.actual.onSubscribe(this);
                    dVar.request(j);
                    return;
                }
            }
            if (this.prefetch == Integer.MAX_VALUE) {
                this.queue = new C9772a(AbstractC9814e.m1946g());
            } else {
                this.queue = new SpscArrayQueue(this.prefetch);
            }
            this.actual.onSubscribe(this);
            dVar.request(j);
        }
    }

    public void request() {
        if (this.sourceFused != 1) {
            int i = this.consumed + 1;
            if (i == this.limit) {
                this.consumed = 0;
                this.f38330s.request(i);
                return;
            }
            this.consumed = i;
        }
    }
}
