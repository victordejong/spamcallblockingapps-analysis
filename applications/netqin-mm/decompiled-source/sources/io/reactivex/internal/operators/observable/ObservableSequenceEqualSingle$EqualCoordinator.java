package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.ArrayCompositeDisposable;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p542a0.AbstractC9641d;
import p530d.p541c.p543b0.p548e.p552d.C9756r;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator.class */
public final class ObservableSequenceEqualSingle$EqualCoordinator<T> extends AtomicInteger implements AbstractC9861b {
    public static final long serialVersionUID = -6178010334400373240L;
    public final AbstractC9851u<? super Boolean> actual;
    public volatile boolean cancelled;
    public final AbstractC9641d<? super T, ? super T> comparer;
    public final AbstractC9843q<? extends T> first;
    public final C9756r<T>[] observers;
    public final ArrayCompositeDisposable resources = new ArrayCompositeDisposable(2);
    public final AbstractC9843q<? extends T> second;

    /* renamed from: v1 */
    public T f38521v1;

    /* renamed from: v2 */
    public T f38522v2;

    public ObservableSequenceEqualSingle$EqualCoordinator(AbstractC9851u<? super Boolean> uVar, int i, AbstractC9843q<? extends T> qVar, AbstractC9843q<? extends T> qVar2, AbstractC9641d<? super T, ? super T> dVar) {
        this.actual = uVar;
        this.first = qVar;
        this.second = qVar2;
        this.comparer = dVar;
        this.observers = r0;
        C9756r<T>[] rVarArr = {new C9756r<>(this, 0, i), new C9756r<>(this, 1, i)};
    }

    public void cancel(C9772a<T> aVar, C9772a<T> aVar2) {
        this.cancelled = true;
        aVar.clear();
        aVar2.clear();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (!this.cancelled) {
            this.cancelled = true;
            this.resources.dispose();
            if (getAndIncrement() == 0) {
                C9756r<T>[] rVarArr = this.observers;
                rVarArr[0].f36881b.clear();
                rVarArr[1].f36881b.clear();
            }
        }
    }

    public void drain() {
        Throwable th;
        Throwable th2;
        if (getAndIncrement() == 0) {
            C9756r<T>[] rVarArr = this.observers;
            C9756r<T> rVar = rVarArr[0];
            C9772a<T> aVar = rVar.f36881b;
            C9756r<T> rVar2 = rVarArr[1];
            C9772a<T> aVar2 = rVar2.f36881b;
            int i = 1;
            while (!this.cancelled) {
                boolean z = rVar.f36883d;
                if (!z || (th2 = rVar.f36884e) == null) {
                    boolean z2 = rVar2.f36883d;
                    if (!z2 || (th = rVar2.f36884e) == null) {
                        if (this.f38521v1 == null) {
                            this.f38521v1 = aVar.poll();
                        }
                        boolean z3 = this.f38521v1 == null;
                        if (this.f38522v2 == null) {
                            this.f38522v2 = aVar2.poll();
                        }
                        boolean z4 = this.f38522v2 == null;
                        if (z && z2 && z3 && z4) {
                            this.actual.onSuccess(true);
                            return;
                        } else if (!z || !z2 || z3 == z4) {
                            if (!z3 && !z4) {
                                try {
                                    if (!this.comparer.mo2094a((T) this.f38521v1, (T) this.f38522v2)) {
                                        cancel(aVar, aVar2);
                                        this.actual.onSuccess(false);
                                        return;
                                    }
                                    this.f38521v1 = null;
                                    this.f38522v2 = null;
                                } catch (Throwable th3) {
                                    C9863a.m1822b(th3);
                                    cancel(aVar, aVar2);
                                    this.actual.onError(th3);
                                    return;
                                }
                            }
                            if (z3 || z4) {
                                int addAndGet = addAndGet(-i);
                                i = addAndGet;
                                if (addAndGet == 0) {
                                    return;
                                }
                            }
                        } else {
                            cancel(aVar, aVar2);
                            this.actual.onSuccess(false);
                            return;
                        }
                    } else {
                        cancel(aVar, aVar2);
                        this.actual.onError(th);
                        return;
                    }
                } else {
                    cancel(aVar, aVar2);
                    this.actual.onError(th2);
                    return;
                }
            }
            aVar.clear();
            aVar2.clear();
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled;
    }

    public boolean setDisposable(AbstractC9861b bVar, int i) {
        return this.resources.setResource(i, bVar);
    }

    public void subscribe() {
        C9756r<T>[] rVarArr = this.observers;
        this.first.subscribe(rVarArr[0]);
        this.second.subscribe(rVarArr[1]);
    }
}
