package io.reactivex.internal.operators.observable;

import io.reactivex.Emitter;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableGenerate.class */
public final class ObservableGenerate<T, S> extends Observable<T> {

    /* renamed from: f */
    final Callable<S> f17985f;

    /* renamed from: g */
    final BiFunction<S, Emitter<T>, S> f17986g;

    /* renamed from: h */
    final Consumer<? super S> f17987h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable.class */
    static final class GeneratorDisposable<T, S> implements Emitter<T>, Disposable {

        /* renamed from: f */
        final Observer<? super T> f17988f;

        /* renamed from: g */
        final BiFunction<S, ? super Emitter<T>, S> f17989g;

        /* renamed from: h */
        final Consumer<? super S> f17990h;

        /* renamed from: i */
        S f17991i;

        /* renamed from: j */
        volatile boolean f17992j;

        /* renamed from: k */
        boolean f17993k;

        /* renamed from: l */
        boolean f17994l;

        GeneratorDisposable(Observer<? super T> observer, BiFunction<S, ? super Emitter<T>, S> biFunction, Consumer<? super S> consumer, S s) {
            this.f17988f = observer;
            this.f17989g = biFunction;
            this.f17990h = consumer;
            this.f17991i = s;
        }

        /* renamed from: b */
        private void m3821b(S s) {
            try {
                this.f17990h.accept(s);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(th);
            }
        }

        /* renamed from: c */
        public void m3820c() {
            S s = this.f17991i;
            if (this.f17992j) {
                this.f17991i = null;
                m3821b(s);
                return;
            }
            BiFunction<S, ? super Emitter<T>, S> biFunction = this.f17989g;
            while (!this.f17992j) {
                this.f17994l = false;
                try {
                    S apply = biFunction.apply(s, this);
                    s = apply;
                    if (this.f17993k) {
                        this.f17992j = true;
                        this.f17991i = null;
                        m3821b(apply);
                        return;
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f17991i = null;
                    this.f17992j = true;
                    onError(th);
                    m3821b(s);
                    return;
                }
            }
            this.f17991i = null;
            m3821b(s);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17992j = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17992j;
        }

        @Override // io.reactivex.Emitter
        public void onComplete() {
            if (!this.f17993k) {
                this.f17993k = true;
                this.f17988f.onComplete();
            }
        }

        @Override // io.reactivex.Emitter
        public void onError(Throwable th) {
            if (this.f17993k) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            Throwable th2 = th;
            if (th == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.f17993k = true;
            this.f17988f.onError(th2);
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            if (this.f17993k) {
                return;
            }
            if (this.f17994l) {
                onError(new IllegalStateException("onNext already called in this generate turn"));
            } else if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.f17994l = true;
                this.f17988f.onNext(t);
            }
        }
    }

    public ObservableGenerate(Callable<S> callable, BiFunction<S, Emitter<T>, S> biFunction, Consumer<? super S> consumer) {
        this.f17985f = callable;
        this.f17986g = biFunction;
        this.f17987h = consumer;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        try {
            GeneratorDisposable generatorDisposable = new GeneratorDisposable(observer, this.f17986g, this.f17987h, this.f17985f.call());
            observer.onSubscribe(generatorDisposable);
            generatorDisposable.m3820c();
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
