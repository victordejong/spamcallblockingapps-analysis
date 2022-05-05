package io.reactivex.internal.operators.observable;

import io.reactivex.Notification;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDematerialize.class */
public final class ObservableDematerialize<T, R> extends AbstractObservableWithUpstream<T, R> {

    /* renamed from: g */
    final Function<? super T, ? extends Notification<R>> f17820g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDematerialize$DematerializeObserver.class */
    static final class DematerializeObserver<T, R> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super R> f17821f;

        /* renamed from: g */
        final Function<? super T, ? extends Notification<R>> f17822g;

        /* renamed from: h */
        boolean f17823h;

        /* renamed from: i */
        Disposable f17824i;

        DematerializeObserver(Observer<? super R> observer, Function<? super T, ? extends Notification<R>> function) {
            this.f17821f = observer;
            this.f17822g = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17824i.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17824i.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f17823h) {
                this.f17823h = true;
                this.f17821f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17823h) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f17823h = true;
            this.f17821f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f17823h) {
                try {
                    Object apply = this.f17822g.apply(t);
                    ObjectHelper.m4363e(apply, "The selector returned a null Notification");
                    Notification notification = (Notification) apply;
                    if (notification.m4478g()) {
                        this.f17824i.dispose();
                        onError(notification.m4481d());
                    } else if (notification.m4479f()) {
                        this.f17824i.dispose();
                        onComplete();
                    } else {
                        this.f17821f.onNext((Object) notification.m4480e());
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f17824i.dispose();
                    onError(th);
                }
            } else if (t instanceof Notification) {
                Notification notification2 = (Notification) t;
                if (notification2.m4478g()) {
                    RxJavaPlugins.m3354t(notification2.m4481d());
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17824i, disposable)) {
                this.f17824i = disposable;
                this.f17821f.onSubscribe(this);
            }
        }
    }

    public ObservableDematerialize(ObservableSource<T> observableSource, Function<? super T, ? extends Notification<R>> function) {
        super(observableSource);
        this.f17820g = function;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super R> observer) {
        this.f17497f.subscribe(new DematerializeObserver(observer, this.f17820g));
    }
}
