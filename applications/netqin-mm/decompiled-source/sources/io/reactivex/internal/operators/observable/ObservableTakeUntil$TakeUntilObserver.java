package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.ArrayCompositeDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilObserver.class */
public final class ObservableTakeUntil$TakeUntilObserver<T> extends AtomicBoolean implements AbstractC9844r<T> {
    public static final long serialVersionUID = 3451719290311127173L;
    public final AbstractC9844r<? super T> actual;
    public final ArrayCompositeDisposable frc;

    /* renamed from: s */
    public AbstractC9861b f38529s;

    public ObservableTakeUntil$TakeUntilObserver(AbstractC9844r<? super T> rVar, ArrayCompositeDisposable arrayCompositeDisposable) {
        this.actual = rVar;
        this.frc = arrayCompositeDisposable;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.frc.dispose();
        this.actual.onComplete();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.frc.dispose();
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38529s, bVar)) {
            this.f38529s = bVar;
            this.frc.setResource(0, bVar);
        }
    }
}
