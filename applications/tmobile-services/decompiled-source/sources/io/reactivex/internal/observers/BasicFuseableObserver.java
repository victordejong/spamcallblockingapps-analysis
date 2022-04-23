package io.reactivex.internal.observers;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.QueueDisposable;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/observers/BasicFuseableObserver.class */
public abstract class BasicFuseableObserver<T, R> implements Observer<T>, QueueDisposable<R> {

    /* renamed from: f */
    protected final Observer<? super R> f15168f;

    /* renamed from: g */
    protected Disposable f15169g;

    /* renamed from: h */
    protected QueueDisposable<T> f15170h;

    /* renamed from: i */
    protected boolean f15171i;

    /* renamed from: j */
    protected int f15172j;

    public BasicFuseableObserver(Observer<? super R> observer) {
        this.f15168f = observer;
    }

    /* renamed from: a */
    protected void m4359a() {
    }

    /* renamed from: b */
    protected boolean m4358b() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final void m4357c(Throwable th) {
        Exceptions.m4428b(th);
        this.f15169g.dispose();
        onError(th);
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public void clear() {
        this.f15170h.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public final int m4356d(int i) {
        QueueDisposable<T> queueDisposable = this.f15170h;
        if (queueDisposable == null || (i & 4) != 0) {
            return 0;
        }
        int requestFusion = queueDisposable.requestFusion(i);
        if (requestFusion != 0) {
            this.f15172j = requestFusion;
        }
        return requestFusion;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        this.f15169g.dispose();
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f15169g.isDisposed();
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean isEmpty() {
        return this.f15170h.isEmpty();
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final boolean offer(R r) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (!this.f15171i) {
            this.f15171i = true;
            this.f15168f.onComplete();
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        if (this.f15171i) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        this.f15171i = true;
        this.f15168f.onError(th);
    }

    @Override // io.reactivex.Observer
    public final void onSubscribe(Disposable disposable) {
        if (DisposableHelper.validate(this.f15169g, disposable)) {
            this.f15169g = disposable;
            if (disposable instanceof QueueDisposable) {
                this.f15170h = (QueueDisposable) disposable;
            }
            if (m4358b()) {
                this.f15168f.onSubscribe(this);
                m4359a();
            }
        }
    }
}
