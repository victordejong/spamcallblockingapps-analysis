package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableZipIterable.class */
public final class ObservableZipIterable<T, U, V> extends Observable<V> {

    /* renamed from: f */
    final Observable<? extends T> f18786f;

    /* renamed from: g */
    final Iterable<U> f18787g;

    /* renamed from: h */
    final BiFunction<? super T, ? super U, ? extends V> f18788h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableZipIterable$ZipIterableObserver.class */
    static final class ZipIterableObserver<T, U, V> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super V> f18789f;

        /* renamed from: g */
        final Iterator<U> f18790g;

        /* renamed from: h */
        final BiFunction<? super T, ? super U, ? extends V> f18791h;

        /* renamed from: i */
        Disposable f18792i;

        /* renamed from: j */
        boolean f18793j;

        ZipIterableObserver(Observer<? super V> observer, Iterator<U> it, BiFunction<? super T, ? super U, ? extends V> biFunction) {
            this.f18789f = observer;
            this.f18790g = it;
            this.f18791h = biFunction;
        }

        /* renamed from: a */
        void m3625a(Throwable th) {
            this.f18793j = true;
            this.f18792i.dispose();
            this.f18789f.onError(th);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18792i.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18792i.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f18793j) {
                this.f18793j = true;
                this.f18789f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18793j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18793j = true;
            this.f18789f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f18793j) {
                try {
                    U next = this.f18790g.next();
                    ObjectHelper.m4363e(next, "The iterator returned a null value");
                    try {
                        Object apply = this.f18791h.apply(t, next);
                        ObjectHelper.m4363e(apply, "The zipper function returned a null value");
                        this.f18789f.onNext(apply);
                        try {
                            if (!this.f18790g.hasNext()) {
                                this.f18793j = true;
                                this.f18792i.dispose();
                                this.f18789f.onComplete();
                            }
                        } catch (Throwable th) {
                            Exceptions.m4428b(th);
                            m3625a(th);
                        }
                    } catch (Throwable th2) {
                        Exceptions.m4428b(th2);
                        m3625a(th2);
                    }
                } catch (Throwable th3) {
                    Exceptions.m4428b(th3);
                    m3625a(th3);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18792i, disposable)) {
                this.f18792i = disposable;
                this.f18789f.onSubscribe(this);
            }
        }
    }

    public ObservableZipIterable(Observable<? extends T> observable, Iterable<U> iterable, BiFunction<? super T, ? super U, ? extends V> biFunction) {
        this.f18786f = observable;
        this.f18787g = iterable;
        this.f18788h = biFunction;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super V> observer) {
        try {
            Iterator<U> it = this.f18787g.iterator();
            ObjectHelper.m4363e(it, "The iterator returned by other is null");
            Iterator<U> it2 = it;
            try {
                if (!it2.hasNext()) {
                    EmptyDisposable.complete(observer);
                } else {
                    this.f18786f.subscribe(new ZipIterableObserver(observer, it2, this.f18788h));
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                EmptyDisposable.error(th, observer);
            }
        } catch (Throwable th2) {
            Exceptions.m4428b(th2);
            EmptyDisposable.error(th2, observer);
        }
    }
}
