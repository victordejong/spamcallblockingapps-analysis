package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.AbstractC9852v;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatWithSingle$ConcatWithSubscriber.class */
public final class FlowableConcatWithSingle$ConcatWithSubscriber<T> extends SinglePostCompleteSubscriber<T, T> implements AbstractC9851u<T> {
    public static final long serialVersionUID = -7346385463600070225L;
    public AbstractC9852v<? extends T> other;
    public final AtomicReference<AbstractC9861b> otherDisposable = new AtomicReference<>();

    public FlowableConcatWithSingle$ConcatWithSubscriber(AbstractC10433c<? super T> cVar, AbstractC9852v<? extends T> vVar) {
        super(cVar);
        this.other = vVar;
    }

    @Override // io.reactivex.internal.subscribers.SinglePostCompleteSubscriber, p611j.p612a.AbstractC10434d
    public void cancel() {
        super.cancel();
        DisposableHelper.dispose(this.otherDisposable);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.f38568s = SubscriptionHelper.CANCELLED;
        AbstractC9852v<? extends T> vVar = this.other;
        this.other = null;
        vVar.mo1841a(this);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.produced++;
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this.otherDisposable, bVar);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSuccess(T t) {
        complete(t);
    }
}
