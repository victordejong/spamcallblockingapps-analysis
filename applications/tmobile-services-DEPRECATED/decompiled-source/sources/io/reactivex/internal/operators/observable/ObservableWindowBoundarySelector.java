package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.QueueDrainObserver;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.observers.DisposableObserver;
import io.reactivex.observers.SerializedObserver;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.subjects.UnicastSubject;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowBoundarySelector.class */
public final class ObservableWindowBoundarySelector<T, B, V> extends AbstractObservableWithUpstream<T, Observable<T>> {

    /* renamed from: g */
    final ObservableSource<B> f18671g;

    /* renamed from: h */
    final Function<? super B, ? extends ObservableSource<V>> f18672h;

    /* renamed from: i */
    final int f18673i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$OperatorWindowBoundaryCloseObserver.class */
    public static final class OperatorWindowBoundaryCloseObserver<T, V> extends DisposableObserver<V> {

        /* renamed from: g */
        final WindowBoundaryMainObserver<T, ?, V> f18674g;

        /* renamed from: h */
        final UnicastSubject<T> f18675h;

        /* renamed from: i */
        boolean f18676i;

        OperatorWindowBoundaryCloseObserver(WindowBoundaryMainObserver<T, ?, V> windowBoundaryMainObserver, UnicastSubject<T> unicastSubject) {
            this.f18674g = windowBoundaryMainObserver;
            this.f18675h = unicastSubject;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f18676i) {
                this.f18676i = true;
                this.f18674g.m3657j(this);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18676i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18676i = true;
            this.f18674g.m3654m(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(V v) {
            dispose();
            onComplete();
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$OperatorWindowBoundaryOpenObserver.class */
    static final class OperatorWindowBoundaryOpenObserver<T, B> extends DisposableObserver<B> {

        /* renamed from: g */
        final WindowBoundaryMainObserver<T, B, ?> f18677g;

        OperatorWindowBoundaryOpenObserver(WindowBoundaryMainObserver<T, B, ?> windowBoundaryMainObserver) {
            this.f18677g = windowBoundaryMainObserver;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18677g.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18677g.m3654m(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(B b) {
            this.f18677g.m3653n(b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$WindowBoundaryMainObserver.class */
    public static final class WindowBoundaryMainObserver<T, B, V> extends QueueDrainObserver<T, Object, Observable<T>> implements Disposable {

        /* renamed from: l */
        final ObservableSource<B> f18678l;

        /* renamed from: m */
        final Function<? super B, ? extends ObservableSource<V>> f18679m;

        /* renamed from: n */
        final int f18680n;

        /* renamed from: p */
        Disposable f18682p;

        /* renamed from: q */
        final AtomicReference<Disposable> f18683q = new AtomicReference<>();

        /* renamed from: s */
        final AtomicLong f18685s = new AtomicLong();

        /* renamed from: t */
        final AtomicBoolean f18686t = new AtomicBoolean();

        /* renamed from: o */
        final CompositeDisposable f18681o = new CompositeDisposable();

        /* renamed from: r */
        final List<UnicastSubject<T>> f18684r = new ArrayList();

        WindowBoundaryMainObserver(Observer<? super Observable<T>> observer, ObservableSource<B> observableSource, Function<? super B, ? extends ObservableSource<V>> function, int i) {
            super(observer, new MpscLinkedQueue());
            this.f18678l = observableSource;
            this.f18679m = function;
            this.f18680n = i;
            this.f18685s.lazySet(1L);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f18686t.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f18683q);
                if (this.f18685s.decrementAndGet() == 0) {
                    this.f18682p.dispose();
                }
            }
        }

        @Override // io.reactivex.internal.observers.QueueDrainObserver, io.reactivex.internal.util.ObservableQueueDrain
        /* renamed from: e */
        public void mo3421e(Observer<? super Observable<T>> observer, Object obj) {
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18686t.get();
        }

        /* renamed from: j */
        void m3657j(OperatorWindowBoundaryCloseObserver<T, V> operatorWindowBoundaryCloseObserver) {
            this.f18681o.mo4424c(operatorWindowBoundaryCloseObserver);
            this.f15215h.offer(new WindowOperation(operatorWindowBoundaryCloseObserver.f18675h, null));
            if (m4344f()) {
                m3655l();
            }
        }

        /* renamed from: k */
        void m3656k() {
            this.f18681o.dispose();
            DisposableHelper.dispose(this.f18683q);
        }

        /* renamed from: l */
        void m3655l() {
            MpscLinkedQueue mpscLinkedQueue = (MpscLinkedQueue) this.f15215h;
            Observer<? super V> observer = this.f15214g;
            List<UnicastSubject<T>> list = this.f18684r;
            int i = 1;
            while (true) {
                boolean z = this.f15217j;
                Object poll = mpscLinkedQueue.poll();
                boolean z2 = poll == null;
                if (z && z2) {
                    m3656k();
                    Throwable th = this.f15218k;
                    if (th != null) {
                        for (UnicastSubject<T> unicastSubject : list) {
                            unicastSubject.onError(th);
                        }
                    } else {
                        for (UnicastSubject<T> unicastSubject2 : list) {
                            unicastSubject2.onComplete();
                        }
                    }
                    list.clear();
                    return;
                } else if (z2) {
                    int d = mo3422d(-i);
                    i = d;
                    if (d == 0) {
                        return;
                    }
                } else if (poll instanceof WindowOperation) {
                    WindowOperation windowOperation = (WindowOperation) poll;
                    UnicastSubject<T> unicastSubject3 = windowOperation.f18687a;
                    if (unicastSubject3 != null) {
                        if (list.remove(unicastSubject3)) {
                            windowOperation.f18687a.onComplete();
                            if (this.f18685s.decrementAndGet() == 0) {
                                m3656k();
                                return;
                            }
                        } else {
                            continue;
                        }
                    } else if (!this.f18686t.get()) {
                        UnicastSubject<T> f = UnicastSubject.m3184f(this.f18680n);
                        list.add(f);
                        observer.onNext(f);
                        try {
                            Object apply = this.f18679m.apply((B) windowOperation.f18688b);
                            ObjectHelper.m4363e(apply, "The ObservableSource supplied is null");
                            ObservableSource observableSource = (ObservableSource) apply;
                            OperatorWindowBoundaryCloseObserver operatorWindowBoundaryCloseObserver = new OperatorWindowBoundaryCloseObserver(this, f);
                            if (this.f18681o.mo4425b(operatorWindowBoundaryCloseObserver)) {
                                this.f18685s.getAndIncrement();
                                observableSource.subscribe(operatorWindowBoundaryCloseObserver);
                            }
                        } catch (Throwable th2) {
                            Exceptions.m4428b(th2);
                            this.f18686t.set(true);
                            observer.onError(th2);
                        }
                    }
                } else {
                    for (UnicastSubject<T> unicastSubject4 : list) {
                        unicastSubject4.onNext((T) NotificationLite.getValue(poll));
                    }
                }
            }
        }

        /* renamed from: m */
        void m3654m(Throwable th) {
            this.f18682p.dispose();
            this.f18681o.dispose();
            onError(th);
        }

        /* renamed from: n */
        void m3653n(B b) {
            this.f15215h.offer(new WindowOperation(null, b));
            if (m4344f()) {
                m3655l();
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f15217j) {
                this.f15217j = true;
                if (m4344f()) {
                    m3655l();
                }
                if (this.f18685s.decrementAndGet() == 0) {
                    this.f18681o.dispose();
                }
                this.f15214g.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f15217j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f15218k = th;
            this.f15217j = true;
            if (m4344f()) {
                m3655l();
            }
            if (this.f18685s.decrementAndGet() == 0) {
                this.f18681o.dispose();
            }
            this.f15214g.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (m4343g()) {
                for (UnicastSubject<T> unicastSubject : this.f18684r) {
                    unicastSubject.onNext(t);
                }
                if (mo3422d(-1) == 0) {
                    return;
                }
            } else {
                this.f15215h.offer(NotificationLite.next(t));
                if (!m4344f()) {
                    return;
                }
            }
            m3655l();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18682p, disposable)) {
                this.f18682p = disposable;
                this.f15214g.onSubscribe(this);
                if (!this.f18686t.get()) {
                    OperatorWindowBoundaryOpenObserver operatorWindowBoundaryOpenObserver = new OperatorWindowBoundaryOpenObserver(this);
                    if (this.f18683q.compareAndSet(null, operatorWindowBoundaryOpenObserver)) {
                        this.f18678l.subscribe(operatorWindowBoundaryOpenObserver);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowBoundarySelector$WindowOperation.class */
    public static final class WindowOperation<T, B> {

        /* renamed from: a */
        final UnicastSubject<T> f18687a;

        /* renamed from: b */
        final B f18688b;

        WindowOperation(UnicastSubject<T> unicastSubject, B b) {
            this.f18687a = unicastSubject;
            this.f18688b = b;
        }
    }

    public ObservableWindowBoundarySelector(ObservableSource<T> observableSource, ObservableSource<B> observableSource2, Function<? super B, ? extends ObservableSource<V>> function, int i) {
        super(observableSource);
        this.f18671g = observableSource2;
        this.f18672h = function;
        this.f18673i = i;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super Observable<T>> observer) {
        this.f17497f.subscribe(new WindowBoundaryMainObserver(new SerializedObserver(observer), this.f18671g, this.f18672h, this.f18673i));
    }
}
