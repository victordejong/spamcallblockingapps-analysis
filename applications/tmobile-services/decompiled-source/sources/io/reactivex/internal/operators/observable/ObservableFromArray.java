package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.BasicQueueDisposable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFromArray.class */
public final class ObservableFromArray<T> extends Observable<T> {

    /* renamed from: f */
    final T[] f17964f;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable.class */
    static final class FromArrayDisposable<T> extends BasicQueueDisposable<T> {

        /* renamed from: f */
        final Observer<? super T> f17965f;

        /* renamed from: g */
        final T[] f17966g;

        /* renamed from: h */
        int f17967h;

        /* renamed from: i */
        boolean f17968i;

        /* renamed from: j */
        volatile boolean f17969j;

        FromArrayDisposable(Observer<? super T> observer, T[] tArr) {
            this.f17965f = observer;
            this.f17966g = tArr;
        }

        /* renamed from: a */
        void m3823a() {
            T[] tArr = this.f17966g;
            int length = tArr.length;
            for (int i = 0; i < length && !isDisposed(); i++) {
                T t = tArr[i];
                if (t == null) {
                    Observer<? super T> observer = this.f17965f;
                    observer.onError(new NullPointerException("The element at index " + i + " is null"));
                    return;
                }
                this.f17965f.onNext(t);
            }
            if (!isDisposed()) {
                this.f17965f.onComplete();
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f17967h = this.f17966g.length;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17969j = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17969j;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f17967h == this.f17966g.length;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() {
            int i = this.f17967h;
            T[] tArr = this.f17966g;
            if (i == tArr.length) {
                return null;
            }
            this.f17967h = i + 1;
            T t = tArr[i];
            ObjectHelper.m4363e(t, "The array element is null");
            return t;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            this.f17968i = true;
            return 1;
        }
    }

    public ObservableFromArray(T[] tArr) {
        this.f17964f = tArr;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        FromArrayDisposable fromArrayDisposable = new FromArrayDisposable(observer, this.f17964f);
        observer.onSubscribe(fromArrayDisposable);
        if (!fromArrayDisposable.f17968i) {
            fromArrayDisposable.m3823a();
        }
    }
}
