package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p546c.AbstractC9658g;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber.class */
public final class FlowableZip$ZipSubscriber<T, R> extends AtomicReference<AbstractC10434d> implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = -4627193790118206028L;
    public volatile boolean done;
    public final int limit;
    public final FlowableZip$ZipCoordinator<T, R> parent;
    public final int prefetch;
    public long produced;
    public AbstractC9661j<T> queue;
    public int sourceMode;

    public FlowableZip$ZipSubscriber(FlowableZip$ZipCoordinator<T, R> flowableZip$ZipCoordinator, int i) {
        this.parent = flowableZip$ZipCoordinator;
        this.prefetch = i;
        this.limit = i - (i >> 2);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.done = true;
        this.parent.drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.parent.error(this, th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (this.sourceMode != 2) {
            this.queue.offer(t);
        }
        this.parent.drain();
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            if (dVar instanceof AbstractC9658g) {
                AbstractC9658g gVar = (AbstractC9658g) dVar;
                int requestFusion = gVar.requestFusion(7);
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

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (this.sourceMode != 1) {
            long j2 = this.produced + j;
            if (j2 >= this.limit) {
                this.produced = 0L;
                get().request(j2);
                return;
            }
            this.produced = j2;
        }
    }
}
