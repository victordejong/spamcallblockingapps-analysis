package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.AbstractC9852v;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFlatMap$SingleFlatMapCallback.class */
public final class SingleFlatMap$SingleFlatMapCallback<T, R> extends AtomicReference<AbstractC9861b> implements AbstractC9851u<T>, AbstractC9861b {
    public static final long serialVersionUID = 3258103020495908596L;
    public final AbstractC9851u<? super R> actual;
    public final AbstractC9645h<? super T, ? extends AbstractC9852v<? extends R>> mapper;

    /* renamed from: io.reactivex.internal.operators.single.SingleFlatMap$SingleFlatMapCallback$a */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFlatMap$SingleFlatMapCallback$a.class */
    public static final class C10420a<R> implements AbstractC9851u<R> {

        /* renamed from: a */
        public final AtomicReference<AbstractC9861b> f38547a;

        /* renamed from: b */
        public final AbstractC9851u<? super R> f38548b;

        public C10420a(AtomicReference<AbstractC9861b> atomicReference, AbstractC9851u<? super R> uVar) {
            this.f38547a = atomicReference;
            this.f38548b = uVar;
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onError(Throwable th) {
            this.f38548b.onError(th);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.replace(this.f38547a, bVar);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSuccess(R r) {
            this.f38548b.onSuccess(r);
        }
    }

    public SingleFlatMap$SingleFlatMapCallback(AbstractC9851u<? super R> uVar, AbstractC9645h<? super T, ? extends AbstractC9852v<? extends R>> hVar) {
        this.actual = uVar;
        this.mapper = hVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.setOnce(this, bVar)) {
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSuccess(T t) {
        try {
            Object apply = this.mapper.apply(t);
            C9650a.m2095a(apply, "The single returned by the mapper is null");
            AbstractC9852v vVar = (AbstractC9852v) apply;
            if (!isDisposed()) {
                vVar.mo1841a(new C10420a(this, this.actual));
            }
        } catch (Throwable th) {
            C9863a.m1822b(th);
            this.actual.onError(th);
        }
    }
}
