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
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCombineLatest.class */
public final class ObservableCombineLatest<T, R> extends Observable<R> {
    final int bufferSize;
    final Function<? super Object[], ? extends R> combiner;
    final boolean delayError;
    final ObservableSource<? extends T>[] sources;
    final Iterable<? extends ObservableSource<? extends T>> sourcesIterable;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver.class */
    public static final class CombinerObserver<T, R> extends AtomicReference<Disposable> implements Observer<T> {
        private static final long serialVersionUID = -4823716997131257941L;
        final int index;
        final LatestCoordinator<T, R> parent;

        CombinerObserver(LatestCoordinator<T, R> latestCoordinator, int i) {
            this.parent = latestCoordinator;
            this.index = i;
        }

        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.parent.innerComplete(this.index);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.parent.innerError(this.index, th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.parent.innerNext(this.index, t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator.class */
    static final class LatestCoordinator<T, R> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 8567835998786448817L;
        int active;
        final Observer<? super R> actual;
        volatile boolean cancelled;
        final Function<? super Object[], ? extends R> combiner;
        int complete;
        final boolean delayError;
        volatile boolean done;
        final AtomicThrowable errors = new AtomicThrowable();
        Object[] latest;
        final CombinerObserver<T, R>[] observers;
        final SpscLinkedArrayQueue<Object[]> queue;

        LatestCoordinator(Observer<? super R> observer, Function<? super Object[], ? extends R> function, int i, int i2, boolean z) {
            this.actual = observer;
            this.combiner = function;
            this.delayError = z;
            this.latest = new Object[i];
            CombinerObserver<T, R>[] combinerObserverArr = new CombinerObserver[i];
            for (int i3 = 0; i3 < i; i3++) {
                combinerObserverArr[i3] = new CombinerObserver<>(this, i3);
            }
            this.observers = combinerObserverArr;
            this.queue = new SpscLinkedArrayQueue<>(i2);
        }

        void cancelSources() {
            for (CombinerObserver<T, R> combinerObserver : this.observers) {
                combinerObserver.dispose();
            }
        }

        void clear(SpscLinkedArrayQueue<?> spscLinkedArrayQueue) {
            synchronized (this) {
                this.latest = null;
            }
            spscLinkedArrayQueue.clear();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.cancelled) {
                this.cancelled = true;
                cancelSources();
                if (getAndIncrement() == 0) {
                    clear(this.queue);
                }
            }
        }

        void drain() {
            if (getAndIncrement() == 0) {
                SpscLinkedArrayQueue<Object[]> spscLinkedArrayQueue = this.queue;
                Observer<? super R> observer = this.actual;
                boolean z = this.delayError;
                int i = 1;
                while (!this.cancelled) {
                    if (z || this.errors.get() == null) {
                        boolean z2 = this.done;
                        Object[] poll = spscLinkedArrayQueue.poll();
                        boolean z3 = poll == null;
                        if (z2 && z3) {
                            clear(spscLinkedArrayQueue);
                            Throwable terminate = this.errors.terminate();
                            if (terminate == null) {
                                observer.onComplete();
                                return;
                            } else {
                                observer.onError(terminate);
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
                                observer.onNext((Object) ObjectHelper.requireNonNull(this.combiner.apply(poll), "The combiner returned a null value"));
                            } catch (Throwable th) {
                                Exceptions.throwIfFatal(th);
                                this.errors.addThrowable(th);
                                cancelSources();
                                clear(spscLinkedArrayQueue);
                                observer.onError(this.errors.terminate());
                                return;
                            }
                        }
                    } else {
                        cancelSources();
                        clear(spscLinkedArrayQueue);
                        observer.onError(this.errors.terminate());
                        return;
                    }
                }
                clear(spscLinkedArrayQueue);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
            if (r0 == r0.length) goto L_0x0031;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void innerComplete(int r4) {
            /*
                r3 = this;
                r0 = r3
                monitor-enter(r0)
                r0 = r3
                java.lang.Object[] r0 = r0.latest     // Catch: all -> 0x0045
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
                int r0 = r0.complete     // Catch: all -> 0x0045
                r1 = 1
                int r0 = r0 + r1
                r6 = r0
                r0 = r3
                r1 = r6
                r0.complete = r1     // Catch: all -> 0x0045
                r0 = r6
                r1 = r5
                int r1 = r1.length     // Catch: all -> 0x0045
                if (r0 != r1) goto L_0x0036
            L_0x0031:
                r0 = r3
                r1 = 1
                r0.done = r1     // Catch: all -> 0x0045
            L_0x0036:
                r0 = r3
                monitor-exit(r0)     // Catch: all -> 0x0045
                r0 = r4
                if (r0 == 0) goto L_0x0040
                r0 = r3
                r0.cancelSources()
            L_0x0040:
                r0 = r3
                r0.drain()
                return
            L_0x0045:
                r5 = move-exception
                r0 = r3
                monitor-exit(r0)     // Catch: all -> 0x0045
                r0 = r5
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableCombineLatest.LatestCoordinator.innerComplete(int):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0040, code lost:
            if (r0 == r0.length) goto L_0x0043;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void innerError(int r4, java.lang.Throwable r5) {
            /*
                r3 = this;
                r0 = r3
                io.reactivex.internal.util.AtomicThrowable r0 = r0.errors
                r1 = r5
                boolean r0 = r0.addThrowable(r1)
                if (r0 == 0) goto L_0x0063
                r0 = r3
                boolean r0 = r0.delayError
                if (r0 == 0) goto L_0x0052
                r0 = r3
                monitor-enter(r0)
                r0 = r3
                java.lang.Object[] r0 = r0.latest     // Catch: all -> 0x004d
                r5 = r0
                r0 = r5
                if (r0 != 0) goto L_0x0020
                r0 = r3
                monitor-exit(r0)     // Catch: all -> 0x004d
                return
            L_0x0020:
                r0 = r5
                r1 = r4
                r0 = r0[r1]
                if (r0 != 0) goto L_0x002b
                r0 = 1
                r4 = r0
                goto L_0x002d
            L_0x002b:
                r0 = 0
                r4 = r0
            L_0x002d:
                r0 = r4
                if (r0 != 0) goto L_0x0043
                r0 = r3
                int r0 = r0.complete     // Catch: all -> 0x004d
                r1 = 1
                int r0 = r0 + r1
                r6 = r0
                r0 = r3
                r1 = r6
                r0.complete = r1     // Catch: all -> 0x004d
                r0 = r6
                r1 = r5
                int r1 = r1.length     // Catch: all -> 0x004d
                if (r0 != r1) goto L_0x0048
            L_0x0043:
                r0 = r3
                r1 = 1
                r0.done = r1     // Catch: all -> 0x004d
            L_0x0048:
                r0 = r3
                monitor-exit(r0)     // Catch: all -> 0x004d
                goto L_0x0054
            L_0x004d:
                r5 = move-exception
                r0 = r3
                monitor-exit(r0)     // Catch: all -> 0x004d
                r0 = r5
                throw r0
            L_0x0052:
                r0 = 1
                r4 = r0
            L_0x0054:
                r0 = r4
                if (r0 == 0) goto L_0x005c
                r0 = r3
                r0.cancelSources()
            L_0x005c:
                r0 = r3
                r0.drain()
                goto L_0x0067
            L_0x0063:
                r0 = r5
                io.reactivex.plugins.RxJavaPlugins.onError(r0)
            L_0x0067:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableCombineLatest.LatestCoordinator.innerError(int, java.lang.Throwable):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        void innerNext(int i, T t) {
            boolean z;
            synchronized (this) {
                Object[] objArr = this.latest;
                if (objArr != null) {
                    Object obj = objArr[i];
                    int i2 = this.active;
                    int i3 = i2;
                    if (obj == null) {
                        i3 = i2 + 1;
                        this.active = i3;
                    }
                    objArr[i] = t;
                    if (i3 == objArr.length) {
                        this.queue.offer(objArr.clone());
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        drain();
                    }
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        public void subscribe(ObservableSource<? extends T>[] observableSourceArr) {
            CombinerObserver<T, R>[] combinerObserverArr = this.observers;
            int length = combinerObserverArr.length;
            this.actual.onSubscribe(this);
            for (int i = 0; i < length && !this.done && !this.cancelled; i++) {
                observableSourceArr[i].subscribe(combinerObserverArr[i]);
            }
        }
    }

    public ObservableCombineLatest(ObservableSource<? extends T>[] observableSourceArr, Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function, int i, boolean z) {
        this.sources = observableSourceArr;
        this.sourcesIterable = iterable;
        this.combiner = function;
        this.bufferSize = i;
        this.delayError = z;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super R> observer) {
        int i;
        ObservableSource<? extends T>[] observableSourceArr = this.sources;
        if (observableSourceArr == null) {
            observableSourceArr = new Observable[8];
            i = 0;
            for (ObservableSource<? extends T> observableSource : this.sourcesIterable) {
                ObservableSource<? extends T>[] observableSourceArr2 = observableSourceArr;
                if (i == observableSourceArr.length) {
                    observableSourceArr2 = new ObservableSource[(i >> 2) + i];
                    System.arraycopy(observableSourceArr, 0, observableSourceArr2, 0, i);
                }
                observableSourceArr2[i] = observableSource;
                i++;
                observableSourceArr = observableSourceArr2;
            }
        } else {
            i = observableSourceArr.length;
        }
        if (i == 0) {
            EmptyDisposable.complete(observer);
        } else {
            new LatestCoordinator(observer, this.combiner, i, this.bufferSize, this.delayError).subscribe(observableSourceArr);
        }
    }
}
