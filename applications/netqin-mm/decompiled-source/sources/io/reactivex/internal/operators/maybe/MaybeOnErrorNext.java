package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p548e.p551c.AbstractC9712a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeOnErrorNext.class */
public final class MaybeOnErrorNext<T> extends AbstractC9712a<T, T> {

    /* renamed from: b */
    public final AbstractC9645h<? super Throwable, ? extends AbstractC9838m<? extends T>> f38464b;

    /* renamed from: c */
    public final boolean f38465c;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeOnErrorNext$OnErrorNextMaybeObserver.class */
    public static final class OnErrorNextMaybeObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<T>, AbstractC9861b {
        public static final long serialVersionUID = 2026620218879969836L;
        public final AbstractC9836k<? super T> actual;
        public final boolean allowFatal;
        public final AbstractC9645h<? super Throwable, ? extends AbstractC9838m<? extends T>> resumeFunction;

        /* renamed from: io.reactivex.internal.operators.maybe.MaybeOnErrorNext$OnErrorNextMaybeObserver$a */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeOnErrorNext$OnErrorNextMaybeObserver$a.class */
        public static final class C10412a<T> implements AbstractC9836k<T> {

            /* renamed from: a */
            public final AbstractC9836k<? super T> f38466a;

            /* renamed from: b */
            public final AtomicReference<AbstractC9861b> f38467b;

            public C10412a(AbstractC9836k<? super T> kVar, AtomicReference<AbstractC9861b> atomicReference) {
                this.f38466a = kVar;
                this.f38467b = atomicReference;
            }

            @Override // p530d.p541c.AbstractC9836k
            public void onComplete() {
                this.f38466a.onComplete();
            }

            @Override // p530d.p541c.AbstractC9836k
            public void onError(Throwable th) {
                this.f38466a.onError(th);
            }

            @Override // p530d.p541c.AbstractC9836k
            public void onSubscribe(AbstractC9861b bVar) {
                DisposableHelper.setOnce(this.f38467b, bVar);
            }

            @Override // p530d.p541c.AbstractC9836k
            public void onSuccess(T t) {
                this.f38466a.onSuccess(t);
            }
        }

        public OnErrorNextMaybeObserver(AbstractC9836k<? super T> kVar, AbstractC9645h<? super Throwable, ? extends AbstractC9838m<? extends T>> hVar, boolean z) {
            this.actual = kVar;
            this.resumeFunction = hVar;
            this.allowFatal = z;
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
            this.actual.onComplete();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            if (this.allowFatal || (th instanceof Exception)) {
                try {
                    Object apply = this.resumeFunction.apply(th);
                    C9650a.m2095a(apply, "The resumeFunction returned a null MaybeSource");
                    AbstractC9838m mVar = (AbstractC9838m) apply;
                    DisposableHelper.replace(this, null);
                    mVar.mo1876a(new C10412a(this.actual, this));
                } catch (Throwable th2) {
                    C9863a.m1822b(th2);
                    this.actual.onError(new CompositeException(th, th2));
                }
            } else {
                this.actual.onError(th);
            }
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

    public MaybeOnErrorNext(AbstractC9838m<T> mVar, AbstractC9645h<? super Throwable, ? extends AbstractC9838m<? extends T>> hVar, boolean z) {
        super(mVar);
        this.f38464b = hVar;
        this.f38465c = z;
    }

    @Override // p530d.p541c.AbstractC9833i
    /* renamed from: b */
    public void mo201b(AbstractC9836k<? super T> kVar) {
        this.f36803a.mo1876a(new OnErrorNextMaybeObserver(kVar, this.f38464b, this.f38465c));
    }
}
