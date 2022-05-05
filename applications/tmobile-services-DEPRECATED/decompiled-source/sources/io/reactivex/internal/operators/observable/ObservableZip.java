package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableZip.class */
public final class ObservableZip<T, R> extends Observable<R> {

    /* renamed from: f */
    final ObservableSource<? extends T>[] f18770f;

    /* renamed from: g */
    final Iterable<? extends ObservableSource<? extends T>> f18771g;

    /* renamed from: h */
    final Function<? super Object[], ? extends R> f18772h;

    /* renamed from: i */
    final int f18773i;

    /* renamed from: j */
    final boolean f18774j;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator.class */
    static final class ZipCoordinator<T, R> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 2983708048395377667L;

        /* renamed from: f */
        final Observer<? super R> f18775f;

        /* renamed from: g */
        final Function<? super Object[], ? extends R> f18776g;

        /* renamed from: h */
        final ZipObserver<T, R>[] f18777h;

        /* renamed from: i */
        final T[] f18778i;

        /* renamed from: j */
        final boolean f18779j;

        /* renamed from: k */
        volatile boolean f18780k;

        ZipCoordinator(Observer<? super R> observer, Function<? super Object[], ? extends R> function, int i, boolean z) {
            this.f18775f = observer;
            this.f18776g = function;
            this.f18777h = new ZipObserver[i];
            this.f18778i = (T[]) new Object[i];
            this.f18779j = z;
        }

        /* renamed from: a */
        void m3632a() {
            m3629d();
            m3631b();
        }

        /* renamed from: b */
        void m3631b() {
            for (ZipObserver<T, R> zipObserver : this.f18777h) {
                zipObserver.m3626a();
            }
        }

        /* renamed from: c */
        boolean m3630c(boolean z, boolean z2, Observer<? super R> observer, boolean z3, ZipObserver<?, ?> zipObserver) {
            if (this.f18780k) {
                m3632a();
                return true;
            } else if (!z) {
                return false;
            } else {
                if (!z3) {
                    Throwable th = zipObserver.f18784i;
                    if (th != null) {
                        this.f18780k = true;
                        m3632a();
                        observer.onError(th);
                        return true;
                    } else if (!z2) {
                        return false;
                    } else {
                        this.f18780k = true;
                        m3632a();
                        observer.onComplete();
                        return true;
                    }
                } else if (!z2) {
                    return false;
                } else {
                    Throwable th2 = zipObserver.f18784i;
                    this.f18780k = true;
                    m3632a();
                    if (th2 != null) {
                        observer.onError(th2);
                        return true;
                    }
                    observer.onComplete();
                    return true;
                }
            }
        }

        /* renamed from: d */
        void m3629d() {
            for (ZipObserver<T, R> zipObserver : this.f18777h) {
                zipObserver.f18782g.clear();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f18780k) {
                this.f18780k = true;
                m3631b();
                if (getAndIncrement() == 0) {
                    m3629d();
                }
            }
        }

        /* renamed from: e */
        public void m3628e() {
            if (getAndIncrement() == 0) {
                ZipObserver<T, R>[] zipObserverArr = this.f18777h;
                Observer<? super R> observer = this.f18775f;
                T[] tArr = this.f18778i;
                boolean z = this.f18779j;
                int i = 1;
                while (true) {
                    int i2 = 0;
                    int i3 = 0;
                    for (ZipObserver<T, R> zipObserver : zipObserverArr) {
                        if (tArr[i3] == null) {
                            boolean z2 = zipObserver.f18783h;
                            T poll = zipObserver.f18782g.poll();
                            boolean z3 = poll == null;
                            if (m3630c(z2, z3, observer, z, zipObserver)) {
                                return;
                            }
                            if (!z3) {
                                tArr[i3] = poll;
                                i2 = i2;
                            } else {
                                i2++;
                            }
                        } else {
                            i2 = i2;
                            if (zipObserver.f18783h) {
                                i2 = i2;
                                if (!z) {
                                    Throwable th = zipObserver.f18784i;
                                    i2 = i2;
                                    if (th != null) {
                                        this.f18780k = true;
                                        m3632a();
                                        observer.onError(th);
                                        return;
                                    }
                                } else {
                                    continue;
                                }
                            } else {
                                continue;
                            }
                        }
                        i3++;
                    }
                    if (i2 != 0) {
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        try {
                            Object obj = (Object) this.f18776g.apply(tArr.clone());
                            ObjectHelper.m4363e(obj, "The zipper returned a null value");
                            observer.onNext(obj);
                            Arrays.fill(tArr, (Object) null);
                        } catch (Throwable th2) {
                            Exceptions.m4428b(th2);
                            m3632a();
                            observer.onError(th2);
                            return;
                        }
                    }
                }
            }
        }

        /* renamed from: f */
        public void m3627f(ObservableSource<? extends T>[] observableSourceArr, int i) {
            ZipObserver<T, R>[] zipObserverArr = this.f18777h;
            int length = zipObserverArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                zipObserverArr[i2] = new ZipObserver<>(this, i);
            }
            lazySet(0);
            this.f18775f.onSubscribe(this);
            for (int i3 = 0; i3 < length && !this.f18780k; i3++) {
                observableSourceArr[i3].subscribe(zipObserverArr[i3]);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18780k;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableZip$ZipObserver.class */
    public static final class ZipObserver<T, R> implements Observer<T> {

        /* renamed from: f */
        final ZipCoordinator<T, R> f18781f;

        /* renamed from: g */
        final SpscLinkedArrayQueue<T> f18782g;

        /* renamed from: h */
        volatile boolean f18783h;

        /* renamed from: i */
        Throwable f18784i;

        /* renamed from: j */
        final AtomicReference<Disposable> f18785j = new AtomicReference<>();

        ZipObserver(ZipCoordinator<T, R> zipCoordinator, int i) {
            this.f18781f = zipCoordinator;
            this.f18782g = new SpscLinkedArrayQueue<>(i);
        }

        /* renamed from: a */
        public void m3626a() {
            DisposableHelper.dispose(this.f18785j);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18783h = true;
            this.f18781f.m3628e();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18784i = th;
            this.f18783h = true;
            this.f18781f.m3628e();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18782g.offer(t);
            this.f18781f.m3628e();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f18785j, disposable);
        }
    }

    public ObservableZip(ObservableSource<? extends T>[] observableSourceArr, Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function, int i, boolean z) {
        this.f18770f = observableSourceArr;
        this.f18771g = iterable;
        this.f18772h = function;
        this.f18773i = i;
        this.f18774j = z;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super R> observer) {
        int i;
        ObservableSource<? extends T>[] observableSourceArr = this.f18770f;
        if (observableSourceArr == null) {
            ObservableSource<? extends T>[] observableSourceArr2 = new ObservableSource[8];
            Iterator<? extends ObservableSource<? extends T>> it = this.f18771g.iterator();
            int i2 = 0;
            while (true) {
                observableSourceArr = observableSourceArr2;
                i = i2;
                if (!it.hasNext()) {
                    break;
                }
                ObservableSource<? extends T> observableSource = (ObservableSource) it.next();
                ObservableSource<? extends T>[] observableSourceArr3 = observableSourceArr2;
                if (i2 == observableSourceArr2.length) {
                    observableSourceArr3 = new ObservableSource[(i2 >> 2) + i2];
                    System.arraycopy(observableSourceArr2, 0, observableSourceArr3, 0, i2);
                }
                observableSourceArr3[i2] = observableSource;
                i2++;
                observableSourceArr2 = observableSourceArr3;
            }
        } else {
            i = observableSourceArr.length;
        }
        if (i == 0) {
            EmptyDisposable.complete(observer);
        } else {
            new ZipCoordinator(observer, this.f18772h, i, this.f18774j).m3627f(observableSourceArr, this.f18773i);
        }
    }
}
