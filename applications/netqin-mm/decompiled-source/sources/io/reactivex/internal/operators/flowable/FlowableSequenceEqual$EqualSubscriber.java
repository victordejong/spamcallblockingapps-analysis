package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p546c.AbstractC9658g;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9703r;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber.class */
public final class FlowableSequenceEqual$EqualSubscriber<T> extends AtomicReference<AbstractC10434d> implements AbstractC9829h<T> {
    public static final long serialVersionUID = 4804128302091633067L;
    public volatile boolean done;
    public final int limit;
    public final AbstractC9703r parent;
    public final int prefetch;
    public long produced;
    public volatile AbstractC9661j<T> queue;
    public int sourceMode;

    public FlowableSequenceEqual$EqualSubscriber(AbstractC9703r rVar, int i) {
        this.parent = rVar;
        this.limit = i - (i >> 2);
        this.prefetch = i;
    }

    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    public void clear() {
        AbstractC9661j<T> jVar = this.queue;
        if (jVar != null) {
            jVar.clear();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.done = true;
        this.parent.drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.parent.innerError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (this.sourceMode != 0 || this.queue.offer(t)) {
            this.parent.drain();
        } else {
            onError(new MissingBackpressureException());
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            if (dVar instanceof AbstractC9658g) {
                AbstractC9658g gVar = (AbstractC9658g) dVar;
                int requestFusion = gVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.sourceMode = requestFusion;
                    this.queue = gVar;
                    this.done = true;
                    this.parent.drain();
                    return;
                } else if (requestFusion == 2) {
                    this.sourceMode = requestFusion;
                    this.queue = gVar;
                    dVar.request(this.prefetch);
                    return;
                }
            }
            this.queue = new SpscArrayQueue(this.prefetch);
            dVar.request(this.prefetch);
        }
    }

    public void request() {
        if (this.sourceMode != 1) {
            long j = this.produced + 1;
            if (j >= this.limit) {
                this.produced = 0L;
                get().request(j);
                return;
            }
            this.produced = j;
        }
    }
}
