package io.reactivex.subjects;

import io.reactivex.Observer;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.plugins.RxJavaPlugins;
import java.lang.reflect.Array;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/BehaviorSubject.class */
public final class BehaviorSubject<T> extends Subject<T> {
    long index;
    final ReadWriteLock lock;
    final Lock readLock;
    final AtomicReference<BehaviorDisposable<T>[]> subscribers;
    final AtomicReference<Throwable> terminalEvent;
    final AtomicReference<Object> value;
    final Lock writeLock;
    private static final Object[] EMPTY_ARRAY = new Object[0];
    static final BehaviorDisposable[] EMPTY = new BehaviorDisposable[0];
    static final BehaviorDisposable[] TERMINATED = new BehaviorDisposable[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/BehaviorSubject$BehaviorDisposable.class */
    public static final class BehaviorDisposable<T> implements Disposable, AppendOnlyLinkedArrayList.NonThrowingPredicate<Object> {
        final Observer<? super T> actual;
        volatile boolean cancelled;
        boolean emitting;
        boolean fastPath;
        long index;
        boolean next;
        AppendOnlyLinkedArrayList<Object> queue;
        final BehaviorSubject<T> state;

        BehaviorDisposable(Observer<? super T> observer, BehaviorSubject<T> behaviorSubject) {
            this.actual = observer;
            this.state = behaviorSubject;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.state.remove(this);
            }
        }

        void emitFirst() {
            if (!this.cancelled) {
                synchronized (this) {
                    if (!this.cancelled) {
                        if (!this.next) {
                            BehaviorSubject<T> behaviorSubject = this.state;
                            Lock lock = behaviorSubject.readLock;
                            lock.lock();
                            this.index = behaviorSubject.index;
                            Object obj = behaviorSubject.value.get();
                            lock.unlock();
                            this.emitting = obj != null;
                            this.next = true;
                            if (obj != null && !test(obj)) {
                                emitLoop();
                            }
                        }
                    }
                }
            }
        }

        void emitLoop() {
            AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList;
            while (!this.cancelled) {
                synchronized (this) {
                    appendOnlyLinkedArrayList = this.queue;
                    if (appendOnlyLinkedArrayList == null) {
                        this.emitting = false;
                        return;
                    }
                    this.queue = null;
                }
                appendOnlyLinkedArrayList.forEachWhile(this);
            }
        }

        void emitNext(Object obj, long j) {
            if (!this.cancelled) {
                if (!this.fastPath) {
                    synchronized (this) {
                        if (!this.cancelled) {
                            if (this.index != j) {
                                if (this.emitting) {
                                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.queue;
                                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList2 = appendOnlyLinkedArrayList;
                                    if (appendOnlyLinkedArrayList == null) {
                                        appendOnlyLinkedArrayList2 = new AppendOnlyLinkedArrayList<>(4);
                                        this.queue = appendOnlyLinkedArrayList2;
                                    }
                                    appendOnlyLinkedArrayList2.add(obj);
                                    return;
                                }
                                this.next = true;
                                this.fastPath = true;
                            } else {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                }
                test(obj);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override // io.reactivex.internal.util.AppendOnlyLinkedArrayList.NonThrowingPredicate, io.reactivex.functions.Predicate
        public boolean test(Object obj) {
            return this.cancelled || NotificationLite.accept(obj, this.actual);
        }
    }

    BehaviorSubject() {
        this.lock = new ReentrantReadWriteLock();
        this.readLock = this.lock.readLock();
        this.writeLock = this.lock.writeLock();
        this.subscribers = new AtomicReference<>(EMPTY);
        this.value = new AtomicReference<>();
        this.terminalEvent = new AtomicReference<>();
    }

    BehaviorSubject(T t) {
        this();
        this.value.lazySet(ObjectHelper.requireNonNull(t, "defaultValue is null"));
    }

    @CheckReturnValue
    public static <T> BehaviorSubject<T> create() {
        return new BehaviorSubject<>();
    }

    @CheckReturnValue
    public static <T> BehaviorSubject<T> createDefault(T t) {
        return new BehaviorSubject<>(t);
    }

    boolean add(BehaviorDisposable<T> behaviorDisposable) {
        BehaviorDisposable<T>[] behaviorDisposableArr;
        BehaviorDisposable<T>[] behaviorDisposableArr2;
        do {
            behaviorDisposableArr = this.subscribers.get();
            if (behaviorDisposableArr == TERMINATED) {
                return false;
            }
            int length = behaviorDisposableArr.length;
            behaviorDisposableArr2 = new BehaviorDisposable[length + 1];
            System.arraycopy(behaviorDisposableArr, 0, behaviorDisposableArr2, 0, length);
            behaviorDisposableArr2[length] = behaviorDisposable;
        } while (!this.subscribers.compareAndSet(behaviorDisposableArr, behaviorDisposableArr2));
        return true;
    }

    @Override // io.reactivex.subjects.Subject
    public Throwable getThrowable() {
        Object obj = this.value.get();
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    public T getValue() {
        Object obj = this.value.get();
        if (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) {
            return null;
        }
        return (T) NotificationLite.getValue(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object[] getValues() {
        Object[] values = getValues(EMPTY_ARRAY);
        return values == EMPTY_ARRAY ? new Object[0] : values;
    }

    public T[] getValues(T[] tArr) {
        T[] tArr2;
        Object obj = this.value.get();
        if (obj == null || NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) {
            if (tArr.length != 0) {
                tArr[0] = 0;
            }
            return tArr;
        }
        Object value = NotificationLite.getValue(obj);
        if (tArr.length != 0) {
            tArr[0] = value;
            tArr2 = tArr;
            if (tArr.length != 1) {
                tArr[1] = 0;
                tArr2 = tArr;
            }
        } else {
            tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), 1));
            tArr2[0] = value;
        }
        return tArr2;
    }

    @Override // io.reactivex.subjects.Subject
    public boolean hasComplete() {
        return NotificationLite.isComplete(this.value.get());
    }

    @Override // io.reactivex.subjects.Subject
    public boolean hasObservers() {
        return this.subscribers.get().length != 0;
    }

    @Override // io.reactivex.subjects.Subject
    public boolean hasThrowable() {
        return NotificationLite.isError(this.value.get());
    }

    public boolean hasValue() {
        Object obj = this.value.get();
        return obj != null && !NotificationLite.isComplete(obj) && !NotificationLite.isError(obj);
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (this.terminalEvent.compareAndSet(null, ExceptionHelper.TERMINATED)) {
            Object complete = NotificationLite.complete();
            for (BehaviorDisposable<T> behaviorDisposable : terminate(complete)) {
                behaviorDisposable.emitNext(complete, this.index);
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        Throwable th2 = th;
        if (th == null) {
            th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        }
        if (!this.terminalEvent.compareAndSet(null, th2)) {
            RxJavaPlugins.onError(th2);
            return;
        }
        Object error = NotificationLite.error(th2);
        for (BehaviorDisposable<T> behaviorDisposable : terminate(error)) {
            behaviorDisposable.emitNext(error, this.index);
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        if (t == null) {
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
        } else if (this.terminalEvent.get() == null) {
            Object next = NotificationLite.next(t);
            setCurrent(next);
            for (BehaviorDisposable<T> behaviorDisposable : this.subscribers.get()) {
                behaviorDisposable.emitNext(next, this.index);
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (this.terminalEvent.get() != null) {
            disposable.dispose();
        }
    }

    void remove(BehaviorDisposable<T> behaviorDisposable) {
        BehaviorDisposable<T>[] behaviorDisposableArr;
        BehaviorDisposable<T>[] behaviorDisposableArr2;
        do {
            behaviorDisposableArr = this.subscribers.get();
            if (behaviorDisposableArr != TERMINATED && behaviorDisposableArr != EMPTY) {
                int length = behaviorDisposableArr.length;
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
                        behaviorDisposableArr2 = EMPTY;
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
        } while (!this.subscribers.compareAndSet(behaviorDisposableArr, behaviorDisposableArr2));
    }

    void setCurrent(Object obj) {
        this.writeLock.lock();
        try {
            this.index++;
            this.value.lazySet(obj);
        } finally {
            this.writeLock.unlock();
        }
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        BehaviorDisposable<T> behaviorDisposable = new BehaviorDisposable<>(observer, this);
        observer.onSubscribe(behaviorDisposable);
        if (!add(behaviorDisposable)) {
            Throwable th = this.terminalEvent.get();
            if (th == ExceptionHelper.TERMINATED) {
                observer.onComplete();
            } else {
                observer.onError(th);
            }
        } else if (behaviorDisposable.cancelled) {
            remove(behaviorDisposable);
        } else {
            behaviorDisposable.emitFirst();
        }
    }

    int subscriberCount() {
        return this.subscribers.get().length;
    }

    BehaviorDisposable<T>[] terminate(Object obj) {
        BehaviorDisposable<T>[] behaviorDisposableArr = this.subscribers.get();
        BehaviorDisposable<T>[] behaviorDisposableArr2 = behaviorDisposableArr;
        if (behaviorDisposableArr != TERMINATED) {
            BehaviorDisposable<T>[] andSet = this.subscribers.getAndSet(TERMINATED);
            behaviorDisposableArr2 = andSet;
            if (andSet != TERMINATED) {
                setCurrent(obj);
                behaviorDisposableArr2 = andSet;
            }
        }
        return behaviorDisposableArr2;
    }
}
