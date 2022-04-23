package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p546c.AbstractC9658g;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p556h.AbstractC9797c;
import p530d.p541c.p543b0.p557i.C9808j;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/InnerQueuedSubscriber.class */
public final class InnerQueuedSubscriber<T> extends AtomicReference<AbstractC10434d> implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = 22876611072430776L;
    public volatile boolean done;
    public int fusionMode;
    public final int limit;
    public final AbstractC9797c<T> parent;
    public final int prefetch;
    public long produced;
    public volatile AbstractC9661j<T> queue;

    public InnerQueuedSubscriber(AbstractC9797c<T> cVar, int i) {
        this.parent = cVar;
        this.prefetch = i;
        this.limit = i - (i >> 2);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    public boolean isDone() {
        return this.done;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.parent.innerComplete(this);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.parent.innerError(this, th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (this.fusionMode == 0) {
            this.parent.innerNext(this, t);
        } else {
            this.parent.drain();
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            if (dVar instanceof AbstractC9658g) {
                AbstractC9658g gVar = (AbstractC9658g) dVar;
                int requestFusion = gVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.fusionMode = requestFusion;
                    this.queue = gVar;
                    this.done = true;
                    this.parent.innerComplete(this);
                    return;
                } else if (requestFusion == 2) {
                    this.fusionMode = requestFusion;
                    this.queue = gVar;
                    C9808j.m1982a(dVar, this.prefetch);
                    return;
                }
            }
            this.queue = C9808j.m1986a(this.prefetch);
            C9808j.m1982a(dVar, this.prefetch);
        }
    }

    public AbstractC9661j<T> queue() {
        return this.queue;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (this.fusionMode != 1) {
            long j2 = this.produced + j;
            if (j2 >= this.limit) {
                this.produced = 0L;
                get().request(j2);
                return;
            }
            this.produced = j2;
        }
    }

    public void requestOne() {
        if (this.fusionMode != 1) {
            long j = this.produced + 1;
            if (j == this.limit) {
                this.produced = 0L;
                get().request(j);
                return;
            }
            this.produced = j;
        }
    }

    public void setDone() {
        this.done = true;
    }
}
