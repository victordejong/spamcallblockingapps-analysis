package io.reactivex.internal.operators.observable;

import io.reactivex.internal.util.NotificationLite;
import java.util.ArrayList;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p548e.p552d.AbstractC9753o;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer.class */
public final class ObservableReplay$UnboundedReplayBuffer<T> extends ArrayList<Object> implements AbstractC9753o<T> {
    public static final long serialVersionUID = 7063189396499112664L;
    public volatile int size;

    public ObservableReplay$UnboundedReplayBuffer(int i) {
        super(i);
    }

    @Override // p530d.p541c.p543b0.p548e.p552d.AbstractC9753o
    public void complete() {
        add(NotificationLite.complete());
        this.size++;
    }

    @Override // p530d.p541c.p543b0.p548e.p552d.AbstractC9753o
    public void error(Throwable th) {
        add(NotificationLite.error(th));
        this.size++;
    }

    @Override // p530d.p541c.p543b0.p548e.p552d.AbstractC9753o
    public void next(T t) {
        add(NotificationLite.next(t));
        this.size++;
    }

    @Override // p530d.p541c.p543b0.p548e.p552d.AbstractC9753o
    public void replay(ObservableReplay$InnerDisposable<T> observableReplay$InnerDisposable) {
        if (observableReplay$InnerDisposable.getAndIncrement() == 0) {
            AbstractC9844r<? super T> rVar = observableReplay$InnerDisposable.child;
            int i = 1;
            while (!observableReplay$InnerDisposable.isDisposed()) {
                int i2 = this.size;
                Integer num = (Integer) observableReplay$InnerDisposable.index();
                int intValue = num != null ? num.intValue() : 0;
                while (intValue < i2) {
                    if (!NotificationLite.accept(get(intValue), rVar) && !observableReplay$InnerDisposable.isDisposed()) {
                        intValue++;
                    } else {
                        return;
                    }
                }
                observableReplay$InnerDisposable.index = Integer.valueOf(intValue);
                int addAndGet = observableReplay$InnerDisposable.addAndGet(-i);
                i = addAndGet;
                if (addAndGet == 0) {
                    return;
                }
            }
        }
    }
}
