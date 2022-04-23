package io.reactivex.subjects;

import io.reactivex.Observer;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.observers.DeferredScalarDisposable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/AsyncSubject.class */
public final class AsyncSubject<T> extends Subject<T> {
    static final AsyncDisposable[] EMPTY = new AsyncDisposable[0];
    static final AsyncDisposable[] TERMINATED = new AsyncDisposable[0];
    Throwable error;
    final AtomicReference<AsyncDisposable<T>[]> subscribers = new AtomicReference<>(EMPTY);
    T value;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/AsyncSubject$AsyncDisposable.class */
    public static final class AsyncDisposable<T> extends DeferredScalarDisposable<T> {
        private static final long serialVersionUID = 5629876084736248016L;
        final AsyncSubject<T> parent;

        AsyncDisposable(Observer<? super T> observer, AsyncSubject<T> asyncSubject) {
            super(observer);
            this.parent = asyncSubject;
        }

        @Override // io.reactivex.internal.observers.DeferredScalarDisposable, io.reactivex.disposables.Disposable
        public void dispose() {
            if (super.tryDispose()) {
                this.parent.remove(this);
            }
        }

        void onComplete() {
            if (!isDisposed()) {
                this.actual.onComplete();
            }
        }

        void onError(Throwable th) {
            if (isDisposed()) {
                RxJavaPlugins.onError(th);
            } else {
                this.actual.onError(th);
            }
        }
    }

    AsyncSubject() {
    }

    @CheckReturnValue
    public static <T> AsyncSubject<T> create() {
        return new AsyncSubject<>();
    }

    boolean add(AsyncDisposable<T> asyncDisposable) {
        AsyncDisposable<T>[] asyncDisposableArr;
        AsyncDisposable<T>[] asyncDisposableArr2;
        do {
            asyncDisposableArr = this.subscribers.get();
            if (asyncDisposableArr == TERMINATED) {
                return false;
            }
            int length = asyncDisposableArr.length;
            asyncDisposableArr2 = new AsyncDisposable[length + 1];
            System.arraycopy(asyncDisposableArr, 0, asyncDisposableArr2, 0, length);
            asyncDisposableArr2[length] = asyncDisposable;
        } while (!this.subscribers.compareAndSet(asyncDisposableArr, asyncDisposableArr2));
        return true;
    }

    @Override // io.reactivex.subjects.Subject
    public Throwable getThrowable() {
        return this.subscribers.get() == TERMINATED ? this.error : null;
    }

    public T getValue() {
        return this.subscribers.get() == TERMINATED ? this.value : null;
    }

    public Object[] getValues() {
        T value = getValue();
        return value != null ? new Object[]{value} : new Object[0];
    }

    public T[] getValues(T[] tArr) {
        T value = getValue();
        if (value == null) {
            if (tArr.length != 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        T[] tArr2 = tArr;
        if (tArr.length == 0) {
            tArr2 = (T[]) Arrays.copyOf(tArr, 1);
        }
        tArr2[0] = value;
        if (tArr2.length != 1) {
            tArr2[1] = null;
        }
        return tArr2;
    }

    @Override // io.reactivex.subjects.Subject
    public boolean hasComplete() {
        return this.subscribers.get() == TERMINATED && this.error == null;
    }

    @Override // io.reactivex.subjects.Subject
    public boolean hasObservers() {
        return this.subscribers.get().length != 0;
    }

    @Override // io.reactivex.subjects.Subject
    public boolean hasThrowable() {
        return this.subscribers.get() == TERMINATED && this.error != null;
    }

    public boolean hasValue() {
        return this.subscribers.get() == TERMINATED && this.value != null;
    }

    void nullOnNext() {
        this.value = null;
        NullPointerException nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        this.error = nullPointerException;
        for (AsyncDisposable<T> asyncDisposable : this.subscribers.getAndSet(TERMINATED)) {
            asyncDisposable.onError(nullPointerException);
        }
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (this.subscribers.get() != TERMINATED) {
            T t = this.value;
            AsyncDisposable<T>[] andSet = this.subscribers.getAndSet(TERMINATED);
            if (t == null) {
                for (AsyncDisposable<T> asyncDisposable : andSet) {
                    asyncDisposable.onComplete();
                }
                return;
            }
            for (AsyncDisposable<T> asyncDisposable2 : andSet) {
                asyncDisposable2.complete(t);
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        Throwable th2 = th;
        if (th == null) {
            th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        }
        if (this.subscribers.get() == TERMINATED) {
            RxJavaPlugins.onError(th2);
            return;
        }
        this.value = null;
        this.error = th2;
        for (AsyncDisposable<T> asyncDisposable : this.subscribers.getAndSet(TERMINATED)) {
            asyncDisposable.onError(th2);
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        if (this.subscribers.get() != TERMINATED) {
            if (t == null) {
                nullOnNext();
            } else {
                this.value = t;
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (this.subscribers.get() == TERMINATED) {
            disposable.dispose();
        }
    }

    void remove(AsyncDisposable<T> asyncDisposable) {
        AsyncDisposable<T>[] asyncDisposableArr;
        AsyncDisposable<T>[] asyncDisposableArr2;
        do {
            asyncDisposableArr = this.subscribers.get();
            int length = asyncDisposableArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (asyncDisposableArr[i2] == asyncDisposable) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        asyncDisposableArr2 = EMPTY;
                    } else {
                        asyncDisposableArr2 = new AsyncDisposable[length - 1];
                        System.arraycopy(asyncDisposableArr, 0, asyncDisposableArr2, 0, i);
                        System.arraycopy(asyncDisposableArr, i + 1, asyncDisposableArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.subscribers.compareAndSet(asyncDisposableArr, asyncDisposableArr2));
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        AsyncDisposable<T> asyncDisposable = new AsyncDisposable<>(observer, this);
        observer.onSubscribe(asyncDisposable);
        if (!add(asyncDisposable)) {
            Throwable th = this.error;
            if (th != null) {
                observer.onError(th);
                return;
            }
            T t = this.value;
            if (t != null) {
                asyncDisposable.complete(t);
            } else {
                asyncDisposable.onComplete();
            }
        } else if (asyncDisposable.isDisposed()) {
            remove(asyncDisposable);
        }
    }
}
