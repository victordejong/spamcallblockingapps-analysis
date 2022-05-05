package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiPredicate;
import io.reactivex.internal.disposables.ArrayCompositeDisposable;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSequenceEqual.class */
public final class ObservableSequenceEqual<T> extends Observable<Boolean> {

    /* renamed from: f */
    final ObservableSource<? extends T> f18379f;

    /* renamed from: g */
    final ObservableSource<? extends T> f18380g;

    /* renamed from: h */
    final BiPredicate<? super T, ? super T> f18381h;

    /* renamed from: i */
    final int f18382i;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator.class */
    static final class EqualCoordinator<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = -6178010334400373240L;

        /* renamed from: f */
        final Observer<? super Boolean> f18383f;

        /* renamed from: g */
        final BiPredicate<? super T, ? super T> f18384g;

        /* renamed from: h */
        final ArrayCompositeDisposable f18385h = new ArrayCompositeDisposable(2);

        /* renamed from: i */
        final ObservableSource<? extends T> f18386i;

        /* renamed from: j */
        final ObservableSource<? extends T> f18387j;

        /* renamed from: k */
        final EqualObserver<T>[] f18388k;

        /* renamed from: l */
        volatile boolean f18389l;

        /* renamed from: m */
        T f18390m;

        /* renamed from: n */
        T f18391n;

        EqualCoordinator(Observer<? super Boolean> observer, int i, ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, BiPredicate<? super T, ? super T> biPredicate) {
            this.f18383f = observer;
            this.f18386i = observableSource;
            this.f18387j = observableSource2;
            this.f18384g = biPredicate;
            this.f18388k = r0;
            EqualObserver<T>[] equalObserverArr = {new EqualObserver<>(this, 0, i), new EqualObserver<>(this, 1, i)};
        }

        /* renamed from: a */
        void m3689a(SpscLinkedArrayQueue<T> spscLinkedArrayQueue, SpscLinkedArrayQueue<T> spscLinkedArrayQueue2) {
            this.f18389l = true;
            spscLinkedArrayQueue.clear();
            spscLinkedArrayQueue2.clear();
        }

        /* renamed from: b */
        void m3688b() {
            Throwable th;
            Throwable th2;
            if (getAndIncrement() == 0) {
                EqualObserver<T>[] equalObserverArr = this.f18388k;
                EqualObserver<T> equalObserver = equalObserverArr[0];
                SpscLinkedArrayQueue<T> spscLinkedArrayQueue = equalObserver.f18393g;
                EqualObserver<T> equalObserver2 = equalObserverArr[1];
                SpscLinkedArrayQueue<T> spscLinkedArrayQueue2 = equalObserver2.f18393g;
                int i = 1;
                while (!this.f18389l) {
                    boolean z = equalObserver.f18395i;
                    if (!z || (th2 = equalObserver.f18396j) == null) {
                        boolean z2 = equalObserver2.f18395i;
                        if (!z2 || (th = equalObserver2.f18396j) == null) {
                            if (this.f18390m == null) {
                                this.f18390m = spscLinkedArrayQueue.poll();
                            }
                            boolean z3 = this.f18390m == null;
                            if (this.f18391n == null) {
                                this.f18391n = spscLinkedArrayQueue2.poll();
                            }
                            boolean z4 = this.f18391n == null;
                            if (z && z2 && z3 && z4) {
                                this.f18383f.onNext(Boolean.TRUE);
                                this.f18383f.onComplete();
                                return;
                            } else if (!z || !z2 || z3 == z4) {
                                if (!z3 && !z4) {
                                    try {
                                        if (!this.f18384g.mo4360a((T) this.f18390m, (T) this.f18391n)) {
                                            m3689a(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                                            this.f18383f.onNext(Boolean.FALSE);
                                            this.f18383f.onComplete();
                                            return;
                                        }
                                        this.f18390m = null;
                                        this.f18391n = null;
                                    } catch (Throwable th3) {
                                        Exceptions.m4428b(th3);
                                        m3689a(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                                        this.f18383f.onError(th3);
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
                                m3689a(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                                this.f18383f.onNext(Boolean.FALSE);
                                this.f18383f.onComplete();
                                return;
                            }
                        } else {
                            m3689a(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                            this.f18383f.onError(th);
                            return;
                        }
                    } else {
                        m3689a(spscLinkedArrayQueue, spscLinkedArrayQueue2);
                        this.f18383f.onError(th2);
                        return;
                    }
                }
                spscLinkedArrayQueue.clear();
                spscLinkedArrayQueue2.clear();
            }
        }

        /* renamed from: c */
        boolean m3687c(Disposable disposable, int i) {
            return this.f18385h.m4427a(i, disposable);
        }

        /* renamed from: d */
        void m3686d() {
            EqualObserver<T>[] equalObserverArr = this.f18388k;
            this.f18386i.subscribe(equalObserverArr[0]);
            this.f18387j.subscribe(equalObserverArr[1]);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f18389l) {
                this.f18389l = true;
                this.f18385h.dispose();
                if (getAndIncrement() == 0) {
                    EqualObserver<T>[] equalObserverArr = this.f18388k;
                    equalObserverArr[0].f18393g.clear();
                    equalObserverArr[1].f18393g.clear();
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18389l;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver.class */
    public static final class EqualObserver<T> implements Observer<T> {

        /* renamed from: f */
        final EqualCoordinator<T> f18392f;

        /* renamed from: g */
        final SpscLinkedArrayQueue<T> f18393g;

        /* renamed from: h */
        final int f18394h;

        /* renamed from: i */
        volatile boolean f18395i;

        /* renamed from: j */
        Throwable f18396j;

        EqualObserver(EqualCoordinator<T> equalCoordinator, int i, int i2) {
            this.f18392f = equalCoordinator;
            this.f18394h = i;
            this.f18393g = new SpscLinkedArrayQueue<>(i2);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18395i = true;
            this.f18392f.m3688b();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18396j = th;
            this.f18395i = true;
            this.f18392f.m3688b();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18393g.offer(t);
            this.f18392f.m3688b();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f18392f.m3687c(disposable, this.f18394h);
        }
    }

    public ObservableSequenceEqual(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, BiPredicate<? super T, ? super T> biPredicate, int i) {
        this.f18379f = observableSource;
        this.f18380g = observableSource2;
        this.f18381h = biPredicate;
        this.f18382i = i;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super Boolean> observer) {
        EqualCoordinator equalCoordinator = new EqualCoordinator(observer, this.f18382i, this.f18379f, this.f18380g, this.f18381h);
        observer.onSubscribe(equalCoordinator);
        equalCoordinator.m3686d();
    }
}
