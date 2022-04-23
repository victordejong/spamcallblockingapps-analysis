package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleAmb.class */
public final class SingleAmb<T> extends Single<T> {

    /* renamed from: f */
    private final SingleSource<? extends T>[] f18965f;

    /* renamed from: g */
    private final Iterable<? extends SingleSource<? extends T>> f18966g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver.class */
    static final class AmbSingleObserver<T> implements SingleObserver<T> {

        /* renamed from: f */
        final CompositeDisposable f18967f;

        /* renamed from: g */
        final SingleObserver<? super T> f18968g;

        /* renamed from: h */
        final AtomicBoolean f18969h;

        /* renamed from: i */
        Disposable f18970i;

        AmbSingleObserver(SingleObserver<? super T> singleObserver, CompositeDisposable compositeDisposable, AtomicBoolean atomicBoolean) {
            this.f18968g = singleObserver;
            this.f18967f = compositeDisposable;
            this.f18969h = atomicBoolean;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            if (this.f18969h.compareAndSet(false, true)) {
                this.f18967f.mo4424c(this.f18970i);
                this.f18967f.dispose();
                this.f18968g.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f18970i = disposable;
            this.f18967f.mo4425b(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            if (this.f18969h.compareAndSet(false, true)) {
                this.f18967f.mo4424c(this.f18970i);
                this.f18967f.dispose();
                this.f18968g.onSuccess(t);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        int i;
        SingleSource<? extends T>[] singleSourceArr = this.f18965f;
        if (singleSourceArr == null) {
            SingleSource<? extends T>[] singleSourceArr2 = new SingleSource[8];
            try {
                Iterator<? extends SingleSource<? extends T>> it = this.f18966g.iterator();
                int i2 = 0;
                while (true) {
                    singleSourceArr = singleSourceArr2;
                    i = i2;
                    if (!it.hasNext()) {
                        break;
                    }
                    SingleSource<? extends T> singleSource = (SingleSource) it.next();
                    if (singleSource == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), singleObserver);
                        return;
                    }
                    SingleSource<? extends T>[] singleSourceArr3 = singleSourceArr2;
                    if (i2 == singleSourceArr2.length) {
                        singleSourceArr3 = new SingleSource[(i2 >> 2) + i2];
                        System.arraycopy(singleSourceArr2, 0, singleSourceArr3, 0, i2);
                    }
                    singleSourceArr3[i2] = singleSource;
                    i2++;
                    singleSourceArr2 = singleSourceArr3;
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                EmptyDisposable.error(th, singleObserver);
                return;
            }
        } else {
            i = singleSourceArr.length;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        singleObserver.onSubscribe(compositeDisposable);
        for (int i3 = 0; i3 < i; i3++) {
            SingleSource<? extends T> singleSource2 = singleSourceArr[i3];
            if (compositeDisposable.isDisposed()) {
                return;
            }
            if (singleSource2 == null) {
                compositeDisposable.dispose();
                NullPointerException nullPointerException = new NullPointerException("One of the sources is null");
                if (atomicBoolean.compareAndSet(false, true)) {
                    singleObserver.onError(nullPointerException);
                    return;
                } else {
                    RxJavaPlugins.m3354t(nullPointerException);
                    return;
                }
            } else {
                singleSource2.mo4457b(new AmbSingleObserver(singleObserver, compositeDisposable, atomicBoolean));
            }
        }
    }
}
