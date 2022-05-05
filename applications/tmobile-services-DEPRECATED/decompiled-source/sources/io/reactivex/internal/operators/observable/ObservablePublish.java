package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.HasUpstreamObservableSource;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.observables.ConnectableObservable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservablePublish.class */
public final class ObservablePublish<T> extends ConnectableObservable<T> implements HasUpstreamObservableSource<T>, ObservablePublishClassic<T> {

    /* renamed from: f */
    final ObservableSource<T> f18194f;

    /* renamed from: g */
    final AtomicReference<PublishObserver<T>> f18195g;

    /* renamed from: h */
    final ObservableSource<T> f18196h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable.class */
    public static final class InnerDisposable<T> extends AtomicReference<Object> implements Disposable {
        private static final long serialVersionUID = -1100270633763673112L;

        /* renamed from: f */
        final Observer<? super T> f18197f;

        InnerDisposable(Observer<? super T> observer) {
            this.f18197f = observer;
        }

        /* renamed from: a */
        void m3753a(PublishObserver<T> publishObserver) {
            if (!compareAndSet(null, publishObserver)) {
                publishObserver.m3751b(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Object andSet = getAndSet(this);
            if (andSet != null && andSet != this) {
                ((PublishObserver) andSet).m3751b(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservablePublish$PublishObserver.class */
    public static final class PublishObserver<T> implements Observer<T>, Disposable {

        /* renamed from: j */
        static final InnerDisposable[] f18198j = new InnerDisposable[0];

        /* renamed from: k */
        static final InnerDisposable[] f18199k = new InnerDisposable[0];

        /* renamed from: f */
        final AtomicReference<PublishObserver<T>> f18200f;

        /* renamed from: i */
        final AtomicReference<Disposable> f18203i = new AtomicReference<>();

        /* renamed from: g */
        final AtomicReference<InnerDisposable<T>[]> f18201g = new AtomicReference<>(f18198j);

        /* renamed from: h */
        final AtomicBoolean f18202h = new AtomicBoolean();

        PublishObserver(AtomicReference<PublishObserver<T>> atomicReference) {
            this.f18200f = atomicReference;
        }

        /* renamed from: a */
        boolean m3752a(InnerDisposable<T> innerDisposable) {
            InnerDisposable<T>[] innerDisposableArr;
            InnerDisposable<T>[] innerDisposableArr2;
            do {
                innerDisposableArr = this.f18201g.get();
                if (innerDisposableArr == f18199k) {
                    return false;
                }
                int length = innerDisposableArr.length;
                innerDisposableArr2 = new InnerDisposable[length + 1];
                System.arraycopy(innerDisposableArr, 0, innerDisposableArr2, 0, length);
                innerDisposableArr2[length] = innerDisposable;
            } while (!this.f18201g.compareAndSet(innerDisposableArr, innerDisposableArr2));
            return true;
        }

        /* renamed from: b */
        void m3751b(InnerDisposable<T> innerDisposable) {
            InnerDisposable<T>[] innerDisposableArr;
            InnerDisposable<T>[] innerDisposableArr2;
            do {
                innerDisposableArr = this.f18201g.get();
                int length = innerDisposableArr.length;
                if (length != 0) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (innerDisposableArr[i2].equals(innerDisposable)) {
                            i = i2;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i >= 0) {
                        if (length == 1) {
                            innerDisposableArr2 = f18198j;
                        } else {
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
            } while (!this.f18201g.compareAndSet(innerDisposableArr, innerDisposableArr2));
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f18201g.getAndSet(f18199k) != f18199k) {
                this.f18200f.compareAndSet(this, null);
                DisposableHelper.dispose(this.f18203i);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18201g.get() == f18199k;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18200f.compareAndSet(this, null);
            for (InnerDisposable<T> innerDisposable : this.f18201g.getAndSet(f18199k)) {
                innerDisposable.f18197f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18200f.compareAndSet(this, null);
            InnerDisposable<T>[] andSet = this.f18201g.getAndSet(f18199k);
            if (andSet.length != 0) {
                for (InnerDisposable<T> innerDisposable : andSet) {
                    innerDisposable.f18197f.onError(th);
                }
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            for (InnerDisposable<T> innerDisposable : this.f18201g.get()) {
                innerDisposable.f18197f.onNext(t);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f18203i, disposable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservablePublish$PublishSource.class */
    public static final class PublishSource<T> implements ObservableSource<T> {

        /* renamed from: f */
        private final AtomicReference<PublishObserver<T>> f18204f;

        PublishSource(AtomicReference<PublishObserver<T>> atomicReference) {
            this.f18204f = atomicReference;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x004b A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0010 A[SYNTHETIC] */
        @Override // io.reactivex.ObservableSource
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void subscribe(io.reactivex.Observer<? super T> r5) {
            /*
                r4 = this;
                io.reactivex.internal.operators.observable.ObservablePublish$InnerDisposable r0 = new io.reactivex.internal.operators.observable.ObservablePublish$InnerDisposable
                r1 = r0
                r2 = r5
                r1.<init>(r2)
                r6 = r0
                r0 = r5
                r1 = r6
                r0.onSubscribe(r1)
            L_0x0010:
                r0 = r4
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.observable.ObservablePublish$PublishObserver<T>> r0 = r0.f18204f
                java.lang.Object r0 = r0.get()
                io.reactivex.internal.operators.observable.ObservablePublish$PublishObserver r0 = (io.reactivex.internal.operators.observable.ObservablePublish.PublishObserver) r0
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L_0x0028
                r0 = r7
                r5 = r0
                r0 = r7
                boolean r0 = r0.isDisposed()
                if (r0 == 0) goto L_0x0043
            L_0x0028:
                io.reactivex.internal.operators.observable.ObservablePublish$PublishObserver r0 = new io.reactivex.internal.operators.observable.ObservablePublish$PublishObserver
                r1 = r0
                r2 = r4
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.observable.ObservablePublish$PublishObserver<T>> r2 = r2.f18204f
                r1.<init>(r2)
                r5 = r0
                r0 = r4
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.observable.ObservablePublish$PublishObserver<T>> r0 = r0.f18204f
                r1 = r7
                r2 = r5
                boolean r0 = r0.compareAndSet(r1, r2)
                if (r0 != 0) goto L_0x0043
                goto L_0x0010
            L_0x0043:
                r0 = r5
                r1 = r6
                boolean r0 = r0.m3752a(r1)
                if (r0 == 0) goto L_0x0010
                r0 = r6
                r1 = r5
                r0.m3753a(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservablePublish.PublishSource.subscribe(io.reactivex.Observer):void");
        }
    }

    private ObservablePublish(ObservableSource<T> observableSource, ObservableSource<T> observableSource2, AtomicReference<PublishObserver<T>> atomicReference) {
        this.f18196h = observableSource;
        this.f18194f = observableSource2;
        this.f18195g = atomicReference;
    }

    /* renamed from: g */
    public static <T> ConnectableObservable<T> m3754g(ObservableSource<T> observableSource) {
        AtomicReference atomicReference = new AtomicReference();
        return RxJavaPlugins.m3357q(new ObservablePublish(new PublishSource(atomicReference), observableSource, atomicReference));
    }

    @Override // io.reactivex.internal.operators.observable.ObservablePublishClassic
    /* renamed from: c */
    public ObservableSource<T> mo3748c() {
        return this.f18194f;
    }

    @Override // io.reactivex.observables.ConnectableObservable
    /* renamed from: d */
    public void mo3394d(Consumer<? super Disposable> consumer) {
        PublishObserver<T> publishObserver;
        PublishObserver<T> publishObserver2;
        do {
            publishObserver = this.f18195g.get();
            if (publishObserver != null) {
                publishObserver2 = publishObserver;
                if (!publishObserver.isDisposed()) {
                    break;
                }
            }
            publishObserver2 = new PublishObserver<>(this.f18195g);
        } while (!this.f18195g.compareAndSet(publishObserver, publishObserver2));
        boolean z = true;
        if (publishObserver2.f18202h.get() || !publishObserver2.f18202h.compareAndSet(false, true)) {
            z = false;
        }
        try {
            consumer.accept(publishObserver2);
            if (z) {
                this.f18194f.subscribe(publishObserver2);
            }
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            throw ExceptionHelper.m3434e(th);
        }
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f18196h.subscribe(observer);
    }
}
