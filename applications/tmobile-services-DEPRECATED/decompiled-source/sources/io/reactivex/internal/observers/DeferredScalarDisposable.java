package io.reactivex.internal.observers;

import io.reactivex.Observer;
import io.reactivex.annotations.Nullable;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/observers/DeferredScalarDisposable.class */
public class DeferredScalarDisposable<T> extends BasicIntQueueDisposable<T> {
    private static final long serialVersionUID = -5502432239815349361L;

    /* renamed from: f */
    protected final Observer<? super T> f15188f;

    /* renamed from: g */
    protected T f15189g;

    public DeferredScalarDisposable(Observer<? super T> observer) {
        this.f15188f = observer;
    }

    /* renamed from: a */
    public final void m4351a() {
        if ((get() & 54) == 0) {
            lazySet(2);
            this.f15188f.onComplete();
        }
    }

    /* renamed from: b */
    public final void m4350b(T t) {
        int i = get();
        if ((i & 54) == 0) {
            Observer<? super T> observer = this.f15188f;
            if (i == 8) {
                this.f15189g = t;
                lazySet(16);
                observer.onNext(null);
            } else {
                lazySet(2);
                observer.onNext(t);
            }
            if (get() != 4) {
                observer.onComplete();
            }
        }
    }

    /* renamed from: c */
    public final void m4349c(Throwable th) {
        if ((get() & 54) != 0) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        lazySet(2);
        this.f15188f.onError(th);
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final void clear() {
        lazySet(32);
        this.f15189g = null;
    }

    /* renamed from: d */
    public final boolean m4348d() {
        return getAndSet(4) != 4;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        set(4);
        this.f15189g = null;
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return get() == 4;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    @Nullable
    public final T poll() throws Exception {
        if (get() != 16) {
            return null;
        }
        T t = this.f15189g;
        this.f15189g = null;
        lazySet(32);
        return t;
    }

    @Override // io.reactivex.internal.fuseable.QueueFuseable
    public final int requestFusion(int i) {
        if ((i & 2) == 0) {
            return 0;
        }
        lazySet(8);
        return 2;
    }
}
