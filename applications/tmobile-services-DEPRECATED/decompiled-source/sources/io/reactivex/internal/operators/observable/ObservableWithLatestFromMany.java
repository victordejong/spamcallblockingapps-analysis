package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.HalfSerializer;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWithLatestFromMany.class */
public final class ObservableWithLatestFromMany<T, R> extends AbstractObservableWithUpstream<T, R> {
    @Nullable

    /* renamed from: g */
    final ObservableSource<?>[] f18756g;
    @Nullable

    /* renamed from: h */
    final Iterable<? extends ObservableSource<?>> f18757h;
    @NonNull

    /* renamed from: i */
    final Function<? super Object[], R> f18758i;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWithLatestFromMany$SingletonArrayFunc.class */
    final class SingletonArrayFunc implements Function<T, R> {
        SingletonArrayFunc() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // io.reactivex.functions.Function
        public R apply(T t) throws Exception {
            R apply = ObservableWithLatestFromMany.this.f18758i.apply(new Object[]{t});
            ObjectHelper.m4363e(apply, "The combiner returned a null value");
            return apply;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWithLatestFromMany$WithLatestFromObserver.class */
    static final class WithLatestFromObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 1577321883966341961L;

        /* renamed from: f */
        final Observer<? super R> f18760f;

        /* renamed from: g */
        final Function<? super Object[], R> f18761g;

        /* renamed from: h */
        final WithLatestInnerObserver[] f18762h;

        /* renamed from: i */
        final AtomicReferenceArray<Object> f18763i;

        /* renamed from: j */
        final AtomicReference<Disposable> f18764j;

        /* renamed from: k */
        final AtomicThrowable f18765k;

        /* renamed from: l */
        volatile boolean f18766l;

        WithLatestFromObserver(Observer<? super R> observer, Function<? super Object[], R> function, int i) {
            this.f18760f = observer;
            this.f18761g = function;
            WithLatestInnerObserver[] withLatestInnerObserverArr = new WithLatestInnerObserver[i];
            for (int i2 = 0; i2 < i; i2++) {
                withLatestInnerObserverArr[i2] = new WithLatestInnerObserver(this, i2);
            }
            this.f18762h = withLatestInnerObserverArr;
            this.f18763i = new AtomicReferenceArray<>(i);
            this.f18764j = new AtomicReference<>();
            this.f18765k = new AtomicThrowable();
        }

        /* renamed from: a */
        void m3638a(int i) {
            WithLatestInnerObserver[] withLatestInnerObserverArr = this.f18762h;
            for (int i2 = 0; i2 < withLatestInnerObserverArr.length; i2++) {
                if (i2 != i) {
                    withLatestInnerObserverArr[i2].m3633a();
                }
            }
        }

        /* renamed from: b */
        void m3637b(int i, boolean z) {
            if (!z) {
                this.f18766l = true;
                m3638a(i);
                HalfSerializer.m3433a(this.f18760f, this, this.f18765k);
            }
        }

        /* renamed from: c */
        void m3636c(int i, Throwable th) {
            this.f18766l = true;
            DisposableHelper.dispose(this.f18764j);
            m3638a(i);
            HalfSerializer.m3431c(this.f18760f, th, this, this.f18765k);
        }

        /* renamed from: d */
        void m3635d(int i, Object obj) {
            this.f18763i.set(i, obj);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this.f18764j);
            for (WithLatestInnerObserver withLatestInnerObserver : this.f18762h) {
                withLatestInnerObserver.m3633a();
            }
        }

        /* renamed from: e */
        void m3634e(ObservableSource<?>[] observableSourceArr, int i) {
            WithLatestInnerObserver[] withLatestInnerObserverArr = this.f18762h;
            AtomicReference<Disposable> atomicReference = this.f18764j;
            for (int i2 = 0; i2 < i && !DisposableHelper.isDisposed(atomicReference.get()) && !this.f18766l; i2++) {
                observableSourceArr[i2].subscribe(withLatestInnerObserverArr[i2]);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f18764j.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f18766l) {
                this.f18766l = true;
                m3638a(-1);
                HalfSerializer.m3433a(this.f18760f, this, this.f18765k);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18766l) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18766l = true;
            m3638a(-1);
            HalfSerializer.m3431c(this.f18760f, th, this, this.f18765k);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f18766l) {
                AtomicReferenceArray<Object> atomicReferenceArray = this.f18763i;
                int length = atomicReferenceArray.length();
                Object[] objArr = new Object[length + 1];
                int i = 0;
                objArr[0] = t;
                while (i < length) {
                    Object obj = atomicReferenceArray.get(i);
                    if (obj != null) {
                        i++;
                        objArr[i] = obj;
                    } else {
                        return;
                    }
                }
                try {
                    R apply = this.f18761g.apply(objArr);
                    ObjectHelper.m4363e(apply, "combiner returned a null value");
                    HalfSerializer.m3429e(this.f18760f, apply, this, this.f18765k);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f18764j, disposable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWithLatestFromMany$WithLatestInnerObserver.class */
    public static final class WithLatestInnerObserver extends AtomicReference<Disposable> implements Observer<Object> {
        private static final long serialVersionUID = 3256684027868224024L;

        /* renamed from: f */
        final WithLatestFromObserver<?, ?> f18767f;

        /* renamed from: g */
        final int f18768g;

        /* renamed from: h */
        boolean f18769h;

        WithLatestInnerObserver(WithLatestFromObserver<?, ?> withLatestFromObserver, int i) {
            this.f18767f = withLatestFromObserver;
            this.f18768g = i;
        }

        /* renamed from: a */
        public void m3633a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18767f.m3637b(this.f18768g, this.f18769h);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18767f.m3636c(this.f18768g, th);
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
            if (!this.f18769h) {
                this.f18769h = true;
            }
            this.f18767f.m3635d(this.f18768g, obj);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }
    }

    public ObservableWithLatestFromMany(@NonNull ObservableSource<T> observableSource, @NonNull Iterable<? extends ObservableSource<?>> iterable, @NonNull Function<? super Object[], R> function) {
        super(observableSource);
        this.f18756g = null;
        this.f18757h = iterable;
        this.f18758i = function;
    }

    public ObservableWithLatestFromMany(@NonNull ObservableSource<T> observableSource, @NonNull ObservableSource<?>[] observableSourceArr, @NonNull Function<? super Object[], R> function) {
        super(observableSource);
        this.f18756g = observableSourceArr;
        this.f18757h = null;
        this.f18758i = function;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super R> observer) {
        int i;
        ObservableSource<?>[] observableSourceArr = this.f18756g;
        if (observableSourceArr == null) {
            ObservableSource<?>[] observableSourceArr2 = new ObservableSource[8];
            try {
                Iterator<? extends ObservableSource<?>> it = this.f18757h.iterator();
                int i2 = 0;
                while (true) {
                    observableSourceArr = observableSourceArr2;
                    i = i2;
                    if (!it.hasNext()) {
                        break;
                    }
                    ObservableSource<?> observableSource = (ObservableSource) it.next();
                    ObservableSource<?>[] observableSourceArr3 = observableSourceArr2;
                    if (i2 == observableSourceArr2.length) {
                        observableSourceArr3 = (ObservableSource[]) Arrays.copyOf(observableSourceArr2, (i2 >> 1) + i2);
                    }
                    observableSourceArr3[i2] = observableSource;
                    i2++;
                    observableSourceArr2 = observableSourceArr3;
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                EmptyDisposable.error(th, observer);
                return;
            }
        } else {
            i = observableSourceArr.length;
        }
        if (i == 0) {
            new ObservableMap(this.f17497f, new SingletonArrayFunc()).subscribeActual(observer);
            return;
        }
        WithLatestFromObserver withLatestFromObserver = new WithLatestFromObserver(observer, this.f18758i, i);
        observer.onSubscribe(withLatestFromObserver);
        withLatestFromObserver.m3634e(observableSourceArr, i);
        this.f17497f.subscribe(withLatestFromObserver);
    }
}
