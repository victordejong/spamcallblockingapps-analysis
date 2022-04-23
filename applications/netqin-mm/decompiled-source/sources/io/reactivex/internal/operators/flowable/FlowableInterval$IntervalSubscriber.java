package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInterval$IntervalSubscriber.class */
public final class FlowableInterval$IntervalSubscriber extends AtomicLong implements AbstractC10434d, Runnable {
    public static final long serialVersionUID = -2809475196591179431L;
    public final AbstractC10433c<? super Long> actual;
    public long count;
    public final AtomicReference<AbstractC9861b> resource = new AtomicReference<>();

    public FlowableInterval$IntervalSubscriber(AbstractC10433c<? super Long> cVar) {
        this.actual = cVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        DisposableHelper.dispose(this.resource);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this, j);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.resource.get() == DisposableHelper.DISPOSED) {
            return;
        }
        if (get() != 0) {
            AbstractC10433c<? super Long> cVar = this.actual;
            long j = this.count;
            this.count = j + 1;
            cVar.onNext(Long.valueOf(j));
            C9800b.m2009c(this, 1L);
            return;
        }
        AbstractC10433c<? super Long> cVar2 = this.actual;
        cVar2.onError(new MissingBackpressureException("Can't deliver value " + this.count + " due to lack of requests"));
        DisposableHelper.dispose(this.resource);
    }

    public void setResource(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this.resource, bVar);
    }
}
