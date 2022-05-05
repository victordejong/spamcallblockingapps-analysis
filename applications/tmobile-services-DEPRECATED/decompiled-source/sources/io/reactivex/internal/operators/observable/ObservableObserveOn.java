package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.annotations.Nullable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.QueueDisposable;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.schedulers.TrampolineScheduler;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableObserveOn.class */
public final class ObservableObserveOn<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final Scheduler f18168g;

    /* renamed from: h */
    final boolean f18169h;

    /* renamed from: i */
    final int f18170i;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver.class */
    static final class ObserveOnObserver<T> extends BasicIntQueueDisposable<T> implements Observer<T>, Runnable {
        private static final long serialVersionUID = 6576896619930983584L;

        /* renamed from: f */
        final Observer<? super T> f18171f;

        /* renamed from: g */
        final Scheduler.Worker f18172g;

        /* renamed from: h */
        final boolean f18173h;

        /* renamed from: i */
        final int f18174i;

        /* renamed from: j */
        SimpleQueue<T> f18175j;

        /* renamed from: k */
        Disposable f18176k;

        /* renamed from: l */
        Throwable f18177l;

        /* renamed from: m */
        volatile boolean f18178m;

        /* renamed from: n */
        volatile boolean f18179n;

        /* renamed from: o */
        int f18180o;

        /* renamed from: p */
        boolean f18181p;

        ObserveOnObserver(Observer<? super T> observer, Scheduler.Worker worker, boolean z, int i) {
            this.f18171f = observer;
            this.f18172g = worker;
            this.f18173h = z;
            this.f18174i = i;
        }

        /* renamed from: a */
        boolean m3758a(boolean z, boolean z2, Observer<? super T> observer) {
            if (this.f18179n) {
                this.f18175j.clear();
                return true;
            } else if (!z) {
                return false;
            } else {
                Throwable th = this.f18177l;
                if (this.f18173h) {
                    if (!z2) {
                        return false;
                    }
                    this.f18179n = true;
                    if (th != null) {
                        observer.onError(th);
                    } else {
                        observer.onComplete();
                    }
                    this.f18172g.dispose();
                    return true;
                } else if (th != null) {
                    this.f18179n = true;
                    this.f18175j.clear();
                    observer.onError(th);
                    this.f18172g.dispose();
                    return true;
                } else if (!z2) {
                    return false;
                } else {
                    this.f18179n = true;
                    observer.onComplete();
                    this.f18172g.dispose();
                    return true;
                }
            }
        }

        /* renamed from: b */
        void m3757b() {
            int i = 1;
            while (!this.f18179n) {
                boolean z = this.f18178m;
                Throwable th = this.f18177l;
                if (this.f18173h || !z || th == null) {
                    this.f18171f.onNext(null);
                    if (z) {
                        this.f18179n = true;
                        Throwable th2 = this.f18177l;
                        if (th2 != null) {
                            this.f18171f.onError(th2);
                        } else {
                            this.f18171f.onComplete();
                        }
                        this.f18172g.dispose();
                        return;
                    }
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                } else {
                    this.f18179n = true;
                    this.f18171f.onError(this.f18177l);
                    this.f18172g.dispose();
                    return;
                }
            }
        }

        /* renamed from: c */
        void m3756c() {
            SimpleQueue<T> simpleQueue = this.f18175j;
            Observer<? super T> observer = this.f18171f;
            int i = 1;
            while (!m3758a(this.f18178m, simpleQueue.isEmpty(), observer)) {
                while (true) {
                    boolean z = this.f18178m;
                    try {
                        Object obj = (T) simpleQueue.poll();
                        boolean z2 = obj == null;
                        if (!m3758a(z, z2, observer)) {
                            if (z2) {
                                int addAndGet = addAndGet(-i);
                                i = addAndGet;
                                if (addAndGet == 0) {
                                    return;
                                }
                            } else {
                                observer.onNext(obj);
                            }
                        } else {
                            return;
                        }
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        this.f18179n = true;
                        this.f18176k.dispose();
                        simpleQueue.clear();
                        observer.onError(th);
                        this.f18172g.dispose();
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f18175j.clear();
        }

        /* renamed from: d */
        void m3755d() {
            if (getAndIncrement() == 0) {
                this.f18172g.mo3229b(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f18179n) {
                this.f18179n = true;
                this.f18176k.dispose();
                this.f18172g.dispose();
                if (!this.f18181p && getAndIncrement() == 0) {
                    this.f18175j.clear();
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18179n;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f18175j.isEmpty();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f18178m) {
                this.f18178m = true;
                m3755d();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18178m) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18177l = th;
            this.f18178m = true;
            m3755d();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f18178m) {
                if (this.f18180o != 2) {
                    this.f18175j.offer(t);
                }
                m3755d();
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18176k, disposable)) {
                this.f18176k = disposable;
                if (disposable instanceof QueueDisposable) {
                    QueueDisposable queueDisposable = (QueueDisposable) disposable;
                    int requestFusion = queueDisposable.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f18180o = requestFusion;
                        this.f18175j = queueDisposable;
                        this.f18178m = true;
                        this.f18171f.onSubscribe(this);
                        m3755d();
                        return;
                    } else if (requestFusion == 2) {
                        this.f18180o = requestFusion;
                        this.f18175j = queueDisposable;
                        this.f18171f.onSubscribe(this);
                        return;
                    }
                }
                this.f18175j = new SpscLinkedArrayQueue(this.f18174i);
                this.f18171f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            return this.f18175j.poll();
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.f18181p = true;
            return 2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f18181p) {
                m3757b();
            } else {
                m3756c();
            }
        }
    }

    public ObservableObserveOn(ObservableSource<T> observableSource, Scheduler scheduler, boolean z, int i) {
        super(observableSource);
        this.f18168g = scheduler;
        this.f18169h = z;
        this.f18170i = i;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        Scheduler scheduler = this.f18168g;
        if (scheduler instanceof TrampolineScheduler) {
            this.f17497f.subscribe(observer);
            return;
        }
        this.f17497f.subscribe(new ObserveOnObserver(observer, scheduler.mo3232b(), this.f18169h, this.f18170i));
    }
}
