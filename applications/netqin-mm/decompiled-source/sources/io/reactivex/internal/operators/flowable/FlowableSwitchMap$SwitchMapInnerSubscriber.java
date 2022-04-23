package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p546c.AbstractC9658g;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p560e0.C9815a;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber.class */
public final class FlowableSwitchMap$SwitchMapInnerSubscriber<T, R> extends AtomicReference<AbstractC10434d> implements AbstractC9829h<R> {
    public static final long serialVersionUID = 3837284832786408377L;
    public final int bufferSize;
    public volatile boolean done;
    public int fusionMode;
    public final long index;
    public final FlowableSwitchMap$SwitchMapSubscriber<T, R> parent;
    public volatile AbstractC9661j<R> queue;

    public FlowableSwitchMap$SwitchMapInnerSubscriber(FlowableSwitchMap$SwitchMapSubscriber<T, R> flowableSwitchMap$SwitchMapSubscriber, long j, int i) {
        this.parent = flowableSwitchMap$SwitchMapSubscriber;
        this.index = j;
        this.bufferSize = i;
    }

    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        FlowableSwitchMap$SwitchMapSubscriber<T, R> flowableSwitchMap$SwitchMapSubscriber = this.parent;
        if (this.index == flowableSwitchMap$SwitchMapSubscriber.unique) {
            this.done = true;
            flowableSwitchMap$SwitchMapSubscriber.drain();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        FlowableSwitchMap$SwitchMapSubscriber<T, R> flowableSwitchMap$SwitchMapSubscriber = this.parent;
        if (this.index != flowableSwitchMap$SwitchMapSubscriber.unique || !flowableSwitchMap$SwitchMapSubscriber.error.addThrowable(th)) {
            C9815a.m1923b(th);
            return;
        }
        if (!flowableSwitchMap$SwitchMapSubscriber.delayErrors) {
            flowableSwitchMap$SwitchMapSubscriber.f38430s.cancel();
        }
        this.done = true;
        flowableSwitchMap$SwitchMapSubscriber.drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(R r) {
        FlowableSwitchMap$SwitchMapSubscriber<T, R> flowableSwitchMap$SwitchMapSubscriber = this.parent;
        if (this.index != flowableSwitchMap$SwitchMapSubscriber.unique) {
            return;
        }
        if (this.fusionMode != 0 || this.queue.offer(r)) {
            flowableSwitchMap$SwitchMapSubscriber.drain();
        } else {
            onError(new MissingBackpressureException("Queue full?!"));
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            if (dVar instanceof AbstractC9658g) {
                AbstractC9658g gVar = (AbstractC9658g) dVar;
                int requestFusion = gVar.requestFusion(7);
                if (requestFusion == 1) {
                    this.fusionMode = requestFusion;
                    this.queue = gVar;
                    this.done = true;
                    this.parent.drain();
                    return;
                } else if (requestFusion == 2) {
                    this.fusionMode = requestFusion;
                    this.queue = gVar;
                    dVar.request(this.bufferSize);
                    return;
                }
            }
            this.queue = new SpscArrayQueue(this.bufferSize);
            dVar.request(this.bufferSize);
        }
    }
}
