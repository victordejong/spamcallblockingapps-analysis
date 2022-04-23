package io.reactivex.internal.operators.single;

import java.util.concurrent.atomic.AtomicBoolean;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9860a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver.class */
public final class SingleAmb$AmbSingleObserver<T> extends AtomicBoolean implements AbstractC9851u<T> {
    public static final long serialVersionUID = -1944085461036028108L;

    /* renamed from: s */
    public final AbstractC9851u<? super T> f38543s;
    public final C9860a set;

    public SingleAmb$AmbSingleObserver(AbstractC9851u<? super T> uVar, C9860a aVar) {
        this.f38543s = uVar;
        this.set = aVar;
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onError(Throwable th) {
        if (compareAndSet(false, true)) {
            this.set.dispose();
            this.f38543s.onError(th);
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSubscribe(AbstractC9861b bVar) {
        this.set.mo1828b(bVar);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSuccess(T t) {
        if (compareAndSet(false, true)) {
            this.set.dispose();
            this.f38543s.onSuccess(t);
        }
    }
}
