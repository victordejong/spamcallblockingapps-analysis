package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.annotations.Nullable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.QueueDisposable;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDoFinally.class */
public final class ObservableDoFinally<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final Action f17839g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver.class */
    static final class DoFinallyObserver<T> extends BasicIntQueueDisposable<T> implements Observer<T> {
        private static final long serialVersionUID = 4109457741734051389L;

        /* renamed from: f */
        final Observer<? super T> f17840f;

        /* renamed from: g */
        final Action f17841g;

        /* renamed from: h */
        Disposable f17842h;

        /* renamed from: i */
        QueueDisposable<T> f17843i;

        /* renamed from: j */
        boolean f17844j;

        DoFinallyObserver(Observer<? super T> observer, Action action) {
            this.f17840f = observer;
            this.f17841g = action;
        }

        /* renamed from: a */
        void m3852a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f17841g.run();
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    RxJavaPlugins.m3354t(th);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f17843i.clear();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17842h.dispose();
            m3852a();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17842h.isDisposed();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f17843i.isEmpty();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17840f.onComplete();
            m3852a();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f17840f.onError(th);
            m3852a();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f17840f.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17842h, disposable)) {
                this.f17842h = disposable;
                if (disposable instanceof QueueDisposable) {
                    this.f17843i = (QueueDisposable) disposable;
                }
                this.f17840f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            T poll = this.f17843i.poll();
            if (poll == null && this.f17844j) {
                m3852a();
            }
            return poll;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            QueueDisposable<T> queueDisposable = this.f17843i;
            boolean z = false;
            if (queueDisposable == null || (i & 4) != 0) {
                return 0;
            }
            int requestFusion = queueDisposable.requestFusion(i);
            if (requestFusion != 0) {
                if (requestFusion == 1) {
                    z = true;
                }
                this.f17844j = z;
            }
            return requestFusion;
        }
    }

    public ObservableDoFinally(ObservableSource<T> observableSource, Action action) {
        super(observableSource);
        this.f17839g = action;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new DoFinallyObserver(observer, this.f17839g));
    }
}
