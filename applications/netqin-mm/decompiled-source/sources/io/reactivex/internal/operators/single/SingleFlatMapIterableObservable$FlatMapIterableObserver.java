package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import java.util.Iterator;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver.class */
public final class SingleFlatMapIterableObservable$FlatMapIterableObserver<T, R> extends BasicIntQueueDisposable<R> implements AbstractC9851u<T> {
    public static final long serialVersionUID = -8938804753851907758L;
    public final AbstractC9844r<? super R> actual;
    public volatile boolean cancelled;

    /* renamed from: d */
    public AbstractC9861b f38551d;

    /* renamed from: it */
    public volatile Iterator<? extends R> f38552it;
    public final AbstractC9645h<? super T, ? extends Iterable<? extends R>> mapper;
    public boolean outputFused;

    public SingleFlatMapIterableObservable$FlatMapIterableObserver(AbstractC9844r<? super R> rVar, AbstractC9645h<? super T, ? extends Iterable<? extends R>> hVar) {
        this.actual = rVar;
        this.mapper = hVar;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
        this.f38552it = null;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.cancelled = true;
        this.f38551d.dispose();
        this.f38551d = DisposableHelper.DISPOSED;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return this.f38552it == null;
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onError(Throwable th) {
        this.f38551d = DisposableHelper.DISPOSED;
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38551d, bVar)) {
            this.f38551d = bVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSuccess(T t) {
        AbstractC9844r<? super R> rVar = this.actual;
        try {
            Iterator<? extends R> it = ((Iterable) this.mapper.apply(t)).iterator();
            if (!it.hasNext()) {
                rVar.onComplete();
            } else if (this.outputFused) {
                this.f38552it = it;
                rVar.onNext(null);
                rVar.onComplete();
            } else {
                while (!this.cancelled) {
                    try {
                        rVar.onNext((Object) it.next());
                        if (!this.cancelled) {
                            try {
                                if (!it.hasNext()) {
                                    rVar.onComplete();
                                    return;
                                }
                            } catch (Throwable th) {
                                C9863a.m1822b(th);
                                rVar.onError(th);
                                return;
                            }
                        } else {
                            return;
                        }
                    } catch (Throwable th2) {
                        C9863a.m1822b(th2);
                        rVar.onError(th2);
                        return;
                    }
                }
            }
        } catch (Throwable th3) {
            C9863a.m1822b(th3);
            this.actual.onError(th3);
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public R poll() throws Exception {
        Iterator<? extends R> it = this.f38552it;
        if (it == null) {
            return null;
        }
        R r = (R) it.next();
        C9650a.m2095a(r, "The iterator returned a null value");
        if (!it.hasNext()) {
            this.f38552it = null;
        }
        return r;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
    public int requestFusion(int i) {
        if ((i & 2) == 0) {
            return 0;
        }
        this.outputFused = true;
        return 2;
    }
}
