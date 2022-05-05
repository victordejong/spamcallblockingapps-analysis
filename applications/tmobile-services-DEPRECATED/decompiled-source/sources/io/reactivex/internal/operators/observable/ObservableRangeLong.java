package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRangeLong.class */
public final class ObservableRangeLong extends Observable<Long> {

    /* renamed from: f */
    private final long f18225f;

    /* renamed from: g */
    private final long f18226g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable.class */
    static final class RangeDisposable extends BasicIntQueueDisposable<Long> {
        private static final long serialVersionUID = 396518478098735504L;

        /* renamed from: f */
        final Observer<? super Long> f18227f;

        /* renamed from: g */
        final long f18228g;

        /* renamed from: h */
        long f18229h;

        /* renamed from: i */
        boolean f18230i;

        RangeDisposable(Observer<? super Long> observer, long j, long j2) {
            this.f18227f = observer;
            this.f18229h = j;
            this.f18228g = j2;
        }

        @Nullable
        /* renamed from: a */
        public Long poll() throws Exception {
            long j = this.f18229h;
            if (j != this.f18228g) {
                this.f18229h = 1 + j;
                return Long.valueOf(j);
            }
            lazySet(1);
            return null;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f18229h = this.f18228g;
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
            return this.f18229h == this.f18228g;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            this.f18230i = true;
            return 1;
        }

        void run() {
            if (!this.f18230i) {
                Observer<? super Long> observer = this.f18227f;
                long j = this.f18228g;
                for (long j2 = this.f18229h; j2 != j && get() == 0; j2++) {
                    observer.onNext(Long.valueOf(j2));
                }
                if (get() == 0) {
                    lazySet(1);
                    observer.onComplete();
                }
            }
        }
    }

    public ObservableRangeLong(long j, long j2) {
        this.f18225f = j;
        this.f18226g = j2;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super Long> observer) {
        long j = this.f18225f;
        RangeDisposable rangeDisposable = new RangeDisposable(observer, j, j + this.f18226g);
        observer.onSubscribe(rangeDisposable);
        rangeDisposable.run();
    }
}
