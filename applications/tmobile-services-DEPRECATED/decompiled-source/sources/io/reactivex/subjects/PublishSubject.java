package io.reactivex.subjects;

import io.reactivex.Observer;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/PublishSubject.class */
public final class PublishSubject<T> extends Subject<T> {

    /* renamed from: h */
    static final PublishDisposable[] f19726h = new PublishDisposable[0];

    /* renamed from: i */
    static final PublishDisposable[] f19727i = new PublishDisposable[0];

    /* renamed from: f */
    final AtomicReference<PublishDisposable<T>[]> f19728f = new AtomicReference<>(f19727i);

    /* renamed from: g */
    Throwable f19729g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/PublishSubject$PublishDisposable.class */
    public static final class PublishDisposable<T> extends AtomicBoolean implements Disposable {
        private static final long serialVersionUID = 3562861878281475070L;

        /* renamed from: f */
        final Observer<? super T> f19730f;

        /* renamed from: g */
        final PublishSubject<T> f19731g;

        PublishDisposable(Observer<? super T> observer, PublishSubject<T> publishSubject) {
            this.f19730f = observer;
            this.f19731g = publishSubject;
        }

        /* renamed from: a */
        public void m3205a() {
            if (!get()) {
                this.f19730f.onComplete();
            }
        }

        /* renamed from: b */
        public void m3204b(Throwable th) {
            if (get()) {
                RxJavaPlugins.m3354t(th);
            } else {
                this.f19730f.onError(th);
            }
        }

        /* renamed from: c */
        public void m3203c(T t) {
            if (!get()) {
                this.f19730f.onNext(t);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.f19731g.m3206g(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get();
        }
    }

    PublishSubject() {
    }

    @CheckReturnValue
    @NonNull
    /* renamed from: f */
    public static <T> PublishSubject<T> m3207f() {
        return new PublishSubject<>();
    }

    /* renamed from: e */
    boolean m3208e(PublishDisposable<T> publishDisposable) {
        PublishDisposable<T>[] publishDisposableArr;
        PublishDisposable<T>[] publishDisposableArr2;
        do {
            publishDisposableArr = this.f19728f.get();
            if (publishDisposableArr == f19726h) {
                return false;
            }
            int length = publishDisposableArr.length;
            publishDisposableArr2 = new PublishDisposable[length + 1];
            System.arraycopy(publishDisposableArr, 0, publishDisposableArr2, 0, length);
            publishDisposableArr2[length] = publishDisposable;
        } while (!this.f19728f.compareAndSet(publishDisposableArr, publishDisposableArr2));
        return true;
    }

    /* renamed from: g */
    void m3206g(PublishDisposable<T> publishDisposable) {
        PublishDisposable<T>[] publishDisposableArr;
        PublishDisposable<T>[] publishDisposableArr2;
        do {
            publishDisposableArr = this.f19728f.get();
            if (publishDisposableArr != f19726h && publishDisposableArr != f19727i) {
                int length = publishDisposableArr.length;
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (publishDisposableArr[i2] == publishDisposable) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        publishDisposableArr2 = f19727i;
                    } else {
                        publishDisposableArr2 = new PublishDisposable[length - 1];
                        System.arraycopy(publishDisposableArr, 0, publishDisposableArr2, 0, i);
                        System.arraycopy(publishDisposableArr, i + 1, publishDisposableArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f19728f.compareAndSet(publishDisposableArr, publishDisposableArr2));
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        PublishDisposable<T>[] publishDisposableArr = this.f19728f.get();
        PublishDisposable<T>[] publishDisposableArr2 = f19726h;
        if (publishDisposableArr != publishDisposableArr2) {
            for (PublishDisposable<T> publishDisposable : this.f19728f.getAndSet(publishDisposableArr2)) {
                publishDisposable.m3205a();
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        ObjectHelper.m4363e(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        PublishDisposable<T>[] publishDisposableArr = this.f19728f.get();
        PublishDisposable<T>[] publishDisposableArr2 = f19726h;
        if (publishDisposableArr == publishDisposableArr2) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        this.f19729g = th;
        for (PublishDisposable<T> publishDisposable : this.f19728f.getAndSet(publishDisposableArr2)) {
            publishDisposable.m3204b(th);
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        ObjectHelper.m4363e(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        for (PublishDisposable<T> publishDisposable : this.f19728f.get()) {
            publishDisposable.m3203c(t);
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (this.f19728f.get() == f19726h) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        PublishDisposable<T> publishDisposable = new PublishDisposable<>(observer, this);
        observer.onSubscribe(publishDisposable);
        if (!m3208e(publishDisposable)) {
            Throwable th = this.f19729g;
            if (th != null) {
                observer.onError(th);
            } else {
                observer.onComplete();
            }
        } else if (publishDisposable.isDisposed()) {
            m3206g(publishDisposable);
        }
    }
}
