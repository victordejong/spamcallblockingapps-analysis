package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9704s;
import p530d.p541c.p543b0.p548e.p550b.C9705t;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber.class */
public final class FlowableTimeout$TimeoutFallbackSubscriber<T> extends SubscriptionArbiter implements AbstractC9829h<T>, AbstractC9704s {
    public static final long serialVersionUID = 3764492702657003550L;
    public final AbstractC10433c<? super T> actual;
    public long consumed;
    public AbstractC10432b<? extends T> fallback;
    public final AbstractC9645h<? super T, ? extends AbstractC10432b<?>> itemTimeoutIndicator;
    public final SequentialDisposable task = new SequentialDisposable();
    public final AtomicReference<AbstractC10434d> upstream = new AtomicReference<>();
    public final AtomicLong index = new AtomicLong();

    public FlowableTimeout$TimeoutFallbackSubscriber(AbstractC10433c<? super T> cVar, AbstractC9645h<? super T, ? extends AbstractC10432b<?>> hVar, AbstractC10432b<? extends T> bVar) {
        this.actual = cVar;
        this.itemTimeoutIndicator = hVar;
        this.fallback = bVar;
    }

    @Override // io.reactivex.internal.subscriptions.SubscriptionArbiter, p611j.p612a.AbstractC10434d
    public void cancel() {
        super.cancel();
        this.task.dispose();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (this.index.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
            this.task.dispose();
            this.actual.onComplete();
            this.task.dispose();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.index.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
            this.task.dispose();
            this.actual.onError(th);
            this.task.dispose();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        long j = this.index.get();
        if (j != Long.MAX_VALUE) {
            long j2 = j + 1;
            if (this.index.compareAndSet(j, j2)) {
                AbstractC9861b bVar = this.task.get();
                if (bVar != null) {
                    bVar.dispose();
                }
                this.consumed++;
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
                    this.index.getAndSet(Long.MAX_VALUE);
                    this.actual.onError(th);
                }
            }
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.setOnce(this.upstream, dVar)) {
            setSubscription(dVar);
        }
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9706u
    public void onTimeout(long j) {
        if (this.index.compareAndSet(j, Long.MAX_VALUE)) {
            SubscriptionHelper.cancel(this.upstream);
            AbstractC10432b<? extends T> bVar = this.fallback;
            this.fallback = null;
            long j2 = this.consumed;
            if (j2 != 0) {
                produced(j2);
            }
            bVar.subscribe(new C9705t(this.actual, this));
        }
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9704s
    public void onTimeoutError(long j, Throwable th) {
        if (this.index.compareAndSet(j, Long.MAX_VALUE)) {
            SubscriptionHelper.cancel(this.upstream);
            this.actual.onError(th);
            return;
        }
        C9815a.m1923b(th);
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
