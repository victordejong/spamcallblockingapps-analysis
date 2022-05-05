package io.reactivex.subjects;

import io.reactivex.Observer;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/BehaviorSubject.class */
public final class BehaviorSubject<T> extends Subject<T> {

    /* renamed from: m */
    private static final Object[] f19695m = new Object[0];

    /* renamed from: n */
    static final BehaviorDisposable[] f19696n = new BehaviorDisposable[0];

    /* renamed from: o */
    static final BehaviorDisposable[] f19697o = new BehaviorDisposable[0];

    /* renamed from: h */
    final ReadWriteLock f19700h;

    /* renamed from: i */
    final Lock f19701i;

    /* renamed from: j */
    final Lock f19702j;

    /* renamed from: l */
    long f19704l;

    /* renamed from: g */
    final AtomicReference<BehaviorDisposable<T>[]> f19699g = new AtomicReference<>(f19696n);

    /* renamed from: f */
    final AtomicReference<Object> f19698f = new AtomicReference<>();

    /* renamed from: k */
    final AtomicReference<Throwable> f19703k = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/BehaviorSubject$BehaviorDisposable.class */
    public static final class BehaviorDisposable<T> implements Disposable, AppendOnlyLinkedArrayList.NonThrowingPredicate<Object> {

        /* renamed from: f */
        final Observer<? super T> f19705f;

        /* renamed from: g */
        final BehaviorSubject<T> f19706g;

        /* renamed from: h */
        boolean f19707h;

        /* renamed from: i */
        boolean f19708i;

        /* renamed from: j */
        AppendOnlyLinkedArrayList<Object> f19709j;

        /* renamed from: k */
        boolean f19710k;

        /* renamed from: l */
        volatile boolean f19711l;

        /* renamed from: m */
        long f19712m;

        BehaviorDisposable(Observer<? super T> observer, BehaviorSubject<T> behaviorSubject) {
            this.f19705f = observer;
            this.f19706g = behaviorSubject;
        }

        @Override // io.reactivex.internal.util.AppendOnlyLinkedArrayList.NonThrowingPredicate, io.reactivex.functions.Predicate
        /* renamed from: a */
        public boolean mo3191a(Object obj) {
            return this.f19711l || NotificationLite.accept(obj, this.f19705f);
        }

        /* renamed from: b */
        void m3217b() {
            if (!this.f19711l) {
                synchronized (this) {
                    if (!this.f19711l) {
                        if (!this.f19707h) {
                            BehaviorSubject<T> behaviorSubject = this.f19706g;
                            Lock lock = behaviorSubject.f19701i;
                            lock.lock();
                            this.f19712m = behaviorSubject.f19704l;
                            Object obj = behaviorSubject.f19698f.get();
                            lock.unlock();
                            this.f19708i = obj != null;
                            this.f19707h = true;
                            if (obj != null && !mo3191a(obj)) {
                                m3216c();
                            }
                        }
                    }
                }
            }
        }

        /* renamed from: c */
        void m3216c() {
            AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList;
            while (!this.f19711l) {
                synchronized (this) {
                    appendOnlyLinkedArrayList = this.f19709j;
                    if (appendOnlyLinkedArrayList == null) {
                        this.f19708i = false;
                        return;
                    }
                    this.f19709j = null;
                }
                appendOnlyLinkedArrayList.m3458d(this);
            }
        }

        /* renamed from: d */
        void m3215d(Object obj, long j) {
            if (!this.f19711l) {
                if (!this.f19710k) {
                    synchronized (this) {
                        if (!this.f19711l) {
                            if (this.f19712m != j) {
                                if (this.f19708i) {
                                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f19709j;
                                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList2 = appendOnlyLinkedArrayList;
                                    if (appendOnlyLinkedArrayList == null) {
                                        appendOnlyLinkedArrayList2 = new AppendOnlyLinkedArrayList<>(4);
                                        this.f19709j = appendOnlyLinkedArrayList2;
                                    }
                                    appendOnlyLinkedArrayList2.m3459c(obj);
                                    return;
                                }
                                this.f19707h = true;
                                this.f19710k = true;
                            } else {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                }
                mo3191a(obj);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f19711l) {
                this.f19711l = true;
                this.f19706g.m3220g(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19711l;
        }
    }

    BehaviorSubject() {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f19700h = reentrantReadWriteLock;
        this.f19701i = reentrantReadWriteLock.readLock();
        this.f19702j = this.f19700h.writeLock();
    }

    @CheckReturnValue
    @NonNull
    /* renamed from: f */
    public static <T> BehaviorSubject<T> m3221f() {
        return new BehaviorSubject<>();
    }

    /* renamed from: e */
    boolean m3222e(BehaviorDisposable<T> behaviorDisposable) {
        BehaviorDisposable<T>[] behaviorDisposableArr;
        BehaviorDisposable<T>[] behaviorDisposableArr2;
        do {
            behaviorDisposableArr = this.f19699g.get();
            if (behaviorDisposableArr == f19697o) {
                return false;
            }
            int length = behaviorDisposableArr.length;
            behaviorDisposableArr2 = new BehaviorDisposable[length + 1];
            System.arraycopy(behaviorDisposableArr, 0, behaviorDisposableArr2, 0, length);
            behaviorDisposableArr2[length] = behaviorDisposable;
        } while (!this.f19699g.compareAndSet(behaviorDisposableArr, behaviorDisposableArr2));
        return true;
    }

    /* renamed from: g */
    void m3220g(BehaviorDisposable<T> behaviorDisposable) {
        BehaviorDisposable<T>[] behaviorDisposableArr;
        BehaviorDisposable<T>[] behaviorDisposableArr2;
        do {
            behaviorDisposableArr = this.f19699g.get();
            int length = behaviorDisposableArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (behaviorDisposableArr[i2] == behaviorDisposable) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        behaviorDisposableArr2 = f19696n;
                    } else {
                        behaviorDisposableArr2 = new BehaviorDisposable[length - 1];
                        System.arraycopy(behaviorDisposableArr, 0, behaviorDisposableArr2, 0, i);
                        System.arraycopy(behaviorDisposableArr, i + 1, behaviorDisposableArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f19699g.compareAndSet(behaviorDisposableArr, behaviorDisposableArr2));
    }

    /* renamed from: h */
    void m3219h(Object obj) {
        this.f19702j.lock();
        this.f19704l++;
        this.f19698f.lazySet(obj);
        this.f19702j.unlock();
    }

    /* renamed from: i */
    BehaviorDisposable<T>[] m3218i(Object obj) {
        BehaviorDisposable<T>[] andSet = this.f19699g.getAndSet(f19697o);
        if (andSet != f19697o) {
            m3219h(obj);
        }
        return andSet;
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (this.f19703k.compareAndSet(null, ExceptionHelper.f19422a)) {
            Object complete = NotificationLite.complete();
            for (BehaviorDisposable<T> behaviorDisposable : m3218i(complete)) {
                behaviorDisposable.m3215d(complete, this.f19704l);
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        ObjectHelper.m4363e(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f19703k.compareAndSet(null, th)) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        Object error = NotificationLite.error(th);
        for (BehaviorDisposable<T> behaviorDisposable : m3218i(error)) {
            behaviorDisposable.m3215d(error, this.f19704l);
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        ObjectHelper.m4363e(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f19703k.get() == null) {
            Object next = NotificationLite.next(t);
            m3219h(next);
            for (BehaviorDisposable<T> behaviorDisposable : this.f19699g.get()) {
                behaviorDisposable.m3215d(next, this.f19704l);
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (this.f19703k.get() != null) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        BehaviorDisposable<T> behaviorDisposable = new BehaviorDisposable<>(observer, this);
        observer.onSubscribe(behaviorDisposable);
        if (!m3222e(behaviorDisposable)) {
            Throwable th = this.f19703k.get();
            if (th == ExceptionHelper.f19422a) {
                observer.onComplete();
            } else {
                observer.onError(th);
            }
        } else if (behaviorDisposable.f19711l) {
            m3220g(behaviorDisposable);
        } else {
            behaviorDisposable.m3217b();
        }
    }
}
