package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSkipLast$SkipLastObserver.class */
public final class ObservableSkipLast$SkipLastObserver<T> extends ArrayDeque<T> implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = -3807491841935125653L;
    public final AbstractC9844r<? super T> actual;

    /* renamed from: s */
    public AbstractC9861b f38523s;
    public final int skip;

    public ObservableSkipLast$SkipLastObserver(AbstractC9844r<? super T> rVar, int i) {
        super(i);
        this.actual = rVar;
        this.skip = i;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.f38523s.dispose();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.f38523s.isDisposed();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.actual.onComplete();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        if (this.skip == size()) {
            this.actual.onNext((T) poll());
        }
        offer(t);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38523s, bVar)) {
            this.f38523s = bVar;
            this.actual.onSubscribe(this);
        }
    }
}
