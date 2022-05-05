package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.operators.maybe.MaybeMap;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeZipArray.class */
public final class MaybeZipArray<T, R> extends Maybe<R> {

    /* renamed from: f */
    final MaybeSource<? extends T>[] f17270f;

    /* renamed from: g */
    final Function<? super Object[], ? extends R> f17271g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeZipArray$SingletonArrayFunc.class */
    final class SingletonArrayFunc implements Function<T, R> {
        SingletonArrayFunc() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // io.reactivex.functions.Function
        public R apply(T t) throws Exception {
            R r = (R) MaybeZipArray.this.f17271g.apply(new Object[]{t});
            ObjectHelper.m4363e(r, "The zipper returned a null value");
            return r;
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator.class */
    static final class ZipCoordinator<T, R> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = -5556924161382950569L;

        /* renamed from: f */
        final MaybeObserver<? super R> f17273f;

        /* renamed from: g */
        final Function<? super Object[], ? extends R> f17274g;

        /* renamed from: h */
        final ZipMaybeObserver<T>[] f17275h;

        /* renamed from: i */
        final Object[] f17276i;

        /* JADX INFO: Access modifiers changed from: package-private */
        public ZipCoordinator(MaybeObserver<? super R> maybeObserver, int i, Function<? super Object[], ? extends R> function) {
            super(i);
            this.f17273f = maybeObserver;
            this.f17274g = function;
            ZipMaybeObserver<T>[] zipMaybeObserverArr = new ZipMaybeObserver[i];
            for (int i2 = 0; i2 < i; i2++) {
                zipMaybeObserverArr[i2] = new ZipMaybeObserver<>(this, i2);
            }
            this.f17275h = zipMaybeObserverArr;
            this.f17276i = new Object[i];
        }

        /* renamed from: a */
        void m3973a(int i) {
            int i2;
            ZipMaybeObserver<T>[] zipMaybeObserverArr = this.f17275h;
            int length = zipMaybeObserverArr.length;
            int i3 = 0;
            while (true) {
                i2 = i;
                if (i3 < i) {
                    zipMaybeObserverArr[i3].m3969a();
                    i3++;
                }
            }
            while (true) {
                i2++;
                if (i2 < length) {
                    zipMaybeObserverArr[i2].m3969a();
                } else {
                    return;
                }
            }
        }

        /* renamed from: b */
        void m3972b(int i) {
            if (getAndSet(0) > 0) {
                m3973a(i);
                this.f17273f.onComplete();
            }
        }

        /* renamed from: c */
        void m3971c(Throwable th, int i) {
            if (getAndSet(0) > 0) {
                m3973a(i);
                this.f17273f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: d */
        void m3970d(T t, int i) {
            this.f17276i[i] = t;
            if (decrementAndGet() == 0) {
                try {
                    Object apply = this.f17274g.apply(this.f17276i);
                    ObjectHelper.m4363e(apply, "The zipper returned a null value");
                    this.f17273f.onSuccess(apply);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f17273f.onError(th);
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (getAndSet(0) > 0) {
                for (ZipMaybeObserver<T> zipMaybeObserver : this.f17275h) {
                    zipMaybeObserver.m3969a();
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() <= 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver.class */
    public static final class ZipMaybeObserver<T> extends AtomicReference<Disposable> implements MaybeObserver<T> {
        private static final long serialVersionUID = 3323743579927613702L;

        /* renamed from: f */
        final ZipCoordinator<T, ?> f17277f;

        /* renamed from: g */
        final int f17278g;

        ZipMaybeObserver(ZipCoordinator<T, ?> zipCoordinator, int i) {
            this.f17277f = zipCoordinator;
            this.f17278g = i;
        }

        /* renamed from: a */
        public void m3969a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17277f.m3972b(this.f17278g);
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17277f.m3971c(th, this.f17278g);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17277f.m3970d(t, this.f17278g);
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super R> maybeObserver) {
        MaybeSource<? extends T>[] maybeSourceArr = this.f17270f;
        int length = maybeSourceArr.length;
        if (length == 1) {
            maybeSourceArr[0].mo4485b(new MaybeMap.MapMaybeObserver(maybeObserver, new SingletonArrayFunc()));
            return;
        }
        ZipCoordinator zipCoordinator = new ZipCoordinator(maybeObserver, length, this.f17271g);
        maybeObserver.onSubscribe(zipCoordinator);
        for (int i = 0; i < length && !zipCoordinator.isDisposed(); i++) {
            MaybeSource<? extends T> maybeSource = maybeSourceArr[i];
            if (maybeSource == null) {
                zipCoordinator.m3971c(new NullPointerException("One of the sources is null"), i);
                return;
            } else {
                maybeSource.mo4485b(zipCoordinator.f17275h[i]);
            }
        }
    }
}
