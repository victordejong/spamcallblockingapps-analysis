package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import p530d.p541c.AbstractC9829h;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCount$CountSubscriber.class */
public final class FlowableCount$CountSubscriber extends DeferredScalarSubscription<Long> implements AbstractC9829h<Object> {
    public static final long serialVersionUID = 4973004223787171406L;
    public long count;

    /* renamed from: s */
    public AbstractC10434d f38352s;

    public FlowableCount$CountSubscriber(AbstractC10433c<? super Long> cVar) {
        super(cVar);
    }

    @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, p611j.p612a.AbstractC10434d
    public void cancel() {
        super.cancel();
        this.f38352s.cancel();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        complete(Long.valueOf(this.count));
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(Object obj) {
        this.count++;
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38352s, dVar)) {
            this.f38352s = dVar;
            this.actual.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }
}
