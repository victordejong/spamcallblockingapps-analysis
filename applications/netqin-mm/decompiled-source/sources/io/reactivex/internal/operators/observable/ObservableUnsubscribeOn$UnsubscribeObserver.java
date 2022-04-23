package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableUnsubscribeOn$UnsubscribeObserver.class */
public final class ObservableUnsubscribeOn$UnsubscribeObserver<T> extends AtomicBoolean implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = 1015244841293359600L;
    public final AbstractC9844r<? super T> actual;

    /* renamed from: s */
    public AbstractC9861b f38531s;
    public final AbstractC9845s scheduler;

    /* renamed from: io.reactivex.internal.operators.observable.ObservableUnsubscribeOn$UnsubscribeObserver$a */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableUnsubscribeOn$UnsubscribeObserver$a.class */
    public final class RunnableC10418a implements Runnable {
        public RunnableC10418a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ObservableUnsubscribeOn$UnsubscribeObserver.this.f38531s.dispose();
        }
    }

    public ObservableUnsubscribeOn$UnsubscribeObserver(AbstractC9844r<? super T> rVar, AbstractC9845s sVar) {
        this.actual = rVar;
        this.scheduler = sVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (compareAndSet(false, true)) {
            this.scheduler.mo1854a(new RunnableC10418a());
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (!get()) {
            this.actual.onComplete();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (get()) {
            C9815a.m1923b(th);
        } else {
            this.actual.onError(th);
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        if (!get()) {
            this.actual.onNext(t);
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38531s, bVar)) {
            this.f38531s = bVar;
            this.actual.onSubscribe(this);
        }
    }
}
