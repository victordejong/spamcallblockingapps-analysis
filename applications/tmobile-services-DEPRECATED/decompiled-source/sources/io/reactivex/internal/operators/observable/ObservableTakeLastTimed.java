package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTakeLastTimed.class */
public final class ObservableTakeLastTimed<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final long f18507g;

    /* renamed from: h */
    final long f18508h;

    /* renamed from: i */
    final TimeUnit f18509i;

    /* renamed from: j */
    final Scheduler f18510j;

    /* renamed from: k */
    final int f18511k;

    /* renamed from: l */
    final boolean f18512l;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver.class */
    static final class TakeLastTimedObserver<T> extends AtomicBoolean implements Observer<T>, Disposable {
        private static final long serialVersionUID = -5677354903406201275L;

        /* renamed from: f */
        final Observer<? super T> f18513f;

        /* renamed from: g */
        final long f18514g;

        /* renamed from: h */
        final long f18515h;

        /* renamed from: i */
        final TimeUnit f18516i;

        /* renamed from: j */
        final Scheduler f18517j;

        /* renamed from: k */
        final SpscLinkedArrayQueue<Object> f18518k;

        /* renamed from: l */
        final boolean f18519l;

        /* renamed from: m */
        Disposable f18520m;

        /* renamed from: n */
        volatile boolean f18521n;

        /* renamed from: o */
        Throwable f18522o;

        TakeLastTimedObserver(Observer<? super T> observer, long j, long j2, TimeUnit timeUnit, Scheduler scheduler, int i, boolean z) {
            this.f18513f = observer;
            this.f18514g = j;
            this.f18515h = j2;
            this.f18516i = timeUnit;
            this.f18517j = scheduler;
            this.f18518k = new SpscLinkedArrayQueue<>(i);
            this.f18519l = z;
        }

        /* renamed from: a */
        void m3674a() {
            Throwable th;
            if (compareAndSet(false, true)) {
                Observer<? super T> observer = this.f18513f;
                SpscLinkedArrayQueue<Object> spscLinkedArrayQueue = this.f18518k;
                boolean z = this.f18519l;
                long c = this.f18517j.mo3231c(this.f18516i);
                long j = this.f18515h;
                while (!this.f18521n) {
                    if (z || (th = this.f18522o) == null) {
                        Object poll = spscLinkedArrayQueue.poll();
                        if (poll == null) {
                            Throwable th2 = this.f18522o;
                            if (th2 != null) {
                                observer.onError(th2);
                                return;
                            } else {
                                observer.onComplete();
                                return;
                            }
                        } else {
                            Object poll2 = spscLinkedArrayQueue.poll();
                            if (((Long) poll).longValue() >= c - j) {
                                observer.onNext(poll2);
                            }
                        }
                    } else {
                        spscLinkedArrayQueue.clear();
                        observer.onError(th);
                        return;
                    }
                }
                spscLinkedArrayQueue.clear();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f18521n) {
                this.f18521n = true;
                this.f18520m.dispose();
                if (compareAndSet(false, true)) {
                    this.f18518k.clear();
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18521n;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            m3674a();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18522o = th;
            m3674a();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            SpscLinkedArrayQueue<Object> spscLinkedArrayQueue = this.f18518k;
            long c = this.f18517j.mo3231c(this.f18516i);
            long j = this.f18515h;
            long j2 = this.f18514g;
            boolean z = j2 == Long.MAX_VALUE;
            spscLinkedArrayQueue.m3545o(Long.valueOf(c), t);
            while (!spscLinkedArrayQueue.isEmpty()) {
                if (((Long) spscLinkedArrayQueue.peek()).longValue() <= c - j || (!z && (spscLinkedArrayQueue.m3543q() >> 1) > j2)) {
                    spscLinkedArrayQueue.poll();
                    spscLinkedArrayQueue.poll();
                } else {
                    return;
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18520m, disposable)) {
                this.f18520m = disposable;
                this.f18513f.onSubscribe(this);
            }
        }
    }

    public ObservableTakeLastTimed(ObservableSource<T> observableSource, long j, long j2, TimeUnit timeUnit, Scheduler scheduler, int i, boolean z) {
        super(observableSource);
        this.f18507g = j;
        this.f18508h = j2;
        this.f18509i = timeUnit;
        this.f18510j = scheduler;
        this.f18511k = i;
        this.f18512l = z;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new TakeLastTimedObserver(observer, this.f18507g, this.f18508h, this.f18509i, this.f18510j, this.f18511k, this.f18512l));
    }
}
