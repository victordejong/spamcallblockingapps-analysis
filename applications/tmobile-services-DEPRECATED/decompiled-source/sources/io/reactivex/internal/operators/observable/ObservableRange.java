package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRange.class */
public final class ObservableRange extends Observable<Integer> {

    /* renamed from: f */
    private final int f18219f;

    /* renamed from: g */
    private final long f18220g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRange$RangeDisposable.class */
    static final class RangeDisposable extends BasicIntQueueDisposable<Integer> {
        private static final long serialVersionUID = 396518478098735504L;

        /* renamed from: f */
        final Observer<? super Integer> f18221f;

        /* renamed from: g */
        final long f18222g;

        /* renamed from: h */
        long f18223h;

        /* renamed from: i */
        boolean f18224i;

        RangeDisposable(Observer<? super Integer> observer, long j, long j2) {
            this.f18221f = observer;
            this.f18223h = j;
            this.f18222g = j2;
        }

        @Nullable
        /* renamed from: a */
        public Integer poll() throws Exception {
            long j = this.f18223h;
            if (j != this.f18222g) {
                this.f18223h = 1 + j;
                return Integer.valueOf((int) j);
            }
            lazySet(1);
            return null;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f18223h = this.f18222g;
            lazySet(1);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            set(1);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() != 0;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f18223h == this.f18222g;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            this.f18224i = true;
            return 1;
        }

        void run() {
            if (!this.f18224i) {
                Observer<? super Integer> observer = this.f18221f;
                long j = this.f18222g;
                for (long j2 = this.f18223h; j2 != j && get() == 0; j2++) {
                    observer.onNext(Integer.valueOf((int) j2));
                }
                if (get() == 0) {
                    lazySet(1);
                    observer.onComplete();
                }
            }
        }
    }

    public ObservableRange(int i, int i2) {
        this.f18219f = i;
        this.f18220g = i + i2;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super Integer> observer) {
        RangeDisposable rangeDisposable = new RangeDisposable(observer, this.f18219f, this.f18220g);
        observer.onSubscribe(rangeDisposable);
        rangeDisposable.run();
    }
}
