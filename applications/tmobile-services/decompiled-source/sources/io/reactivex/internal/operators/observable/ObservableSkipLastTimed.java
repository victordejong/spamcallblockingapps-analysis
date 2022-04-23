package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSkipLastTimed.class */
public final class ObservableSkipLastTimed<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final long f18435g;

    /* renamed from: h */
    final TimeUnit f18436h;

    /* renamed from: i */
    final Scheduler f18437i;

    /* renamed from: j */
    final int f18438j;

    /* renamed from: k */
    final boolean f18439k;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSkipLastTimed$SkipLastTimedObserver.class */
    static final class SkipLastTimedObserver<T> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -5677354903406201275L;

        /* renamed from: f */
        final Observer<? super T> f18440f;

        /* renamed from: g */
        final long f18441g;

        /* renamed from: h */
        final TimeUnit f18442h;

        /* renamed from: i */
        final Scheduler f18443i;

        /* renamed from: j */
        final SpscLinkedArrayQueue<Object> f18444j;

        /* renamed from: k */
        final boolean f18445k;

        /* renamed from: l */
        Disposable f18446l;

        /* renamed from: m */
        volatile boolean f18447m;

        /* renamed from: n */
        volatile boolean f18448n;

        /* renamed from: o */
        Throwable f18449o;

        SkipLastTimedObserver(Observer<? super T> observer, long j, TimeUnit timeUnit, Scheduler scheduler, int i, boolean z) {
            this.f18440f = observer;
            this.f18441g = j;
            this.f18442h = timeUnit;
            this.f18443i = scheduler;
            this.f18444j = new SpscLinkedArrayQueue<>(i);
            this.f18445k = z;
        }

        /* renamed from: a */
        void m3681a() {
            if (getAndIncrement() == 0) {
                Observer<? super T> observer = this.f18440f;
                SpscLinkedArrayQueue<Object> spscLinkedArrayQueue = this.f18444j;
                boolean z = this.f18445k;
                TimeUnit timeUnit = this.f18442h;
                Scheduler scheduler = this.f18443i;
                long j = this.f18441g;
                int i = 1;
                while (!this.f18447m) {
                    boolean z2 = this.f18448n;
                    Long l = (Long) spscLinkedArrayQueue.peek();
                    boolean z3 = l == null;
                    long c = scheduler.mo3231c(timeUnit);
                    boolean z4 = z3;
                    if (!z3) {
                        z4 = z3;
                        if (l.longValue() > c - j) {
                            z4 = true;
                        }
                    }
                    if (z2) {
                        if (!z) {
                            Throwable th = this.f18449o;
                            if (th != null) {
                                this.f18444j.clear();
                                observer.onError(th);
                                return;
                            } else if (z4) {
                                observer.onComplete();
                                return;
                            }
                        } else if (z4) {
                            Throwable th2 = this.f18449o;
                            if (th2 != null) {
                                observer.onError(th2);
                                return;
                            } else {
                                observer.onComplete();
                                return;
                            }
                        }
                    }
                    if (z4) {
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        spscLinkedArrayQueue.poll();
                        observer.onNext(spscLinkedArrayQueue.poll());
                    }
                }
                this.f18444j.clear();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f18447m) {
                this.f18447m = true;
                this.f18446l.dispose();
                if (getAndIncrement() == 0) {
                    this.f18444j.clear();
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18447m;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18448n = true;
            m3681a();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18449o = th;
            this.f18448n = true;
            m3681a();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18444j.m3545o(Long.valueOf(this.f18443i.mo3231c(this.f18442h)), t);
            m3681a();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18446l, disposable)) {
                this.f18446l = disposable;
                this.f18440f.onSubscribe(this);
            }
        }
    }

    public ObservableSkipLastTimed(ObservableSource<T> observableSource, long j, TimeUnit timeUnit, Scheduler scheduler, int i, boolean z) {
        super(observableSource);
        this.f18435g = j;
        this.f18436h = timeUnit;
        this.f18437i = scheduler;
        this.f18438j = i;
        this.f18439k = z;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new SkipLastTimedObserver(observer, this.f18435g, this.f18436h, this.f18437i, this.f18438j, this.f18439k));
    }
}
