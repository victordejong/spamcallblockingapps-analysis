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
import io.reactivex.internal.util.AtomicThrowable;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCombineLatest.class */
public final class ObservableCombineLatest<T, R> extends Observable<R> {

    /* renamed from: f */
    final ObservableSource<? extends T>[] f17680f;

    /* renamed from: g */
    final Iterable<? extends ObservableSource<? extends T>> f17681g;

    /* renamed from: h */
    final Function<? super Object[], ? extends R> f17682h;

    /* renamed from: i */
    final int f17683i;

    /* renamed from: j */
    final boolean f17684j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver.class */
    public static final class CombinerObserver<T, R> extends AtomicReference<Disposable> implements Observer<T> {
        private static final long serialVersionUID = -4823716997131257941L;

        /* renamed from: f */
        final LatestCoordinator<T, R> f17685f;

        /* renamed from: g */
        final int f17686g;

        CombinerObserver(LatestCoordinator<T, R> latestCoordinator, int i) {
            this.f17685f = latestCoordinator;
            this.f17686g = i;
        }

        /* renamed from: a */
        public void m3880a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17685f.m3876d(this.f17686g);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f17685f.m3875e(this.f17686g, th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f17685f.m3874f(this.f17686g, t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator.class */
    static final class LatestCoordinator<T, R> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 8567835998786448817L;

        /* renamed from: f */
        final Observer<? super R> f17687f;

        /* renamed from: g */
        final Function<? super Object[], ? extends R> f17688g;

        /* renamed from: h */
        final CombinerObserver<T, R>[] f17689h;

        /* renamed from: i */
        Object[] f17690i;

        /* renamed from: j */
        final SpscLinkedArrayQueue<Object[]> f17691j;

        /* renamed from: k */
        final boolean f17692k;

        /* renamed from: l */
        volatile boolean f17693l;

        /* renamed from: m */
        volatile boolean f17694m;

        /* renamed from: n */
        final AtomicThrowable f17695n = new AtomicThrowable();

        /* renamed from: o */
        int f17696o;

        /* renamed from: p */
        int f17697p;

        LatestCoordinator(Observer<? super R> observer, Function<? super Object[], ? extends R> function, int i, int i2, boolean z) {
            this.f17687f = observer;
            this.f17688g = function;
            this.f17692k = z;
            this.f17690i = new Object[i];
            CombinerObserver<T, R>[] combinerObserverArr = new CombinerObserver[i];
            for (int i3 = 0; i3 < i; i3++) {
                combinerObserverArr[i3] = new CombinerObserver<>(this, i3);
            }
            this.f17689h = combinerObserverArr;
            this.f17691j = new SpscLinkedArrayQueue<>(i2);
        }

        /* renamed from: a */
        void m3879a() {
            for (CombinerObserver<T, R> combinerObserver : this.f17689h) {
                combinerObserver.m3880a();
            }
        }

        /* renamed from: b */
        void m3878b(SpscLinkedArrayQueue<?> spscLinkedArrayQueue) {
            synchronized (this) {
                this.f17690i = null;
            }
            spscLinkedArrayQueue.clear();
        }

        /* renamed from: c */
        void m3877c() {
            if (getAndIncrement() == 0) {
                SpscLinkedArrayQueue<Object[]> spscLinkedArrayQueue = this.f17691j;
                Observer<? super R> observer = this.f17687f;
                boolean z = this.f17692k;
                int i = 1;
                while (!this.f17693l) {
                    if (z || this.f17695n.get() == null) {
                        boolean z2 = this.f17694m;
                        Object[] poll = spscLinkedArrayQueue.poll();
                        boolean z3 = poll == null;
                        if (z2 && z3) {
                            m3878b(spscLinkedArrayQueue);
                            Throwable b = this.f17695n.m3455b();
                            if (b == null) {
                                observer.onComplete();
                                return;
                            } else {
                                observer.onError(b);
                                return;
                            }
                        } else if (z3) {
                            int addAndGet = addAndGet(-i);
                            i = addAndGet;
                            if (addAndGet == 0) {
                                return;
                            }
                        } else {
                            try {
                                Object obj = (Object) this.f17688g.apply(poll);
                                ObjectHelper.m4363e(obj, "The combiner returned a null value");
                                observer.onNext(obj);
                            } catch (Throwable th) {
                                Exceptions.m4428b(th);
                                this.f17695n.m3456a(th);
                                m3879a();
                                m3878b(spscLinkedArrayQueue);
                                observer.onError(this.f17695n.m3455b());
                                return;
                            }
                        }
                    } else {
                        m3879a();
                        m3878b(spscLinkedArrayQueue);
                        observer.onError(this.f17695n.m3455b());
                        return;
                    }
                }
                m3878b(spscLinkedArrayQueue);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
            if (r0 == r0.length) goto L_0x0031;
         */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m3876d(int r4) {
            /*
                r3 = this;
                r0 = r3
                monitor-enter(r0)
                r0 = r3
                java.lang.Object[] r0 = r0.f17690i     // Catch: all -> 0x0045
                r5 = r0
                r0 = r5
                if (r0 != 0) goto L_0x000e
                r0 = r3
                monitor-exit(r0)     // Catch: all -> 0x0045
                return
            L_0x000e:
                r0 = r5
                r1 = r4
                r0 = r0[r1]
                if (r0 != 0) goto L_0x0019
                r0 = 1
                r4 = r0
                goto L_0x001b
            L_0x0019:
                r0 = 0
                r4 = r0
            L_0x001b:
                r0 = r4
                if (r0 != 0) goto L_0x0031
                r0 = r3
                int r0 = r0.f17697p     // Catch: all -> 0x0045
                r1 = 1
                int r0 = r0 + r1
                r6 = r0
                r0 = r3
                r1 = r6
                r0.f17697p = r1     // Catch: all -> 0x0045
                r0 = r6
                r1 = r5
                int r1 = r1.length     // Catch: all -> 0x0045
                if (r0 != r1) goto L_0x0036
            L_0x0031:
                r0 = r3
                r1 = 1
                r0.f17694m = r1     // Catch: all -> 0x0045
            L_0x0036:
                r0 = r3
                monitor-exit(r0)     // Catch: all -> 0x0045
                r0 = r4
                if (r0 == 0) goto L_0x0040
                r0 = r3
                r0.m3879a()
            L_0x0040:
                r0 = r3
                r0.m3877c()
                return
            L_0x0045:
                r5 = move-exception
                r0 = r3
                monitor-exit(r0)     // Catch: all -> 0x0045
                r0 = r5
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableCombineLatest.LatestCoordinator.m3876d(int):void");
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f17693l) {
                this.f17693l = true;
                m3879a();
                if (getAndIncrement() == 0) {
                    m3878b(this.f17691j);
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0048, code lost:
            if (r0 == r0.length) goto L_0x004b;
         */
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m3875e(int r4, java.lang.Throwable r5) {
            /*
                r3 = this;
                r0 = r3
                io.reactivex.internal.util.AtomicThrowable r0 = r0.f17695n
                r1 = r5
                boolean r0 = r0.m3456a(r1)
                if (r0 == 0) goto L_0x006d
                r0 = r3
                boolean r0 = r0.f17692k
                r6 = r0
                r0 = 1
                r7 = r0
                r0 = r6
                if (r0 == 0) goto L_0x005d
                r0 = r3
                monitor-enter(r0)
                r0 = r3
                java.lang.Object[] r0 = r0.f17690i     // Catch: all -> 0x0058
                r5 = r0
                r0 = r5
                if (r0 != 0) goto L_0x0025
                r0 = r3
                monitor-exit(r0)     // Catch: all -> 0x0058
                return
            L_0x0025:
                r0 = r5
                r1 = r4
                r0 = r0[r1]
                if (r0 != 0) goto L_0x0030
                r0 = 1
                r4 = r0
                goto L_0x0032
            L_0x0030:
                r0 = 0
                r4 = r0
            L_0x0032:
                r0 = r4
                if (r0 != 0) goto L_0x004b
                r0 = r3
                int r0 = r0.f17697p     // Catch: all -> 0x0058
                r1 = 1
                int r0 = r0 + r1
                r7 = r0
                r0 = r3
                r1 = r7
                r0.f17697p = r1     // Catch: all -> 0x0058
                r0 = r7
                r1 = r5
                int r1 = r1.length     // Catch: all -> 0x0058
                if (r0 != r1) goto L_0x0050
            L_0x004b:
                r0 = r3
                r1 = 1
                r0.f17694m = r1     // Catch: all -> 0x0058
            L_0x0050:
                r0 = r3
                monitor-exit(r0)     // Catch: all -> 0x0058
                r0 = r4
                r7 = r0
                goto L_0x005d
            L_0x0058:
                r5 = move-exception
                r0 = r3
                monitor-exit(r0)     // Catch: all -> 0x0058
                r0 = r5
                throw r0
            L_0x005d:
                r0 = r7
                if (r0 == 0) goto L_0x0066
                r0 = r3
                r0.m3879a()
            L_0x0066:
                r0 = r3
                r0.m3877c()
                goto L_0x0071
            L_0x006d:
                r0 = r5
                io.reactivex.plugins.RxJavaPlugins.m3354t(r0)
            L_0x0071:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableCombineLatest.LatestCoordinator.m3875e(int, java.lang.Throwable):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: f */
        void m3874f(int i, T t) {
            boolean z;
            synchronized (this) {
                Object[] objArr = this.f17690i;
                if (objArr != null) {
                    Object obj = objArr[i];
                    int i2 = this.f17696o;
                    int i3 = i2;
                    if (obj == null) {
                        i3 = i2 + 1;
                        this.f17696o = i3;
                    }
                    objArr[i] = t;
                    if (i3 == objArr.length) {
                        this.f17691j.offer(objArr.clone());
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        m3877c();
                    }
                }
            }
        }

        /* renamed from: g */
        public void m3873g(ObservableSource<? extends T>[] observableSourceArr) {
            CombinerObserver<T, R>[] combinerObserverArr = this.f17689h;
            int length = combinerObserverArr.length;
            this.f17687f.onSubscribe(this);
            for (int i = 0; i < length && !this.f17694m && !this.f17693l; i++) {
                observableSourceArr[i].subscribe(combinerObserverArr[i]);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17693l;
        }
    }

    public ObservableCombineLatest(ObservableSource<? extends T>[] observableSourceArr, Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function, int i, boolean z) {
        this.f17680f = observableSourceArr;
        this.f17681g = iterable;
        this.f17682h = function;
        this.f17683i = i;
        this.f17684j = z;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super R> observer) {
        int i;
        ObservableSource<? extends T>[] observableSourceArr = this.f17680f;
        if (observableSourceArr == null) {
            ObservableSource<? extends T>[] observableSourceArr2 = new ObservableSource[8];
            Iterator<? extends ObservableSource<? extends T>> it = this.f17681g.iterator();
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
            new LatestCoordinator(observer, this.f17682h, i, this.f17683i, this.f17684j).m3873g(observableSourceArr);
        }
    }
}
