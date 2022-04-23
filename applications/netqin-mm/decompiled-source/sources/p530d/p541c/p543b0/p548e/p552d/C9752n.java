package p530d.p541c.p543b0.p548e.p552d;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.operators.observable.ObservablePublish$InnerDisposable;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.b0.e.d.n */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/n.class */
public final class C9752n<T> implements AbstractC9844r<T>, AbstractC9861b {

    /* renamed from: d */
    public static final ObservablePublish$InnerDisposable[] f36869d = new ObservablePublish$InnerDisposable[0];

    /* renamed from: e */
    public static final ObservablePublish$InnerDisposable[] f36870e = new ObservablePublish$InnerDisposable[0];

    /* renamed from: a */
    public final AtomicReference<C9752n<T>> f36871a;

    /* renamed from: b */
    public final AtomicReference<ObservablePublish$InnerDisposable<T>[]> f36872b;

    /* renamed from: c */
    public final AtomicReference<AbstractC9861b> f36873c;

    /* renamed from: a */
    public void m2071a(ObservablePublish$InnerDisposable<T> observablePublish$InnerDisposable) {
        ObservablePublish$InnerDisposable<T>[] observablePublish$InnerDisposableArr;
        ObservablePublish$InnerDisposable<T>[] observablePublish$InnerDisposableArr2;
        do {
            observablePublish$InnerDisposableArr = this.f36872b.get();
            int length = observablePublish$InnerDisposableArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (observablePublish$InnerDisposableArr[i2].equals(observablePublish$InnerDisposable)) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        observablePublish$InnerDisposableArr2 = f36869d;
                    } else {
                        observablePublish$InnerDisposableArr2 = new ObservablePublish$InnerDisposable[length - 1];
                        System.arraycopy(observablePublish$InnerDisposableArr, 0, observablePublish$InnerDisposableArr2, 0, i);
                        System.arraycopy(observablePublish$InnerDisposableArr, i + 1, observablePublish$InnerDisposableArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f36872b.compareAndSet(observablePublish$InnerDisposableArr, observablePublish$InnerDisposableArr2));
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (this.f36872b.getAndSet(f36870e) != f36870e) {
            this.f36871a.compareAndSet(this, null);
            DisposableHelper.dispose(this.f36873c);
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.f36872b.get() == f36870e;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.f36871a.compareAndSet(this, null);
        for (ObservablePublish$InnerDisposable<T> observablePublish$InnerDisposable : this.f36872b.getAndSet(f36870e)) {
            observablePublish$InnerDisposable.child.onComplete();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.f36871a.compareAndSet(this, null);
        ObservablePublish$InnerDisposable<T>[] andSet = this.f36872b.getAndSet(f36870e);
        if (andSet.length != 0) {
            for (ObservablePublish$InnerDisposable<T> observablePublish$InnerDisposable : andSet) {
                observablePublish$InnerDisposable.child.onError(th);
            }
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        for (ObservablePublish$InnerDisposable<T> observablePublish$InnerDisposable : this.f36872b.get()) {
            observablePublish$InnerDisposable.child.onNext(t);
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this.f36873c, bVar);
    }
}
