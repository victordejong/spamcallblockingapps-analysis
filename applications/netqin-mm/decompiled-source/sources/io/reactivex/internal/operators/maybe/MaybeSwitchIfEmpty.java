package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.p543b0.p548e.p551c.AbstractC9712a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeSwitchIfEmpty.class */
public final class MaybeSwitchIfEmpty<T> extends AbstractC9712a<T, T> {

    /* renamed from: b */
    public final AbstractC9838m<? extends T> f38471b;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeSwitchIfEmpty$SwitchIfEmptyMaybeObserver.class */
    public static final class SwitchIfEmptyMaybeObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<T>, AbstractC9861b {
        public static final long serialVersionUID = -2223459372976438024L;
        public final AbstractC9836k<? super T> actual;
        public final AbstractC9838m<? extends T> other;

        /* renamed from: io.reactivex.internal.operators.maybe.MaybeSwitchIfEmpty$SwitchIfEmptyMaybeObserver$a */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeSwitchIfEmpty$SwitchIfEmptyMaybeObserver$a.class */
        public static final class C10414a<T> implements AbstractC9836k<T> {

            /* renamed from: a */
            public final AbstractC9836k<? super T> f38472a;

            /* renamed from: b */
            public final AtomicReference<AbstractC9861b> f38473b;

            public C10414a(AbstractC9836k<? super T> kVar, AtomicReference<AbstractC9861b> atomicReference) {
                this.f38472a = kVar;
                this.f38473b = atomicReference;
            }

            @Override // p530d.p541c.AbstractC9836k
            public void onComplete() {
                this.f38472a.onComplete();
            }

            @Override // p530d.p541c.AbstractC9836k
            public void onError(Throwable th) {
                this.f38472a.onError(th);
            }

            @Override // p530d.p541c.AbstractC9836k
            public void onSubscribe(AbstractC9861b bVar) {
                DisposableHelper.setOnce(this.f38473b, bVar);
            }

            @Override // p530d.p541c.AbstractC9836k
            public void onSuccess(T t) {
                this.f38472a.onSuccess(t);
            }
        }

        public SwitchIfEmptyMaybeObserver(AbstractC9836k<? super T> kVar, AbstractC9838m<? extends T> mVar) {
            this.actual = kVar;
            this.other = mVar;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onComplete() {
            AbstractC9861b bVar = get();
            if (bVar != DisposableHelper.DISPOSED && compareAndSet(bVar, null)) {
                this.other.mo1876a(new C10414a(this.actual, this));
            }
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            this.actual.onError(th);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                this.actual.onSubscribe(this);
            }
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(T t) {
            this.actual.onSuccess(t);
        }
    }

    public MaybeSwitchIfEmpty(AbstractC9838m<T> mVar, AbstractC9838m<? extends T> mVar2) {
        super(mVar);
        this.f38471b = mVar2;
    }

    @Override // p530d.p541c.AbstractC9833i
    /* renamed from: b */
    public void mo201b(AbstractC9836k<? super T> kVar) {
        this.f36803a.mo1876a(new SwitchIfEmptyMaybeObserver(kVar, this.f38471b));
    }
}
