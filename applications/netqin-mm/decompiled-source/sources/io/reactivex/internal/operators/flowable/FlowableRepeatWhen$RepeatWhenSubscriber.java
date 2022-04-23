package io.reactivex.internal.operators.flowable;

import p530d.p541c.p561f0.AbstractC9817a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRepeatWhen$RepeatWhenSubscriber.class */
public final class FlowableRepeatWhen$RepeatWhenSubscriber<T> extends FlowableRepeatWhen$WhenSourceSubscriber<T, Object> {
    public static final long serialVersionUID = -2680129890138081029L;

    public FlowableRepeatWhen$RepeatWhenSubscriber(AbstractC10433c<? super T> cVar, AbstractC9817a<Object> aVar, AbstractC10434d dVar) {
        super(cVar, aVar, dVar);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        again(0);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.receiver.cancel();
        ((FlowableRepeatWhen$WhenSourceSubscriber) this).actual.onError(th);
    }
}
