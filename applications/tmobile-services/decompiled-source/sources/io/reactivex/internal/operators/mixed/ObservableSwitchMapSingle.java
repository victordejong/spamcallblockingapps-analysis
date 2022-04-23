package io.reactivex.internal.operators.mixed;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableSwitchMapSingle.class */
public final class ObservableSwitchMapSingle<T, R> extends Observable<R> {

    /* renamed from: f */
    final Observable<T> f17479f;

    /* renamed from: g */
    final Function<? super T, ? extends SingleSource<? extends R>> f17480g;

    /* renamed from: h */
    final boolean f17481h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver.class */
    static final class SwitchMapSingleMainObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable {

        /* renamed from: n */
        static final SwitchMapSingleObserver<Object> f17482n = new SwitchMapSingleObserver<>(null);
        private static final long serialVersionUID = -5402190102429853762L;

        /* renamed from: f */
        final Observer<? super R> f17483f;

        /* renamed from: g */
        final Function<? super T, ? extends SingleSource<? extends R>> f17484g;

        /* renamed from: h */
        final boolean f17485h;

        /* renamed from: i */
        final AtomicThrowable f17486i = new AtomicThrowable();

        /* renamed from: j */
        final AtomicReference<SwitchMapSingleObserver<R>> f17487j = new AtomicReference<>();

        /* renamed from: k */
        Disposable f17488k;

        /* renamed from: l */
        volatile boolean f17489l;

        /* renamed from: m */
        volatile boolean f17490m;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver$SwitchMapSingleObserver.class */
        public static final class SwitchMapSingleObserver<R> extends AtomicReference<Disposable> implements SingleObserver<R> {
            private static final long serialVersionUID = 8042919737683345351L;

            /* renamed from: f */
            final SwitchMapSingleMainObserver<?, R> f17491f;

            /* renamed from: g */
            volatile R f17492g;

            SwitchMapSingleObserver(SwitchMapSingleMainObserver<?, R> switchMapSingleMainObserver) {
                this.f17491f = switchMapSingleMainObserver;
            }

            /* renamed from: a */
            void m3917a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                this.f17491f.m3918c(this, th);
            }

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(R r) {
                this.f17492g = r;
                this.f17491f.m3919b();
            }
        }

        SwitchMapSingleMainObserver(Observer<? super R> observer, Function<? super T, ? extends SingleSource<? extends R>> function, boolean z) {
            this.f17483f = observer;
            this.f17484g = function;
            this.f17485h = z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        void m3920a() {
            SwitchMapSingleObserver<Object> switchMapSingleObserver = (SwitchMapSingleObserver) this.f17487j.getAndSet(f17482n);
            if (switchMapSingleObserver != null && switchMapSingleObserver != f17482n) {
                switchMapSingleObserver.m3917a();
            }
        }

        /* renamed from: b */
        void m3919b() {
            if (getAndIncrement() == 0) {
                Observer<? super R> observer = this.f17483f;
                AtomicThrowable atomicThrowable = this.f17486i;
                AtomicReference<SwitchMapSingleObserver<R>> atomicReference = this.f17487j;
                int i = 1;
                while (!this.f17490m) {
                    if (atomicThrowable.get() == null || this.f17485h) {
                        boolean z = this.f17489l;
                        SwitchMapSingleObserver<R> switchMapSingleObserver = atomicReference.get();
                        boolean z2 = switchMapSingleObserver == null;
                        if (z && z2) {
                            Throwable b = atomicThrowable.m3455b();
                            if (b != null) {
                                observer.onError(b);
                                return;
                            } else {
                                observer.onComplete();
                                return;
                            }
                        } else if (z2 || switchMapSingleObserver.f17492g == null) {
                            int addAndGet = addAndGet(-i);
                            i = addAndGet;
                            if (addAndGet == 0) {
                                return;
                            }
                        } else {
                            atomicReference.compareAndSet(switchMapSingleObserver, null);
                            observer.onNext((R) switchMapSingleObserver.f17492g);
                        }
                    } else {
                        observer.onError(atomicThrowable.m3455b());
                        return;
                    }
                }
            }
        }

        /* renamed from: c */
        void m3918c(SwitchMapSingleObserver<R> switchMapSingleObserver, Throwable th) {
            if (!this.f17487j.compareAndSet(switchMapSingleObserver, null) || !this.f17486i.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            if (!this.f17485h) {
                this.f17488k.dispose();
                m3920a();
            }
            m3919b();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17490m = true;
            this.f17488k.dispose();
            m3920a();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17490m;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17489l = true;
            m3919b();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17486i.m3456a(th)) {
                if (!this.f17485h) {
                    m3920a();
                }
                this.f17489l = true;
                m3919b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.Observer
        public void onNext(T t) {
            SwitchMapSingleObserver<R> switchMapSingleObserver;
            SwitchMapSingleObserver<R> switchMapSingleObserver2 = this.f17487j.get();
            if (switchMapSingleObserver2 != null) {
                switchMapSingleObserver2.m3917a();
            }
            try {
                Object apply = this.f17484g.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null SingleSource");
                SingleSource singleSource = (SingleSource) apply;
                SwitchMapSingleObserver<R> switchMapSingleObserver3 = new SwitchMapSingleObserver<>(this);
                do {
                    switchMapSingleObserver = this.f17487j.get();
                    if (switchMapSingleObserver == f17482n) {
                        return;
                    }
                } while (!this.f17487j.compareAndSet(switchMapSingleObserver, switchMapSingleObserver3));
                singleSource.mo4457b(switchMapSingleObserver3);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17488k.dispose();
                this.f17487j.getAndSet(f17482n);
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17488k, disposable)) {
                this.f17488k = disposable;
                this.f17483f.onSubscribe(this);
            }
        }
    }

    public ObservableSwitchMapSingle(Observable<T> observable, Function<? super T, ? extends SingleSource<? extends R>> function, boolean z) {
        this.f17479f = observable;
        this.f17480g = function;
        this.f17481h = z;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super R> observer) {
        if (!ScalarXMapZHelper.m3914c(this.f17479f, this.f17480g, observer)) {
            this.f17479f.subscribe(new SwitchMapSingleMainObserver(observer, this.f17480g, this.f17481h));
        }
    }
}
