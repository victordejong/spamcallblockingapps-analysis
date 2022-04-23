package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableElementAt.class */
public final class ObservableElementAt<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final long f17858g;

    /* renamed from: h */
    final T f17859h;

    /* renamed from: i */
    final boolean f17860i;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableElementAt$ElementAtObserver.class */
    static final class ElementAtObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super T> f17861f;

        /* renamed from: g */
        final long f17862g;

        /* renamed from: h */
        final T f17863h;

        /* renamed from: i */
        final boolean f17864i;

        /* renamed from: j */
        Disposable f17865j;

        /* renamed from: k */
        long f17866k;

        /* renamed from: l */
        boolean f17867l;

        ElementAtObserver(Observer<? super T> observer, long j, T t, boolean z) {
            this.f17861f = observer;
            this.f17862g = j;
            this.f17863h = t;
            this.f17864i = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17865j.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17865j.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f17867l) {
                this.f17867l = true;
                T t = this.f17863h;
                if (t != null || !this.f17864i) {
                    if (t != null) {
                        this.f17861f.onNext(t);
                    }
                    this.f17861f.onComplete();
                    return;
                }
                this.f17861f.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17867l) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f17867l = true;
            this.f17861f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f17867l) {
                long j = this.f17866k;
                if (j == this.f17862g) {
                    this.f17867l = true;
                    this.f17865j.dispose();
                    this.f17861f.onNext(t);
                    this.f17861f.onComplete();
                    return;
                }
                this.f17866k = j + 1;
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17865j, disposable)) {
                this.f17865j = disposable;
                this.f17861f.onSubscribe(this);
            }
        }
    }

    public ObservableElementAt(ObservableSource<T> observableSource, long j, T t, boolean z) {
        super(observableSource);
        this.f17858g = j;
        this.f17859h = t;
        this.f17860i = z;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new ElementAtObserver(observer, this.f17858g, this.f17859h, this.f17860i));
    }
}
