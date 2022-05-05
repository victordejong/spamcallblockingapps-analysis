package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableScan.class */
public final class ObservableScan<T> extends AbstractObservableWithUpstream<T, T> {
    final BiFunction<T, T, T> accumulator;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableScan$ScanObserver.class */
    static final class ScanObserver<T> implements Observer<T>, Disposable {
        final BiFunction<T, T, T> accumulator;
        final Observer<? super T> actual;
        boolean done;

        /* renamed from: s */
        Disposable f608s;
        T value;

        ScanObserver(Observer<? super T> observer, BiFunction<T, T, T> biFunction) {
            this.actual = observer;
            this.accumulator = biFunction;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f608s.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f608s.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.done) {
                this.done = true;
                this.actual.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.done = true;
            this.actual.onError(th);
        }

        /* JADX WARN: Type inference failed for: r0v14, types: [T, java.lang.Object] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // io.reactivex.Observer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onNext(T r5) {
            /*
                r4 = this;
                r0 = r4
                boolean r0 = r0.done
                if (r0 == 0) goto L_0x0008
                return
            L_0x0008:
                r0 = r4
                io.reactivex.Observer<? super T> r0 = r0.actual
                r6 = r0
                r0 = r4
                T r0 = r0.value
                r7 = r0
                r0 = r7
                if (r0 != 0) goto L_0x0025
                r0 = r4
                r1 = r5
                r0.value = r1
                r0 = r6
                r1 = r5
                r0.onNext(r1)
                goto L_0x0042
            L_0x0025:
                r0 = r4
                io.reactivex.functions.BiFunction<T, T, T> r0 = r0.accumulator     // Catch: Throwable -> 0x0043
                r1 = r7
                r2 = r5
                java.lang.Object r0 = r0.apply(r1, r2)     // Catch: Throwable -> 0x0043
                java.lang.String r1 = "The value returned by the accumulator is null"
                java.lang.Object r0 = io.reactivex.internal.functions.ObjectHelper.requireNonNull(r0, r1)     // Catch: Throwable -> 0x0043
                r5 = r0
                r0 = r4
                r1 = r5
                r0.value = r1
                r0 = r6
                r1 = r5
                r0.onNext(r1)
            L_0x0042:
                return
            L_0x0043:
                r5 = move-exception
                r0 = r5
                io.reactivex.exceptions.Exceptions.throwIfFatal(r0)
                r0 = r4
                io.reactivex.disposables.Disposable r0 = r0.f608s
                r0.dispose()
                r0 = r4
                r1 = r5
                r0.onError(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableScan.ScanObserver.onNext(java.lang.Object):void");
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f608s, disposable)) {
                this.f608s = disposable;
                this.actual.onSubscribe(this);
            }
        }
    }

    public ObservableScan(ObservableSource<T> observableSource, BiFunction<T, T, T> biFunction) {
        super(observableSource);
        this.accumulator = biFunction;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new ScanObserver(observer, this.accumulator));
    }
}
