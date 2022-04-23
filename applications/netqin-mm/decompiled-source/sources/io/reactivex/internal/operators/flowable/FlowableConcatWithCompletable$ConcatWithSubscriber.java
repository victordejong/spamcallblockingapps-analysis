package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9809c;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber.class */
public final class FlowableConcatWithCompletable$ConcatWithSubscriber<T> extends AtomicReference<AbstractC9861b> implements AbstractC9829h<T>, AbstractC9647b, AbstractC10434d {
    public static final long serialVersionUID = -7346385463600070225L;
    public final AbstractC10433c<? super T> actual;
    public boolean inCompletable;
    public AbstractC9809c other;
    public AbstractC10434d upstream;

    public FlowableConcatWithCompletable$ConcatWithSubscriber(AbstractC10433c<? super T> cVar, AbstractC9809c cVar2) {
        this.actual = cVar;
        this.other = cVar2;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.upstream.cancel();
        DisposableHelper.dispose(this);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (this.inCompletable) {
            this.actual.onComplete();
            return;
        }
        this.inCompletable = true;
        this.upstream = SubscriptionHelper.CANCELLED;
        AbstractC9809c cVar = this.other;
        this.other = null;
        cVar.mo1980a(this);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        this.upstream.request(j);
    }
}
