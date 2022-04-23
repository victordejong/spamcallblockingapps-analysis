package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.ResettableConnectable;
import io.reactivex.internal.fuseable.HasUpstreamObservableSource;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.observables.ConnectableObservable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservablePublishAlt.class */
public final class ObservablePublishAlt<T> extends ConnectableObservable<T> implements HasUpstreamObservableSource<T>, ResettableConnectable {

    /* renamed from: f */
    final ObservableSource<T> f18205f;

    /* renamed from: g */
    final AtomicReference<PublishConnection<T>> f18206g = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservablePublishAlt$InnerDisposable.class */
    public static final class InnerDisposable<T> extends AtomicReference<PublishConnection<T>> implements Disposable {
        private static final long serialVersionUID = 7463222674719692880L;

        /* renamed from: f */
        final Observer<? super T> f18207f;

        InnerDisposable(Observer<? super T> observer, PublishConnection<T> publishConnection) {
            this.f18207f = observer;
            lazySet(publishConnection);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            PublishConnection<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.m3749b(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == null;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservablePublishAlt$PublishConnection.class */
    static final class PublishConnection<T> extends AtomicReference<InnerDisposable<T>[]> implements Observer<T>, Disposable {

        /* renamed from: j */
        static final InnerDisposable[] f18208j = new InnerDisposable[0];

        /* renamed from: k */
        static final InnerDisposable[] f18209k = new InnerDisposable[0];
        private static final long serialVersionUID = -3251430252873581268L;

        /* renamed from: g */
        final AtomicReference<PublishConnection<T>> f18211g;

        /* renamed from: i */
        Throwable f18213i;

        /* renamed from: f */
        final AtomicBoolean f18210f = new AtomicBoolean();

        /* renamed from: h */
        final AtomicReference<Disposable> f18212h = new AtomicReference<>();

        PublishConnection(AtomicReference<PublishConnection<T>> atomicReference) {
            this.f18211g = atomicReference;
            lazySet(f18208j);
        }

        /* renamed from: a */
        public boolean m3750a(InnerDisposable<T> innerDisposable) {
            InnerDisposable<T>[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = get();
                if (innerDisposableArr == f18209k) {
                    return false;
                }
                int length = innerDisposableArr.length;
                innerDisposableArr2 = new InnerDisposable[length + 1];
                System.arraycopy(innerDisposableArr, 0, innerDisposableArr2, 0, length);
                innerDisposableArr2[length] = innerDisposable;
            } while (!compareAndSet(innerDisposableArr, innerDisposableArr2));
            return true;
        }

        /* renamed from: b */
        public void m3749b(InnerDisposable<T> innerDisposable) {
            InnerDisposable<T>[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = get();
                int length = innerDisposableArr.length;
                if (length != 0) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (innerDisposableArr[i2] == innerDisposable) {
                            i = i2;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i >= 0) {
                        innerDisposableArr2 = f18208j;
                        if (length != 1) {
                            innerDisposableArr2 = new InnerDisposable[length - 1];
                            System.arraycopy(innerDisposableArr, 0, innerDisposableArr2, 0, i);
                            System.arraycopy(innerDisposableArr, i + 1, innerDisposableArr2, i, (length - i) - 1);
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!compareAndSet(innerDisposableArr, innerDisposableArr2));
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            getAndSet(f18209k);
            this.f18211g.compareAndSet(this, null);
            DisposableHelper.dispose(this.f18212h);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == f18209k;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18212h.lazySet(DisposableHelper.DISPOSED);
            for (InnerDisposable<T> innerDisposable : getAndSet(f18209k)) {
                innerDisposable.f18207f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18213i = th;
            this.f18212h.lazySet(DisposableHelper.DISPOSED);
            for (InnerDisposable<T> innerDisposable : getAndSet(f18209k)) {
                innerDisposable.f18207f.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            for (InnerDisposable<T> innerDisposable : get()) {
                innerDisposable.f18207f.onNext(t);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f18212h, disposable);
        }
    }

    public ObservablePublishAlt(ObservableSource<T> observableSource) {
        this.f18205f = observableSource;
    }

    @Override // io.reactivex.internal.disposables.ResettableConnectable
    /* renamed from: b */
    public void mo3733b(Disposable disposable) {
        this.f18206g.compareAndSet((PublishConnection) disposable, null);
    }

    @Override // io.reactivex.observables.ConnectableObservable
    /* renamed from: d */
    public void mo3394d(Consumer<? super Disposable> consumer) {
        PublishConnection<T> publishConnection;
        PublishConnection<T> publishConnection2;
        do {
            publishConnection = this.f18206g.get();
            if (publishConnection != null) {
                publishConnection2 = publishConnection;
                if (!publishConnection.isDisposed()) {
                    break;
                }
            }
            publishConnection2 = new PublishConnection<>(this.f18206g);
        } while (!this.f18206g.compareAndSet(publishConnection, publishConnection2));
        boolean z = true;
        if (publishConnection2.f18210f.get() || !publishConnection2.f18210f.compareAndSet(false, true)) {
            z = false;
        }
        try {
            consumer.accept(publishConnection2);
            if (z) {
                this.f18205f.subscribe(publishConnection2);
            }
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            throw ExceptionHelper.m3434e(th);
        }
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        PublishConnection<T> publishConnection;
        PublishConnection<T> publishConnection2;
        do {
            publishConnection = this.f18206g.get();
            publishConnection2 = publishConnection;
            if (publishConnection != null) {
                break;
            }
            publishConnection2 = new PublishConnection<>(this.f18206g);
        } while (!this.f18206g.compareAndSet(publishConnection, publishConnection2));
        InnerDisposable<T> innerDisposable = new InnerDisposable<>(observer, publishConnection2);
        observer.onSubscribe(innerDisposable);
        if (!publishConnection2.m3750a(innerDisposable)) {
            Throwable th = publishConnection2.f18213i;
            if (th != null) {
                observer.onError(th);
            } else {
                observer.onComplete();
            }
        } else if (innerDisposable.isDisposed()) {
            publishConnection2.m3749b(innerDisposable);
        }
    }
}
