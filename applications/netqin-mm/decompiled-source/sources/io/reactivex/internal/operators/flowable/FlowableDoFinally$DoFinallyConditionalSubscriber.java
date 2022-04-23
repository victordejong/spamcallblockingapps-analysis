package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import p530d.p541c.p542a0.AbstractC9638a;
import p530d.p541c.p543b0.p546c.AbstractC9652a;
import p530d.p541c.p543b0.p546c.AbstractC9658g;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDoFinally$DoFinallyConditionalSubscriber.class */
public final class FlowableDoFinally$DoFinallyConditionalSubscriber<T> extends BasicIntQueueSubscription<T> implements AbstractC9652a<T> {
    public static final long serialVersionUID = 4109457741734051389L;
    public final AbstractC9652a<? super T> actual;
    public final AbstractC9638a onFinally;

    /* renamed from: qs */
    public AbstractC9658g<T> f38363qs;

    /* renamed from: s */
    public AbstractC10434d f38364s;
    public boolean syncFused;

    public FlowableDoFinally$DoFinallyConditionalSubscriber(AbstractC9652a<? super T> aVar, AbstractC9638a aVar2) {
        this.actual = aVar;
        this.onFinally = aVar2;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.f38364s.cancel();
        runFinally();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
        this.f38363qs.clear();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return this.f38363qs.isEmpty();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.actual.onComplete();
        runFinally();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.actual.onError(th);
        runFinally();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38364s, dVar)) {
            this.f38364s = dVar;
            if (dVar instanceof AbstractC9658g) {
                this.f38363qs = (AbstractC9658g) dVar;
            }
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public T poll() throws Exception {
        T poll = this.f38363qs.poll();
        if (poll == null && this.syncFused) {
            runFinally();
        }
        return poll;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        this.f38364s.request(j);
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
    public int requestFusion(int i) {
        AbstractC9658g<T> gVar = this.f38363qs;
        boolean z = false;
        if (gVar == null || (i & 4) != 0) {
            return 0;
        }
        int requestFusion = gVar.requestFusion(i);
        if (requestFusion != 0) {
            if (requestFusion == 1) {
                z = true;
            }
            this.syncFused = z;
        }
        return requestFusion;
    }

    public void runFinally() {
        if (compareAndSet(0, 1)) {
            try {
                this.onFinally.run();
            } catch (Throwable th) {
                C9863a.m1822b(th);
                C9815a.m1923b(th);
            }
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9652a
    public boolean tryOnNext(T t) {
        return this.actual.tryOnNext(t);
    }
}
