package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiPredicate;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeEqualSingle.class */
public final class MaybeEqualSingle<T> extends Single<Boolean> {

    /* renamed from: f */
    final MaybeSource<? extends T> f17057f;

    /* renamed from: g */
    final MaybeSource<? extends T> f17058g;

    /* renamed from: h */
    final BiPredicate<? super T, ? super T> f17059h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator.class */
    static final class EqualCoordinator<T> extends AtomicInteger implements Disposable {

        /* renamed from: f */
        final SingleObserver<? super Boolean> f17060f;

        /* renamed from: g */
        final EqualObserver<T> f17061g = new EqualObserver<>(this);

        /* renamed from: h */
        final EqualObserver<T> f17062h = new EqualObserver<>(this);

        /* renamed from: i */
        final BiPredicate<? super T, ? super T> f17063i;

        EqualCoordinator(SingleObserver<? super Boolean> singleObserver, BiPredicate<? super T, ? super T> biPredicate) {
            super(2);
            this.f17060f = singleObserver;
            this.f17063i = biPredicate;
        }

        /* renamed from: a */
        void m3999a() {
            if (decrementAndGet() == 0) {
                Object obj = this.f17061g.f17065g;
                Object obj2 = this.f17062h.f17065g;
                if (obj == null || obj2 == null) {
                    this.f17060f.onSuccess(Boolean.valueOf(obj == null && obj2 == null));
                    return;
                }
                try {
                    this.f17060f.onSuccess(Boolean.valueOf(this.f17063i.mo4360a(obj, obj2)));
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f17060f.onError(th);
                }
            }
        }

        /* renamed from: b */
        void m3998b(EqualObserver<T> equalObserver, Throwable th) {
            if (getAndSet(0) > 0) {
                EqualObserver<T> equalObserver2 = this.f17061g;
                if (equalObserver == equalObserver2) {
                    this.f17062h.m3996a();
                } else {
                    equalObserver2.m3996a();
                }
                this.f17060f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: c */
        void m3997c(MaybeSource<? extends T> maybeSource, MaybeSource<? extends T> maybeSource2) {
            maybeSource.mo4485b(this.f17061g);
            maybeSource2.mo4485b(this.f17062h);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17061g.m3996a();
            this.f17062h.m3996a();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f17061g.get());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver.class */
    public static final class EqualObserver<T> extends AtomicReference<Disposable> implements MaybeObserver<T> {
        private static final long serialVersionUID = -3031974433025990931L;

        /* renamed from: f */
        final EqualCoordinator<T> f17064f;

        /* renamed from: g */
        Object f17065g;

        EqualObserver(EqualCoordinator<T> equalCoordinator) {
            this.f17064f = equalCoordinator;
        }

        /* renamed from: a */
        public void m3996a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17064f.m3999a();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17064f.m3998b(this, th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17065g = t;
            this.f17064f.m3999a();
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super Boolean> singleObserver) {
        EqualCoordinator equalCoordinator = new EqualCoordinator(singleObserver, this.f17059h);
        singleObserver.onSubscribe(equalCoordinator);
        equalCoordinator.m3997c(this.f17057f, this.f17058g);
    }
}
