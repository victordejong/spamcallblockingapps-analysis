package io.reactivex.subjects;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/UnicastSubject.class */
public final class UnicastSubject<T> extends Subject<T> {

    /* renamed from: f */
    final SpscLinkedArrayQueue<T> f19772f;

    /* renamed from: g */
    final AtomicReference<Observer<? super T>> f19773g;

    /* renamed from: h */
    final AtomicReference<Runnable> f19774h;

    /* renamed from: i */
    final boolean f19775i;

    /* renamed from: j */
    volatile boolean f19776j;

    /* renamed from: k */
    volatile boolean f19777k;

    /* renamed from: l */
    Throwable f19778l;

    /* renamed from: m */
    final AtomicBoolean f19779m;

    /* renamed from: n */
    final BasicIntQueueDisposable<T> f19780n;

    /* renamed from: o */
    boolean f19781o;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/UnicastSubject$UnicastQueueDisposable.class */
    final class UnicastQueueDisposable extends BasicIntQueueDisposable<T> {
        private static final long serialVersionUID = 7926949470189395511L;

        UnicastQueueDisposable() {
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            UnicastSubject.this.f19772f.clear();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!UnicastSubject.this.f19776j) {
                UnicastSubject.this.f19776j = true;
                UnicastSubject.this.m3182h();
                UnicastSubject.this.f19773g.lazySet(null);
                if (UnicastSubject.this.f19780n.getAndIncrement() == 0) {
                    UnicastSubject.this.f19773g.lazySet(null);
                    UnicastSubject unicastSubject = UnicastSubject.this;
                    if (!unicastSubject.f19781o) {
                        unicastSubject.f19772f.clear();
                    }
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return UnicastSubject.this.f19776j;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return UnicastSubject.this.f19772f.isEmpty();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            return UnicastSubject.this.f19772f.poll();
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            UnicastSubject.this.f19781o = true;
            return 2;
        }
    }

    UnicastSubject(int i, Runnable runnable, boolean z) {
        ObjectHelper.m4362f(i, "capacityHint");
        this.f19772f = new SpscLinkedArrayQueue<>(i);
        ObjectHelper.m4363e(runnable, "onTerminate");
        this.f19774h = new AtomicReference<>(runnable);
        this.f19775i = z;
        this.f19773g = new AtomicReference<>();
        this.f19779m = new AtomicBoolean();
        this.f19780n = new UnicastQueueDisposable();
    }

    UnicastSubject(int i, boolean z) {
        ObjectHelper.m4362f(i, "capacityHint");
        this.f19772f = new SpscLinkedArrayQueue<>(i);
        this.f19774h = new AtomicReference<>();
        this.f19775i = z;
        this.f19773g = new AtomicReference<>();
        this.f19779m = new AtomicBoolean();
        this.f19780n = new UnicastQueueDisposable();
    }

    @CheckReturnValue
    @NonNull
    /* renamed from: e */
    public static <T> UnicastSubject<T> m3185e() {
        return new UnicastSubject<>(Observable.bufferSize(), true);
    }

    @CheckReturnValue
    @NonNull
    /* renamed from: f */
    public static <T> UnicastSubject<T> m3184f(int i) {
        return new UnicastSubject<>(i, true);
    }

    @CheckReturnValue
    @NonNull
    /* renamed from: g */
    public static <T> UnicastSubject<T> m3183g(int i, Runnable runnable) {
        return new UnicastSubject<>(i, runnable, true);
    }

    /* renamed from: h */
    void m3182h() {
        Runnable runnable = this.f19774h.get();
        if (runnable != null && this.f19774h.compareAndSet(runnable, null)) {
            runnable.run();
        }
    }

    /* renamed from: i */
    void m3181i() {
        if (this.f19780n.getAndIncrement() == 0) {
            Observer<? super T> observer = this.f19773g.get();
            int i = 1;
            while (observer == null) {
                i = this.f19780n.addAndGet(-i);
                if (i != 0) {
                    observer = this.f19773g.get();
                } else {
                    return;
                }
            }
            if (this.f19781o) {
                m3180j(observer);
            } else {
                m3179k(observer);
            }
        }
    }

    /* renamed from: j */
    void m3180j(Observer<? super T> observer) {
        SpscLinkedArrayQueue<T> spscLinkedArrayQueue = this.f19772f;
        boolean z = this.f19775i;
        int i = 1;
        while (!this.f19776j) {
            boolean z2 = this.f19777k;
            if (!(!z) || !z2 || !m3177m(spscLinkedArrayQueue, observer)) {
                observer.onNext(null);
                if (z2) {
                    m3178l(observer);
                    return;
                }
                int addAndGet = this.f19780n.addAndGet(-i);
                i = addAndGet;
                if (addAndGet == 0) {
                    return;
                }
            } else {
                return;
            }
        }
        this.f19773g.lazySet(null);
    }

    /* renamed from: k */
    void m3179k(Observer<? super T> observer) {
        SpscLinkedArrayQueue<T> spscLinkedArrayQueue = this.f19772f;
        boolean z = this.f19775i;
        boolean z2 = true;
        int i = 1;
        while (!this.f19776j) {
            boolean z3 = this.f19777k;
            Object obj = (T) this.f19772f.poll();
            boolean z4 = obj == null;
            boolean z5 = z2;
            if (z3) {
                z5 = z2;
                if (!z) {
                    z5 = z2;
                    if (z2) {
                        if (!m3177m(spscLinkedArrayQueue, observer)) {
                            z5 = false;
                        } else {
                            return;
                        }
                    }
                }
                if (z4) {
                    m3178l(observer);
                    return;
                }
            }
            if (z4) {
                int addAndGet = this.f19780n.addAndGet(-i);
                z2 = z5;
                i = addAndGet;
                if (addAndGet == 0) {
                    return;
                }
            } else {
                observer.onNext(obj);
                z2 = z5;
            }
        }
        this.f19773g.lazySet(null);
        spscLinkedArrayQueue.clear();
    }

    /* renamed from: l */
    void m3178l(Observer<? super T> observer) {
        this.f19773g.lazySet(null);
        Throwable th = this.f19778l;
        if (th != null) {
            observer.onError(th);
        } else {
            observer.onComplete();
        }
    }

    /* renamed from: m */
    boolean m3177m(SimpleQueue<T> simpleQueue, Observer<? super T> observer) {
        Throwable th = this.f19778l;
        if (th == null) {
            return false;
        }
        this.f19773g.lazySet(null);
        simpleQueue.clear();
        observer.onError(th);
        return true;
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (!this.f19777k && !this.f19776j) {
            this.f19777k = true;
            m3182h();
            m3181i();
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        ObjectHelper.m4363e(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f19777k || this.f19776j) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        this.f19778l = th;
        this.f19777k = true;
        m3182h();
        m3181i();
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        ObjectHelper.m4363e(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f19777k && !this.f19776j) {
            this.f19772f.offer(t);
            m3181i();
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (this.f19777k || this.f19776j) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        if (this.f19779m.get() || !this.f19779m.compareAndSet(false, true)) {
            EmptyDisposable.error(new IllegalStateException("Only a single observer allowed."), observer);
            return;
        }
        observer.onSubscribe(this.f19780n);
        this.f19773g.lazySet(observer);
        if (this.f19776j) {
            this.f19773g.lazySet(null);
        } else {
            m3181i();
        }
    }
}
