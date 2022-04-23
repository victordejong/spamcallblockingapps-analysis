package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.subjects.UnicastSubject;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindow.class */
public final class ObservableWindow<T> extends AbstractObservableWithUpstream<T, Observable<T>> {

    /* renamed from: g */
    final long f18636g;

    /* renamed from: h */
    final long f18637h;

    /* renamed from: i */
    final int f18638i;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver.class */
    static final class WindowExactObserver<T> extends AtomicInteger implements Observer<T>, Disposable, Runnable {
        private static final long serialVersionUID = -7481782523886138128L;

        /* renamed from: f */
        final Observer<? super Observable<T>> f18639f;

        /* renamed from: g */
        final long f18640g;

        /* renamed from: h */
        final int f18641h;

        /* renamed from: i */
        long f18642i;

        /* renamed from: j */
        Disposable f18643j;

        /* renamed from: k */
        UnicastSubject<T> f18644k;

        /* renamed from: l */
        volatile boolean f18645l;

        WindowExactObserver(Observer<? super Observable<T>> observer, long j, int i) {
            this.f18639f = observer;
            this.f18640g = j;
            this.f18641h = i;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18645l = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18645l;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            UnicastSubject<T> unicastSubject = this.f18644k;
            if (unicastSubject != null) {
                this.f18644k = null;
                unicastSubject.onComplete();
            }
            this.f18639f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            UnicastSubject<T> unicastSubject = this.f18644k;
            if (unicastSubject != null) {
                this.f18644k = null;
                unicastSubject.onError(th);
            }
            this.f18639f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            UnicastSubject<T> unicastSubject = this.f18644k;
            UnicastSubject<T> unicastSubject2 = unicastSubject;
            if (unicastSubject == null) {
                unicastSubject2 = unicastSubject;
                if (!this.f18645l) {
                    unicastSubject2 = UnicastSubject.m3183g(this.f18641h, this);
                    this.f18644k = unicastSubject2;
                    this.f18639f.onNext(unicastSubject2);
                }
            }
            if (unicastSubject2 != null) {
                unicastSubject2.onNext(t);
                long j = this.f18642i + 1;
                this.f18642i = j;
                if (j >= this.f18640g) {
                    this.f18642i = 0L;
                    this.f18644k = null;
                    unicastSubject2.onComplete();
                    if (this.f18645l) {
                        this.f18643j.dispose();
                    }
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18643j, disposable)) {
                this.f18643j = disposable;
                this.f18639f.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f18645l) {
                this.f18643j.dispose();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver.class */
    static final class WindowSkipObserver<T> extends AtomicBoolean implements Observer<T>, Disposable, Runnable {
        private static final long serialVersionUID = 3366976432059579510L;

        /* renamed from: f */
        final Observer<? super Observable<T>> f18646f;

        /* renamed from: g */
        final long f18647g;

        /* renamed from: h */
        final long f18648h;

        /* renamed from: i */
        final int f18649i;

        /* renamed from: k */
        long f18651k;

        /* renamed from: l */
        volatile boolean f18652l;

        /* renamed from: m */
        long f18653m;

        /* renamed from: n */
        Disposable f18654n;

        /* renamed from: o */
        final AtomicInteger f18655o = new AtomicInteger();

        /* renamed from: j */
        final ArrayDeque<UnicastSubject<T>> f18650j = new ArrayDeque<>();

        WindowSkipObserver(Observer<? super Observable<T>> observer, long j, long j2, int i) {
            this.f18646f = observer;
            this.f18647g = j;
            this.f18648h = j2;
            this.f18649i = i;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18652l = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18652l;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            ArrayDeque<UnicastSubject<T>> arrayDeque = this.f18650j;
            while (!arrayDeque.isEmpty()) {
                arrayDeque.poll().onComplete();
            }
            this.f18646f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            ArrayDeque<UnicastSubject<T>> arrayDeque = this.f18650j;
            while (!arrayDeque.isEmpty()) {
                arrayDeque.poll().onError(th);
            }
            this.f18646f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            ArrayDeque<UnicastSubject<T>> arrayDeque = this.f18650j;
            long j = this.f18651k;
            long j2 = this.f18648h;
            if (j % j2 == 0 && !this.f18652l) {
                this.f18655o.getAndIncrement();
                UnicastSubject<T> g = UnicastSubject.m3183g(this.f18649i, this);
                arrayDeque.offer(g);
                this.f18646f.onNext(g);
            }
            long j3 = this.f18653m + 1;
            Iterator<UnicastSubject<T>> it = arrayDeque.iterator();
            while (it.hasNext()) {
                it.next().onNext(t);
            }
            if (j3 >= this.f18647g) {
                arrayDeque.poll().onComplete();
                if (!arrayDeque.isEmpty() || !this.f18652l) {
                    this.f18653m = j3 - j2;
                } else {
                    this.f18654n.dispose();
                    return;
                }
            } else {
                this.f18653m = j3;
            }
            this.f18651k = j + 1;
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18654n, disposable)) {
                this.f18654n = disposable;
                this.f18646f.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f18655o.decrementAndGet() == 0 && this.f18652l) {
                this.f18654n.dispose();
            }
        }
    }

    public ObservableWindow(ObservableSource<T> observableSource, long j, long j2, int i) {
        super(observableSource);
        this.f18636g = j;
        this.f18637h = j2;
        this.f18638i = i;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super Observable<T>> observer) {
        if (this.f18636g == this.f18637h) {
            this.f17497f.subscribe(new WindowExactObserver(observer, this.f18636g, this.f18638i));
        } else {
            this.f17497f.subscribe(new WindowSkipObserver(observer, this.f18636g, this.f18637h, this.f18638i));
        }
    }
}
