package io.reactivex.internal.operators.mixed;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable.class */
public final class FlowableSwitchMapCompletable<T> extends Completable {

    /* renamed from: f */
    final Flowable<T> f17349f;

    /* renamed from: g */
    final Function<? super T, ? extends CompletableSource> f17350g;

    /* renamed from: h */
    final boolean f17351h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver.class */
    static final class SwitchMapCompletableObserver<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: m */
        static final SwitchMapInnerObserver f17352m = new SwitchMapInnerObserver(null);

        /* renamed from: f */
        final CompletableObserver f17353f;

        /* renamed from: g */
        final Function<? super T, ? extends CompletableSource> f17354g;

        /* renamed from: h */
        final boolean f17355h;

        /* renamed from: i */
        final AtomicThrowable f17356i = new AtomicThrowable();

        /* renamed from: j */
        final AtomicReference<SwitchMapInnerObserver> f17357j = new AtomicReference<>();

        /* renamed from: k */
        volatile boolean f17358k;

        /* renamed from: l */
        Subscription f17359l;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver.class */
        public static final class SwitchMapInnerObserver extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = -8003404460084760287L;

            /* renamed from: f */
            final SwitchMapCompletableObserver<?> f17360f;

            SwitchMapInnerObserver(SwitchMapCompletableObserver<?> switchMapCompletableObserver) {
                this.f17360f = switchMapCompletableObserver;
            }

            /* renamed from: a */
            void m3952a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                this.f17360f.m3954b(this);
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                this.f17360f.m3953c(this, th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }
        }

        SwitchMapCompletableObserver(CompletableObserver completableObserver, Function<? super T, ? extends CompletableSource> function, boolean z) {
            this.f17353f = completableObserver;
            this.f17354g = function;
            this.f17355h = z;
        }

        /* renamed from: a */
        void m3955a() {
            SwitchMapInnerObserver andSet = this.f17357j.getAndSet(f17352m);
            if (andSet != null && andSet != f17352m) {
                andSet.m3952a();
            }
        }

        /* renamed from: b */
        void m3954b(SwitchMapInnerObserver switchMapInnerObserver) {
            if (this.f17357j.compareAndSet(switchMapInnerObserver, null) && this.f17358k) {
                Throwable b = this.f17356i.m3455b();
                if (b == null) {
                    this.f17353f.onComplete();
                } else {
                    this.f17353f.onError(b);
                }
            }
        }

        /* renamed from: c */
        void m3953c(SwitchMapInnerObserver switchMapInnerObserver, Throwable th) {
            if (!this.f17357j.compareAndSet(switchMapInnerObserver, null) || !this.f17356i.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
            } else if (!this.f17355h) {
                dispose();
                Throwable b = this.f17356i.m3455b();
                if (b != ExceptionHelper.f19422a) {
                    this.f17353f.onError(b);
                }
            } else if (this.f17358k) {
                this.f17353f.onError(this.f17356i.m3455b());
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17359l.cancel();
            m3955a();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17357j.get() == f17352m;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f17358k = true;
            if (this.f17357j.get() == null) {
                Throwable b = this.f17356i.m3455b();
                if (b == null) {
                    this.f17353f.onComplete();
                } else {
                    this.f17353f.onError(b);
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.f17356i.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
            } else if (this.f17355h) {
                onComplete();
            } else {
                m3955a();
                Throwable b = this.f17356i.m3455b();
                if (b != ExceptionHelper.f19422a) {
                    this.f17353f.onError(b);
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            SwitchMapInnerObserver switchMapInnerObserver;
            try {
                Object apply = this.f17354g.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null CompletableSource");
                CompletableSource completableSource = (CompletableSource) apply;
                SwitchMapInnerObserver switchMapInnerObserver2 = new SwitchMapInnerObserver(this);
                do {
                    switchMapInnerObserver = this.f17357j.get();
                    if (switchMapInnerObserver == f17352m) {
                        return;
                    }
                } while (!this.f17357j.compareAndSet(switchMapInnerObserver, switchMapInnerObserver2));
                if (switchMapInnerObserver != null) {
                    switchMapInnerObserver.m3952a();
                }
                completableSource.mo4514b(switchMapInnerObserver2);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17359l.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f17359l, subscription)) {
                this.f17359l = subscription;
                this.f17353f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f17349f.m4493v(new SwitchMapCompletableObserver(completableObserver, this.f17350g, this.f17351h));
    }
}
