package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9704s;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutSubscriber.class */
public final class FlowableTimeout$TimeoutSubscriber<T> extends AtomicLong implements AbstractC9829h<T>, AbstractC10434d, AbstractC9704s {
    public static final long serialVersionUID = 3764492702657003550L;
    public final AbstractC10433c<? super T> actual;
    public final AbstractC9645h<? super T, ? extends AbstractC10432b<?>> itemTimeoutIndicator;
    public final SequentialDisposable task = new SequentialDisposable();
    public final AtomicReference<AbstractC10434d> upstream = new AtomicReference<>();
    public final AtomicLong requested = new AtomicLong();

    public FlowableTimeout$TimeoutSubscriber(AbstractC10433c<? super T> cVar, AbstractC9645h<? super T, ? extends AbstractC10432b<?>> hVar) {
        this.actual = cVar;
        this.itemTimeoutIndicator = hVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        SubscriptionHelper.cancel(this.upstream);
        this.task.dispose();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
            this.task.dispose();
            this.actual.onComplete();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
            this.task.dispose();
            this.actual.onError(th);
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        long j = get();
        if (j != Long.MAX_VALUE) {
            long j2 = 1 + j;
            if (compareAndSet(j, j2)) {
                AbstractC9861b bVar = this.task.get();
                if (bVar != null) {
                    bVar.dispose();
                }
                this.actual.onNext(t);
                try {
                    Object apply = this.itemTimeoutIndicator.apply(t);
                    C9650a.m2095a(apply, "The itemTimeoutIndicator returned a null Publisher.");
                    AbstractC10432b bVar2 = (AbstractC10432b) apply;
                    FlowableTimeout$TimeoutConsumer flowableTimeout$TimeoutConsumer = new FlowableTimeout$TimeoutConsumer(j2, this);
                    if (this.task.replace(flowableTimeout$TimeoutConsumer)) {
                        bVar2.subscribe(flowableTimeout$TimeoutConsumer);
                    }
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    this.upstream.get().cancel();
                    getAndSet(Long.MAX_VALUE);
                    this.actual.onError(th);
                }
            }
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.deferredSetOnce(this.upstream, this.requested, dVar);
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9706u
    public void onTimeout(long j) {
        if (compareAndSet(j, Long.MAX_VALUE)) {
            SubscriptionHelper.cancel(this.upstream);
            this.actual.onError(new TimeoutException());
        }
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9704s
    public void onTimeoutError(long j, Throwable th) {
        if (compareAndSet(j, Long.MAX_VALUE)) {
            SubscriptionHelper.cancel(this.upstream);
            this.actual.onError(th);
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        SubscriptionHelper.deferredRequest(this.upstream, this.requested, j);
    }

    public void startFirstTimeout(AbstractC10432b<?> bVar) {
        if (bVar != null) {
            FlowableTimeout$TimeoutConsumer flowableTimeout$TimeoutConsumer = new FlowableTimeout$TimeoutConsumer(0L, this);
            if (this.task.replace(flowableTimeout$TimeoutConsumer)) {
                bVar.subscribe(flowableTimeout$TimeoutConsumer);
            }
        }
    }
}
