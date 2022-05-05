package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableMerge.class */
public final class CompletableMerge extends Completable {

    /* renamed from: f */
    final Publisher<? extends CompletableSource> f15318f;

    /* renamed from: g */
    final int f15319g;

    /* renamed from: h */
    final boolean f15320h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber.class */
    static final class CompletableMergeSubscriber extends AtomicInteger implements FlowableSubscriber<CompletableSource>, Disposable {
        private static final long serialVersionUID = -2108443387387077490L;

        /* renamed from: f */
        final CompletableObserver f15321f;

        /* renamed from: g */
        final int f15322g;

        /* renamed from: h */
        final boolean f15323h;

        /* renamed from: k */
        Subscription f15326k;

        /* renamed from: j */
        final CompositeDisposable f15325j = new CompositeDisposable();

        /* renamed from: i */
        final AtomicThrowable f15324i = new AtomicThrowable();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber$MergeInnerObserver.class */
        public final class MergeInnerObserver extends AtomicReference<Disposable> implements CompletableObserver, Disposable {
            private static final long serialVersionUID = 251330541679988317L;

            MergeInnerObserver() {
            }

            @Override // io.reactivex.disposables.Disposable
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.disposables.Disposable
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                CompletableMergeSubscriber.this.m4328a(this);
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                CompletableMergeSubscriber.this.m4327b(this, th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }
        }

        CompletableMergeSubscriber(CompletableObserver completableObserver, int i, boolean z) {
            this.f15321f = completableObserver;
            this.f15322g = i;
            this.f15323h = z;
            lazySet(1);
        }

        /* renamed from: a */
        void m4328a(MergeInnerObserver mergeInnerObserver) {
            this.f15325j.mo4424c(mergeInnerObserver);
            if (decrementAndGet() == 0) {
                Throwable th = this.f15324i.get();
                if (th != null) {
                    this.f15321f.onError(th);
                } else {
                    this.f15321f.onComplete();
                }
            } else if (this.f15322g != Integer.MAX_VALUE) {
                this.f15326k.request(1L);
            }
        }

        /* renamed from: b */
        void m4327b(MergeInnerObserver mergeInnerObserver, Throwable th) {
            this.f15325j.mo4424c(mergeInnerObserver);
            if (!this.f15323h) {
                this.f15326k.cancel();
                this.f15325j.dispose();
                if (!this.f15324i.m3456a(th)) {
                    RxJavaPlugins.m3354t(th);
                } else if (getAndSet(0) > 0) {
                    this.f15321f.onError(this.f15324i.m3455b());
                }
            } else if (!this.f15324i.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
            } else if (decrementAndGet() == 0) {
                this.f15321f.onError(this.f15324i.m3455b());
            } else if (this.f15322g != Integer.MAX_VALUE) {
                this.f15326k.request(1L);
            }
        }

        /* renamed from: c */
        public void onNext(CompletableSource completableSource) {
            getAndIncrement();
            MergeInnerObserver mergeInnerObserver = new MergeInnerObserver();
            this.f15325j.mo4425b(mergeInnerObserver);
            completableSource.mo4514b(mergeInnerObserver);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15326k.cancel();
            this.f15325j.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15325j.isDisposed();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (decrementAndGet() != 0) {
                return;
            }
            if (this.f15324i.get() != null) {
                this.f15321f.onError(this.f15324i.m3455b());
            } else {
                this.f15321f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.f15323h) {
                this.f15325j.dispose();
                if (!this.f15324i.m3456a(th)) {
                    RxJavaPlugins.m3354t(th);
                } else if (getAndSet(0) > 0) {
                    this.f15321f.onError(this.f15324i.m3455b());
                }
            } else if (!this.f15324i.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
            } else if (decrementAndGet() == 0) {
                this.f15321f.onError(this.f15324i.m3455b());
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15326k, subscription)) {
                this.f15326k = subscription;
                this.f15321f.onSubscribe(this);
                int i = this.f15322g;
                if (i == Integer.MAX_VALUE) {
                    subscription.request(Long.MAX_VALUE);
                } else {
                    subscription.request(i);
                }
            }
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    public void mo3214d(CompletableObserver completableObserver) {
        this.f15318f.mo5c(new CompletableMergeSubscriber(completableObserver, this.f15319g, this.f15320h));
    }
}
