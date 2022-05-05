package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeAmb.class */
public final class MaybeAmb<T> extends Maybe<T> {

    /* renamed from: f */
    private final MaybeSource<? extends T>[] f16961f;

    /* renamed from: g */
    private final Iterable<? extends MaybeSource<? extends T>> f16962g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver.class */
    static final class AmbMaybeObserver<T> implements MaybeObserver<T> {

        /* renamed from: f */
        final MaybeObserver<? super T> f16963f;

        /* renamed from: g */
        final AtomicBoolean f16964g;

        /* renamed from: h */
        final CompositeDisposable f16965h;

        /* renamed from: i */
        Disposable f16966i;

        AmbMaybeObserver(MaybeObserver<? super T> maybeObserver, CompositeDisposable compositeDisposable, AtomicBoolean atomicBoolean) {
            this.f16963f = maybeObserver;
            this.f16965h = compositeDisposable;
            this.f16964g = atomicBoolean;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            if (this.f16964g.compareAndSet(false, true)) {
                this.f16965h.mo4424c(this.f16966i);
                this.f16965h.dispose();
                this.f16963f.onComplete();
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            if (this.f16964g.compareAndSet(false, true)) {
                this.f16965h.mo4424c(this.f16966i);
                this.f16965h.dispose();
                this.f16963f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            this.f16966i = disposable;
            this.f16965h.mo4425b(disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            if (this.f16964g.compareAndSet(false, true)) {
                this.f16965h.mo4424c(this.f16966i);
                this.f16965h.dispose();
                this.f16963f.onSuccess(t);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        int i;
        MaybeSource<? extends T>[] maybeSourceArr = this.f16961f;
        if (maybeSourceArr == null) {
            MaybeSource<? extends T>[] maybeSourceArr2 = new MaybeSource[8];
            try {
                Iterator<? extends MaybeSource<? extends T>> it = this.f16962g.iterator();
                int i2 = 0;
                while (true) {
                    maybeSourceArr = maybeSourceArr2;
                    i = i2;
                    if (!it.hasNext()) {
                        break;
                    }
                    MaybeSource<? extends T> maybeSource = (MaybeSource) it.next();
                    if (maybeSource == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), maybeObserver);
                        return;
                    }
                    MaybeSource<? extends T>[] maybeSourceArr3 = maybeSourceArr2;
                    if (i2 == maybeSourceArr2.length) {
                        maybeSourceArr3 = new MaybeSource[(i2 >> 2) + i2];
                        System.arraycopy(maybeSourceArr2, 0, maybeSourceArr3, 0, i2);
                    }
                    maybeSourceArr3[i2] = maybeSource;
                    i2++;
                    maybeSourceArr2 = maybeSourceArr3;
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                EmptyDisposable.error(th, maybeObserver);
                return;
            }
        } else {
            i = maybeSourceArr.length;
        }
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        maybeObserver.onSubscribe(compositeDisposable);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        for (int i3 = 0; i3 < i; i3++) {
            MaybeSource<? extends T> maybeSource2 = maybeSourceArr[i3];
            if (compositeDisposable.isDisposed()) {
                return;
            }
            if (maybeSource2 == null) {
                compositeDisposable.dispose();
                NullPointerException nullPointerException = new NullPointerException("One of the MaybeSources is null");
                if (atomicBoolean.compareAndSet(false, true)) {
                    maybeObserver.onError(nullPointerException);
                    return;
                } else {
                    RxJavaPlugins.m3354t(nullPointerException);
                    return;
                }
            } else {
                maybeSource2.mo4485b(new AmbMaybeObserver(maybeObserver, compositeDisposable, atomicBoolean));
            }
        }
        if (i == 0) {
            maybeObserver.onComplete();
        }
    }
}
