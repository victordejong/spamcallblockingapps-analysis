package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver.class */
public final class MaybeUsing$UsingObserver<T, D> extends AtomicReference<Object> implements AbstractC9836k<T>, AbstractC9861b {
    public static final long serialVersionUID = -674404550052917487L;
    public final AbstractC9836k<? super T> actual;

    /* renamed from: d */
    public AbstractC9861b f38481d;
    public final AbstractC9644g<? super D> disposer;
    public final boolean eager;

    public MaybeUsing$UsingObserver(AbstractC9836k<? super T> kVar, D d, AbstractC9644g<? super D> gVar, boolean z) {
        super(d);
        this.actual = kVar;
        this.disposer = gVar;
        this.eager = z;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.f38481d.dispose();
        this.f38481d = DisposableHelper.DISPOSED;
        disposeResourceAfter();
    }

    public void disposeResourceAfter() {
        Object andSet = getAndSet(this);
        if (andSet != this) {
            try {
                this.disposer.accept(andSet);
            } catch (Throwable th) {
                C9863a.m1822b(th);
                C9815a.m1923b(th);
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.f38481d.isDisposed();
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onComplete() {
        this.f38481d = DisposableHelper.DISPOSED;
        if (this.eager) {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.disposer.accept(andSet);
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    this.actual.onError(th);
                    return;
                }
            } else {
                return;
            }
        }
        this.actual.onComplete();
        if (!this.eager) {
            disposeResourceAfter();
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        this.f38481d = DisposableHelper.DISPOSED;
        Throwable th2 = th;
        if (this.eager) {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.disposer.accept(andSet);
                    th2 = th;
                } catch (Throwable th3) {
                    C9863a.m1822b(th3);
                    th2 = new CompositeException(th, th3);
                }
            } else {
                return;
            }
        }
        this.actual.onError(th2);
        if (!this.eager) {
            disposeResourceAfter();
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38481d, bVar)) {
            this.f38481d = bVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(T t) {
        this.f38481d = DisposableHelper.DISPOSED;
        if (this.eager) {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.disposer.accept(andSet);
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    this.actual.onError(th);
                    return;
                }
            } else {
                return;
            }
        }
        this.actual.onSuccess(t);
        if (!this.eager) {
            disposeResourceAfter();
        }
    }
}
