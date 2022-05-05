package io.reactivex.internal.operators.mixed;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe.class */
public final class ObservableSwitchMapMaybe<T, R> extends Observable<R> {

    /* renamed from: f */
    final Observable<T> f17465f;

    /* renamed from: g */
    final Function<? super T, ? extends MaybeSource<? extends R>> f17466g;

    /* renamed from: h */
    final boolean f17467h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver.class */
    static final class SwitchMapMaybeMainObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable {

        /* renamed from: n */
        static final SwitchMapMaybeObserver<Object> f17468n = new SwitchMapMaybeObserver<>(null);
        private static final long serialVersionUID = -5402190102429853762L;

        /* renamed from: f */
        final Observer<? super R> f17469f;

        /* renamed from: g */
        final Function<? super T, ? extends MaybeSource<? extends R>> f17470g;

        /* renamed from: h */
        final boolean f17471h;

        /* renamed from: i */
        final AtomicThrowable f17472i = new AtomicThrowable();

        /* renamed from: j */
        final AtomicReference<SwitchMapMaybeObserver<R>> f17473j = new AtomicReference<>();

        /* renamed from: k */
        Disposable f17474k;

        /* renamed from: l */
        volatile boolean f17475l;

        /* renamed from: m */
        volatile boolean f17476m;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver.class */
        public static final class SwitchMapMaybeObserver<R> extends AtomicReference<Disposable> implements MaybeObserver<R> {
            private static final long serialVersionUID = 8042919737683345351L;

            /* renamed from: f */
            final SwitchMapMaybeMainObserver<?, R> f17477f;

            /* renamed from: g */
            volatile R f17478g;

            SwitchMapMaybeObserver(SwitchMapMaybeMainObserver<?, R> switchMapMaybeMainObserver) {
                this.f17477f = switchMapMaybeMainObserver;
            }

            /* renamed from: a */
            void m3921a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                this.f17477f.m3923c(this);
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                this.f17477f.m3922d(this, th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(R r) {
                this.f17478g = r;
                this.f17477f.m3924b();
            }
        }

        SwitchMapMaybeMainObserver(Observer<? super R> observer, Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
            this.f17469f = observer;
            this.f17470g = function;
            this.f17471h = z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        void m3925a() {
            SwitchMapMaybeObserver<Object> switchMapMaybeObserver = (SwitchMapMaybeObserver) this.f17473j.getAndSet(f17468n);
            if (switchMapMaybeObserver != null && switchMapMaybeObserver != f17468n) {
                switchMapMaybeObserver.m3921a();
            }
        }

        /* renamed from: b */
        void m3924b() {
            if (getAndIncrement() == 0) {
                Observer<? super R> observer = this.f17469f;
                AtomicThrowable atomicThrowable = this.f17472i;
                AtomicReference<SwitchMapMaybeObserver<R>> atomicReference = this.f17473j;
                int i = 1;
                while (!this.f17476m) {
                    if (atomicThrowable.get() == null || this.f17471h) {
                        boolean z = this.f17475l;
                        SwitchMapMaybeObserver<R> switchMapMaybeObserver = atomicReference.get();
                        boolean z2 = switchMapMaybeObserver == null;
                        if (z && z2) {
                            Throwable b = atomicThrowable.m3455b();
                            if (b != null) {
                                observer.onError(b);
                                return;
                            } else {
                                observer.onComplete();
                                return;
                            }
                        } else if (z2 || switchMapMaybeObserver.f17478g == null) {
                            int addAndGet = addAndGet(-i);
                            i = addAndGet;
                            if (addAndGet == 0) {
                                return;
                            }
                        } else {
                            atomicReference.compareAndSet(switchMapMaybeObserver, null);
                            observer.onNext((R) switchMapMaybeObserver.f17478g);
                        }
                    } else {
                        observer.onError(atomicThrowable.m3455b());
                        return;
                    }
                }
            }
        }

        /* renamed from: c */
        void m3923c(SwitchMapMaybeObserver<R> switchMapMaybeObserver) {
            if (this.f17473j.compareAndSet(switchMapMaybeObserver, null)) {
                m3924b();
            }
        }

        /* renamed from: d */
        void m3922d(SwitchMapMaybeObserver<R> switchMapMaybeObserver, Throwable th) {
            if (!this.f17473j.compareAndSet(switchMapMaybeObserver, null) || !this.f17472i.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            if (!this.f17471h) {
                this.f17474k.dispose();
                m3925a();
            }
            m3924b();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17476m = true;
            this.f17474k.dispose();
            m3925a();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17476m;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17475l = true;
            m3924b();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17472i.m3456a(th)) {
                if (!this.f17471h) {
                    m3925a();
                }
                this.f17475l = true;
                m3924b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.Observer
        public void onNext(T t) {
            SwitchMapMaybeObserver<R> switchMapMaybeObserver;
            SwitchMapMaybeObserver<R> switchMapMaybeObserver2 = this.f17473j.get();
            if (switchMapMaybeObserver2 != null) {
                switchMapMaybeObserver2.m3921a();
            }
            try {
                Object apply = this.f17470g.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null MaybeSource");
                MaybeSource maybeSource = (MaybeSource) apply;
                SwitchMapMaybeObserver<R> switchMapMaybeObserver3 = new SwitchMapMaybeObserver<>(this);
                do {
                    switchMapMaybeObserver = this.f17473j.get();
                    if (switchMapMaybeObserver == f17468n) {
                        return;
                    }
                } while (!this.f17473j.compareAndSet(switchMapMaybeObserver, switchMapMaybeObserver3));
                maybeSource.mo4485b(switchMapMaybeObserver3);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17474k.dispose();
                this.f17473j.getAndSet(f17468n);
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17474k, disposable)) {
                this.f17474k = disposable;
                this.f17469f.onSubscribe(this);
            }
        }
    }

    public ObservableSwitchMapMaybe(Observable<T> observable, Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
        this.f17465f = observable;
        this.f17466g = function;
        this.f17467h = z;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super R> observer) {
        if (!ScalarXMapZHelper.m3915b(this.f17465f, this.f17466g, observer)) {
            this.f17465f.subscribe(new SwitchMapMaybeMainObserver(observer, this.f17466g, this.f17467h));
        }
    }
}
