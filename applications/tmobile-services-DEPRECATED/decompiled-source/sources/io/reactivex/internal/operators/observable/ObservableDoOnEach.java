package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDoOnEach.class */
public final class ObservableDoOnEach<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final Consumer<? super T> f17845g;

    /* renamed from: h */
    final Consumer<? super Throwable> f17846h;

    /* renamed from: i */
    final Action f17847i;

    /* renamed from: j */
    final Action f17848j;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver.class */
    static final class DoOnEachObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super T> f17849f;

        /* renamed from: g */
        final Consumer<? super T> f17850g;

        /* renamed from: h */
        final Consumer<? super Throwable> f17851h;

        /* renamed from: i */
        final Action f17852i;

        /* renamed from: j */
        final Action f17853j;

        /* renamed from: k */
        Disposable f17854k;

        /* renamed from: l */
        boolean f17855l;

        DoOnEachObserver(Observer<? super T> observer, Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Action action2) {
            this.f17849f = observer;
            this.f17850g = consumer;
            this.f17851h = consumer2;
            this.f17852i = action;
            this.f17853j = action2;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17854k.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17854k.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f17855l) {
                try {
                    this.f17852i.run();
                    this.f17855l = true;
                    this.f17849f.onComplete();
                    try {
                        this.f17853j.run();
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        RxJavaPlugins.m3354t(th);
                    }
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    onError(th2);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17855l) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f17855l = true;
            try {
                this.f17851h.accept(th);
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                th = new CompositeException(th, th2);
            }
            this.f17849f.onError(th);
            try {
                this.f17853j.run();
            } catch (Throwable th3) {
                Exceptions.m4428b(th3);
                RxJavaPlugins.m3354t(th3);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f17855l) {
                try {
                    this.f17850g.accept(t);
                    this.f17849f.onNext(t);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f17854k.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17854k, disposable)) {
                this.f17854k = disposable;
                this.f17849f.onSubscribe(this);
            }
        }
    }

    public ObservableDoOnEach(ObservableSource<T> observableSource, Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Action action2) {
        super(observableSource);
        this.f17845g = consumer;
        this.f17846h = consumer2;
        this.f17847i = action;
        this.f17848j = action2;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new DoOnEachObserver(observer, this.f17845g, this.f17846h, this.f17847i, this.f17848j));
    }
}
