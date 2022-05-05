package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.observers.SerializedObserver;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSampleWithObservable.class */
public final class ObservableSampleWithObservable<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final ObservableSource<?> f18353g;

    /* renamed from: h */
    final boolean f18354h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast.class */
    static final class SampleMainEmitLast<T> extends SampleMainObserver<T> {
        private static final long serialVersionUID = -3029755663834015785L;

        /* renamed from: j */
        final AtomicInteger f18355j = new AtomicInteger();

        /* renamed from: k */
        volatile boolean f18356k;

        SampleMainEmitLast(Observer<? super T> observer, ObservableSource<?> observableSource) {
            super(observer, observableSource);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableSampleWithObservable.SampleMainObserver
        /* renamed from: b */
        void mo3696b() {
            this.f18356k = true;
            if (this.f18355j.getAndIncrement() == 0) {
                m3695c();
                this.f18357f.onComplete();
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableSampleWithObservable.SampleMainObserver
        /* renamed from: e */
        void mo3693e() {
            if (this.f18355j.getAndIncrement() == 0) {
                do {
                    boolean z = this.f18356k;
                    m3695c();
                    if (z) {
                        this.f18357f.onComplete();
                        return;
                    }
                } while (this.f18355j.decrementAndGet() != 0);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast.class */
    static final class SampleMainNoLast<T> extends SampleMainObserver<T> {
        private static final long serialVersionUID = -3029755663834015785L;

        SampleMainNoLast(Observer<? super T> observer, ObservableSource<?> observableSource) {
            super(observer, observableSource);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableSampleWithObservable.SampleMainObserver
        /* renamed from: b */
        void mo3696b() {
            this.f18357f.onComplete();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableSampleWithObservable.SampleMainObserver
        /* renamed from: e */
        void mo3693e() {
            m3695c();
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver.class */
    static abstract class SampleMainObserver<T> extends AtomicReference<T> implements Observer<T>, Disposable {
        private static final long serialVersionUID = -3517602651313910099L;

        /* renamed from: f */
        final Observer<? super T> f18357f;

        /* renamed from: g */
        final ObservableSource<?> f18358g;

        /* renamed from: h */
        final AtomicReference<Disposable> f18359h = new AtomicReference<>();

        /* renamed from: i */
        Disposable f18360i;

        SampleMainObserver(Observer<? super T> observer, ObservableSource<?> observableSource) {
            this.f18357f = observer;
            this.f18358g = observableSource;
        }

        /* renamed from: a */
        public void m3697a() {
            this.f18360i.dispose();
            mo3696b();
        }

        /* renamed from: b */
        abstract void mo3696b();

        /* renamed from: c */
        void m3695c() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                this.f18357f.onNext(andSet);
            }
        }

        /* renamed from: d */
        public void m3694d(Throwable th) {
            this.f18360i.dispose();
            this.f18357f.onError(th);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this.f18359h);
            this.f18360i.dispose();
        }

        /* renamed from: e */
        abstract void mo3693e();

        /* renamed from: f */
        boolean m3692f(Disposable disposable) {
            return DisposableHelper.setOnce(this.f18359h, disposable);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18359h.get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            DisposableHelper.dispose(this.f18359h);
            mo3696b();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f18359h);
            this.f18357f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            lazySet(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18360i, disposable)) {
                this.f18360i = disposable;
                this.f18357f.onSubscribe(this);
                if (this.f18359h.get() == null) {
                    this.f18358g.subscribe(new SamplerObserver(this));
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSampleWithObservable$SamplerObserver.class */
    static final class SamplerObserver<T> implements Observer<Object> {

        /* renamed from: f */
        final SampleMainObserver<T> f18361f;

        SamplerObserver(SampleMainObserver<T> sampleMainObserver) {
            this.f18361f = sampleMainObserver;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18361f.m3697a();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18361f.m3694d(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
            this.f18361f.mo3693e();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f18361f.m3692f(disposable);
        }
    }

    public ObservableSampleWithObservable(ObservableSource<T> observableSource, ObservableSource<?> observableSource2, boolean z) {
        super(observableSource);
        this.f18353g = observableSource2;
        this.f18354h = z;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        SerializedObserver serializedObserver = new SerializedObserver(observer);
        if (this.f18354h) {
            this.f17497f.subscribe(new SampleMainEmitLast(serializedObserver, this.f18353g));
        } else {
            this.f17497f.subscribe(new SampleMainNoLast(serializedObserver, this.f18353g));
        }
    }
}
