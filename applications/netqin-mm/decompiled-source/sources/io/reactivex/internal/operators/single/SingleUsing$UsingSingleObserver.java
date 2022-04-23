package io.reactivex.internal.operators.single;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver.class */
public final class SingleUsing$UsingSingleObserver<T, U> extends AtomicReference<Object> implements AbstractC9851u<T>, AbstractC9861b {
    public static final long serialVersionUID = -5331524057054083935L;
    public final AbstractC9851u<? super T> actual;

    /* renamed from: d */
    public AbstractC9861b f38560d;
    public final AbstractC9644g<? super U> disposer;
    public final boolean eager;

    public SingleUsing$UsingSingleObserver(AbstractC9851u<? super T> uVar, U u, boolean z, AbstractC9644g<? super U> gVar) {
        super(u);
        this.actual = uVar;
        this.eager = z;
        this.disposer = gVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.f38560d.dispose();
        this.f38560d = DisposableHelper.DISPOSED;
        disposeAfter();
    }

    public void disposeAfter() {
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
        return this.f38560d.isDisposed();
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onError(Throwable th) {
        this.f38560d = DisposableHelper.DISPOSED;
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
            disposeAfter();
        }
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38560d, bVar)) {
            this.f38560d = bVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSuccess(T t) {
        this.f38560d = DisposableHelper.DISPOSED;
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
            disposeAfter();
        }
    }
}
