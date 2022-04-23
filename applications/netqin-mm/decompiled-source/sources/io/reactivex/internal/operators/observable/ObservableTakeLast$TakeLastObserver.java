package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver.class */
public final class ObservableTakeLast$TakeLastObserver<T> extends ArrayDeque<T> implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = 7240042530241604978L;
    public final AbstractC9844r<? super T> actual;
    public volatile boolean cancelled;
    public final int count;

    /* renamed from: s */
    public AbstractC9861b f38527s;

    public ObservableTakeLast$TakeLastObserver(AbstractC9844r<? super T> rVar, int i) {
        this.actual = rVar;
        this.count = i;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (!this.cancelled) {
            this.cancelled = true;
            this.f38527s.dispose();
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        AbstractC9844r<? super T> rVar = this.actual;
        while (!this.cancelled) {
            Object obj = (T) poll();
            if (obj != null) {
                rVar.onNext(obj);
            } else if (!this.cancelled) {
                rVar.onComplete();
                return;
            } else {
                return;
            }
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        if (this.count == size()) {
            poll();
        }
        offer(t);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38527s, bVar)) {
            this.f38527s = bVar;
            this.actual.onSubscribe(this);
        }
    }
}
