package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiPredicate;
import io.reactivex.internal.disposables.ArrayCompositeDisposable;
import io.reactivex.internal.fuseable.FuseToObservable;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSequenceEqualSingle.class */
public final class ObservableSequenceEqualSingle<T> extends Single<Boolean> implements FuseToObservable<Boolean> {

    /* renamed from: f */
    final ObservableSource<? extends T> f18397f;

    /* renamed from: g */
    final ObservableSource<? extends T> f18398g;

    /* renamed from: h */
    final BiPredicate<? super T, ? super T> f18399h;

    /* renamed from: i */
    final int f18400i;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator.class */
    static final class EqualCoordinator<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = -6178010334400373240L;

        /* renamed from: f */
        final SingleObserver<? super Boolean> f18401f;

        /* renamed from: g */
        final BiPredicate<? super T, ? super T> f18402g;

        /* renamed from: h */
        final ArrayCompositeDisposable f18403h = new ArrayCompositeDisposable(2);

        /* renamed from: i */
        final ObservableSource<? extends T> f18404i;

        /* renamed from: j */
        final ObservableSource<? extends T> f18405j;

        /* renamed from: k */
        final EqualObserver<T>[] f18406k;

        /* renamed from: l */
        volatile boolean f18407l;

        /* renamed from: m */
        T f18408m;

        /* renamed from: n */
        T f18409n;

        EqualCoordinator(SingleObserver<? super Boolean> singleObserver, int i, ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, BiPredicate<? super T, ? super T> biPredicate) {
            this.f18401f = singleObserver;
            this.f18404i = observableSource;
            this.f18405j = observableSource2;
            this.f18402g = biPredicate;
            this.f18406k = r0;
            EqualObserver<T>[] equalObserverArr = {new EqualObserver<>(this, 0, i), new EqualObserver<>(this, 1, i)};
        }

        /* renamed from: a */
        void m3685a(SpscLinkedArrayQueue<T> spscLinkedArrayQueue, SpscLinkedArrayQueue<T> spscLinkedArrayQueue2) {
            this.f18407l = true;
            spscLinkedArrayQueue.clear();
            spscLinkedArrayQueue2.clear();
        }

        /* renamed from: b */
        void m3684b() {
            Throwable th;
            Throwable th2;
            if (getAndIncrement() == 0) {
                EqualObserver<T>[] equalObserverArr = this.f18406k;
                EqualObserver<T> equalObserver = equalObserverArr[0];
                SpscLinkedArrayQueue<T> spscLinkedArrayQueue = equalObserver.f18411g;
                EqualObserver<T> equalObserver2 = equalObserverArr[1];
                SpscLinkedArrayQueue<T> spscLinkedArrayQueue2 = equalObserver2.f18411g;
                int i = 1;
                while (!this.f18407l) {
                    boolean z = equalObserver.f18413i;
                    if (!z || (th2 = equalObserver.f18414j) == null) {
                        boolean z2 = equalObserver2.f18413i;
                        if (!z2 || (th = equalObserver2.f18414j) == null) {
                            if (this.f18408m == null) {
                                this.f18408m = spscLinkedArrayQueue.poll();
                            }
                            boolean z3 = this.f18408m == null;
                            if (this.f18409n == null) {
                                this.f18409n = spscLinkedArrayQueue2.poll();
                            }
                            boolean z4 = this.f18409n == null;
                            if (z && z2 && z3 && z4) {
                                this.f18401f.onSuccess(Boolean.TRUE);
                                return;
                            } else if (!z || !z2 || z3 == z4) {
                                if (!z3 && !z4) {
                                    try {
                                        if (!this.f18402g.mo4360a((T) this.f18408m, (T) this.f18409n)) {
                                            m3685a(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                                            this.f18401f.onSuccess(Boolean.FALSE);
                                            return;
                                        }
                                        this.f18408m = null;
                                        this.f18409n = null;
                                    } catch (Throwable th3) {
                                        Exceptions.m4428b(th3);
                                        m3685a(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                                        this.f18401f.onError(th3);
                                        return;
                                    }
                                }
                                if (z3 || z4) {
                                    int addAndGet = addAndGet(-i);
                                    i = addAndGet;
                                    if (addAndGet == 0) {
                                        return;
                                    }
                                }
                            } else {
                                m3685a(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                                this.f18401f.onSuccess(Boolean.FALSE);
                                return;
                            }
                        } else {
                            m3685a(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                            this.f18401f.onError(th);
                            return;
                        }
                    } else {
                        m3685a(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                        this.f18401f.onError(th2);
                        return;
                    }
                }
                spscLinkedArrayQueue.clear();
                spscLinkedArrayQueue2.clear();
            }
        }

        /* renamed from: c */
        boolean m3683c(Disposable disposable, int i) {
            return this.f18403h.m4427a(i, disposable);
        }

        /* renamed from: d */
        void m3682d() {
            EqualObserver<T>[] equalObserverArr = this.f18406k;
            this.f18404i.subscribe(equalObserverArr[0]);
            this.f18405j.subscribe(equalObserverArr[1]);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f18407l) {
                this.f18407l = true;
                this.f18403h.dispose();
                if (getAndIncrement() == 0) {
                    EqualObserver<T>[] equalObserverArr = this.f18406k;
                    equalObserverArr[0].f18411g.clear();
                    equalObserverArr[1].f18411g.clear();
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18407l;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver.class */
    public static final class EqualObserver<T> implements Observer<T> {

        /* renamed from: f */
        final EqualCoordinator<T> f18410f;

        /* renamed from: g */
        final SpscLinkedArrayQueue<T> f18411g;

        /* renamed from: h */
        final int f18412h;

        /* renamed from: i */
        volatile boolean f18413i;

        /* renamed from: j */
        Throwable f18414j;

        EqualObserver(EqualCoordinator<T> equalCoordinator, int i, int i2) {
            this.f18410f = equalCoordinator;
            this.f18412h = i;
            this.f18411g = new SpscLinkedArrayQueue<>(i2);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18413i = true;
            this.f18410f.m3684b();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18414j = th;
            this.f18413i = true;
            this.f18410f.m3684b();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18411g.offer(t);
            this.f18410f.m3684b();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f18410f.m3683c(disposable, this.f18412h);
        }
    }

    public ObservableSequenceEqualSingle(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, BiPredicate<? super T, ? super T> biPredicate, int i) {
        this.f18397f = observableSource;
        this.f18398g = observableSource2;
        this.f18399h = biPredicate;
        this.f18400i = i;
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    /* renamed from: a */
    public Observable<Boolean> mo3663a() {
        return RxJavaPlugins.m3360n(new ObservableSequenceEqual(this.f18397f, this.f18398g, this.f18399h, this.f18400i));
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    public void mo3189k(SingleObserver<? super Boolean> singleObserver) {
        EqualCoordinator equalCoordinator = new EqualCoordinator(singleObserver, this.f18400i, this.f18397f, this.f18398g, this.f18399h);
        singleObserver.onSubscribe(equalCoordinator);
        equalCoordinator.m3682d();
    }
}
