package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.QueueDrainObserver;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.util.QueueDrainHelper;
import io.reactivex.observers.DisposableObserver;
import io.reactivex.observers.SerializedObserver;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier.class */
public final class ObservableBufferBoundarySupplier<T, U extends Collection<? super T>, B> extends AbstractObservableWithUpstream<T, U> {

    /* renamed from: g */
    final Callable<? extends ObservableSource<B>> f17593g;

    /* renamed from: h */
    final Callable<U> f17594h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundaryObserver.class */
    public static final class BufferBoundaryObserver<T, U extends Collection<? super T>, B> extends DisposableObserver<B> {

        /* renamed from: g */
        final BufferBoundarySupplierObserver<T, U, B> f17595g;

        /* renamed from: h */
        boolean f17596h;

        BufferBoundaryObserver(BufferBoundarySupplierObserver<T, U, B> bufferBoundarySupplierObserver) {
            this.f17595g = bufferBoundarySupplierObserver;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f17596h) {
                this.f17596h = true;
                this.f17595g.m3892l();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17596h) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f17596h = true;
            this.f17595g.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(B b) {
            if (!this.f17596h) {
                this.f17596h = true;
                dispose();
                this.f17595g.m3892l();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver.class */
    static final class BufferBoundarySupplierObserver<T, U extends Collection<? super T>, B> extends QueueDrainObserver<T, U, U> implements Observer<T>, Disposable {

        /* renamed from: l */
        final Callable<U> f17597l;

        /* renamed from: m */
        final Callable<? extends ObservableSource<B>> f17598m;

        /* renamed from: n */
        Disposable f17599n;

        /* renamed from: o */
        final AtomicReference<Disposable> f17600o = new AtomicReference<>();

        /* renamed from: p */
        U f17601p;

        BufferBoundarySupplierObserver(Observer<? super U> observer, Callable<U> callable, Callable<? extends ObservableSource<B>> callable2) {
            super(observer, new MpscLinkedQueue());
            this.f17597l = callable;
            this.f17598m = callable2;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f15216i) {
                this.f15216i = true;
                this.f17599n.dispose();
                m3893k();
                if (m4344f()) {
                    this.f15215h.clear();
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15216i;
        }

        /* renamed from: j */
        public void mo3421e(Observer<? super U> observer, U u) {
            this.f15214g.onNext(u);
        }

        /* renamed from: k */
        void m3893k() {
            DisposableHelper.dispose(this.f17600o);
        }

        /* renamed from: l */
        void m3892l() {
            try {
                U call = this.f17597l.call();
                ObjectHelper.m4363e(call, "The buffer supplied is null");
                U u = call;
                try {
                    Object call2 = this.f17598m.call();
                    ObjectHelper.m4363e(call2, "The boundary ObservableSource supplied is null");
                    ObservableSource observableSource = (ObservableSource) call2;
                    BufferBoundaryObserver bufferBoundaryObserver = new BufferBoundaryObserver(this);
                    if (DisposableHelper.replace(this.f17600o, bufferBoundaryObserver)) {
                        synchronized (this) {
                            U u2 = this.f17601p;
                            if (u2 != null) {
                                this.f17601p = u;
                                observableSource.subscribe(bufferBoundaryObserver);
                                m4342h(u2, false, this);
                            }
                        }
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f15216i = true;
                    this.f17599n.dispose();
                    this.f15214g.onError(th);
                }
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                dispose();
                this.f15214g.onError(th2);
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            synchronized (this) {
                U u = this.f17601p;
                if (u != null) {
                    this.f17601p = null;
                    this.f15215h.offer(u);
                    this.f15217j = true;
                    if (m4344f()) {
                        QueueDrainHelper.m3402d(this.f15215h, this.f15214g, false, this, this);
                    }
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            dispose();
            this.f15214g.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            synchronized (this) {
                U u = this.f17601p;
                if (u != null) {
                    u.add(t);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17599n, disposable)) {
                this.f17599n = disposable;
                Observer<? super V> observer = this.f15214g;
                try {
                    U call = this.f17597l.call();
                    ObjectHelper.m4363e(call, "The buffer supplied is null");
                    this.f17601p = call;
                    try {
                        Object call2 = this.f17598m.call();
                        ObjectHelper.m4363e(call2, "The boundary ObservableSource supplied is null");
                        ObservableSource observableSource = (ObservableSource) call2;
                        BufferBoundaryObserver bufferBoundaryObserver = new BufferBoundaryObserver(this);
                        this.f17600o.set(bufferBoundaryObserver);
                        observer.onSubscribe(this);
                        if (!this.f15216i) {
                            observableSource.subscribe(bufferBoundaryObserver);
                        }
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        this.f15216i = true;
                        disposable.dispose();
                        EmptyDisposable.error(th, observer);
                    }
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    this.f15216i = true;
                    disposable.dispose();
                    EmptyDisposable.error(th2, observer);
                }
            }
        }
    }

    public ObservableBufferBoundarySupplier(ObservableSource<T> observableSource, Callable<? extends ObservableSource<B>> callable, Callable<U> callable2) {
        super(observableSource);
        this.f17593g = callable;
        this.f17594h = callable2;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super U> observer) {
        this.f17497f.subscribe(new BufferBoundarySupplierObserver(new SerializedObserver(observer), this.f17594h, this.f17593g));
    }
}
