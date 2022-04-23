package io.reactivex.internal.operators.parallel;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber.class */
public abstract class ParallelRunOn$BaseRunOnSubscriber<T> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d, Runnable {
    public static final long serialVersionUID = 9222303586456402150L;
    public volatile boolean cancelled;
    public int consumed;
    public volatile boolean done;
    public Throwable error;
    public final int limit;
    public final int prefetch;
    public final SpscArrayQueue<T> queue;
    public final AtomicLong requested = new AtomicLong();

    /* renamed from: s */
    public AbstractC10434d f38542s;
    public final AbstractC9845s.AbstractC9848c worker;

    public ParallelRunOn$BaseRunOnSubscriber(int i, SpscArrayQueue<T> spscArrayQueue, AbstractC9845s.AbstractC9848c cVar) {
        this.prefetch = i;
        this.queue = spscArrayQueue;
        this.limit = i - (i >> 2);
        this.worker = cVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public final void cancel() {
        if (!this.cancelled) {
            this.cancelled = true;
            this.f38542s.cancel();
            this.worker.dispose();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public final void onComplete() {
        if (!this.done) {
            this.done = true;
            schedule();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public final void onError(Throwable th) {
        if (this.done) {
            C9815a.m1923b(th);
            return;
        }
        this.error = th;
        this.done = true;
        schedule();
    }

    @Override // p611j.p612a.AbstractC10433c
    public final void onNext(T t) {
        if (!this.done) {
            if (!this.queue.offer(t)) {
                this.f38542s.cancel();
                onError(new MissingBackpressureException("Queue is full?!"));
                return;
            }
            schedule();
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public final void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
            schedule();
        }
    }

    public final void schedule() {
        if (getAndIncrement() == 0) {
            this.worker.mo1851a(this);
        }
    }
}
