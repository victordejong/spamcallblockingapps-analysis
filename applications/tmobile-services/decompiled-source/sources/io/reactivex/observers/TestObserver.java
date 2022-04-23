package io.reactivex.observers;

import io.reactivex.CompletableObserver;
import io.reactivex.MaybeObserver;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.QueueDisposable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/observers/TestObserver.class */
public class TestObserver<T> extends BaseTestConsumer<T, TestObserver<T>> implements Observer<T>, Disposable, MaybeObserver<T>, SingleObserver<T>, CompletableObserver {

    /* renamed from: m */
    private final Observer<? super T> f19467m;

    /* renamed from: n */
    private final AtomicReference<Disposable> f19468n;

    /* renamed from: o */
    private QueueDisposable<T> f19469o;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/observers/TestObserver$EmptyObserver.class */
    enum EmptyObserver implements Observer<Object> {
        INSTANCE;

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
        }
    }

    public TestObserver() {
        this(EmptyObserver.INSTANCE);
    }

    public TestObserver(Observer<? super T> observer) {
        this.f19468n = new AtomicReference<>();
        this.f19467m = observer;
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        DisposableHelper.dispose(this.f19468n);
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f19468n.get());
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (!this.f19442j) {
            this.f19442j = true;
            if (this.f19468n.get() == null) {
                this.f19440h.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            Thread.currentThread();
            this.f19441i++;
            this.f19467m.onComplete();
        } finally {
            this.f19438f.countDown();
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        if (!this.f19442j) {
            this.f19442j = true;
            if (this.f19468n.get() == null) {
                this.f19440h.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            Thread.currentThread();
            if (th == null) {
                this.f19440h.add(new NullPointerException("onError received a null Throwable"));
            } else {
                this.f19440h.add(th);
            }
            this.f19467m.onError(th);
        } finally {
            this.f19438f.countDown();
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        if (!this.f19442j) {
            this.f19442j = true;
            if (this.f19468n.get() == null) {
                this.f19440h.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        Thread.currentThread();
        if (this.f19444l == 2) {
            while (true) {
                try {
                    T poll = this.f19469o.poll();
                    if (poll != null) {
                        this.f19439g.add(poll);
                    } else {
                        return;
                    }
                } catch (Throwable th) {
                    this.f19440h.add(th);
                    this.f19469o.dispose();
                    return;
                }
            }
        } else {
            this.f19439g.add(t);
            if (t == null) {
                this.f19440h.add(new NullPointerException("onNext received a null value"));
            }
            this.f19467m.onNext(t);
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        Thread.currentThread();
        if (disposable == null) {
            this.f19440h.add(new NullPointerException("onSubscribe received a null Subscription"));
        } else if (!this.f19468n.compareAndSet(null, disposable)) {
            disposable.dispose();
            if (this.f19468n.get() != DisposableHelper.DISPOSED) {
                this.f19440h.add(new IllegalStateException("onSubscribe received multiple subscriptions: " + disposable));
            }
        } else {
            int i = this.f19443k;
            if (i != 0 && (disposable instanceof QueueDisposable)) {
                QueueDisposable<T> queueDisposable = (QueueDisposable) disposable;
                this.f19469o = queueDisposable;
                int requestFusion = queueDisposable.requestFusion(i);
                this.f19444l = requestFusion;
                if (requestFusion == 1) {
                    this.f19442j = true;
                    Thread.currentThread();
                    while (true) {
                        try {
                            T poll = this.f19469o.poll();
                            if (poll != null) {
                                this.f19439g.add(poll);
                            } else {
                                this.f19441i++;
                                this.f19468n.lazySet(DisposableHelper.DISPOSED);
                                return;
                            }
                        } catch (Throwable th) {
                            this.f19440h.add(th);
                            return;
                        }
                    }
                }
            }
            this.f19467m.onSubscribe(disposable);
        }
    }

    @Override // io.reactivex.MaybeObserver
    public void onSuccess(T t) {
        onNext(t);
        onComplete();
    }
}
