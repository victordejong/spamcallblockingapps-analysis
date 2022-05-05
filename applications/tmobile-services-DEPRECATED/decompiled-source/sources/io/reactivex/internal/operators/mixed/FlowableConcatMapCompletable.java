package io.reactivex.internal.operators.mixed;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableConcatMapCompletable.class */
public final class FlowableConcatMapCompletable<T> extends Completable {

    /* renamed from: f */
    final Flowable<T> f17292f;

    /* renamed from: g */
    final Function<? super T, ? extends CompletableSource> f17293g;

    /* renamed from: h */
    final ErrorMode f17294h;

    /* renamed from: i */
    final int f17295i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver.class */
    static final class ConcatMapCompletableObserver<T> extends AtomicInteger implements FlowableSubscriber<T>, Disposable {
        private static final long serialVersionUID = 3610901111000061034L;

        /* renamed from: f */
        final CompletableObserver f17296f;

        /* renamed from: g */
        final Function<? super T, ? extends CompletableSource> f17297g;

        /* renamed from: h */
        final ErrorMode f17298h;

        /* renamed from: i */
        final AtomicThrowable f17299i = new AtomicThrowable();

        /* renamed from: j */
        final ConcatMapInnerObserver f17300j = new ConcatMapInnerObserver(this);

        /* renamed from: k */
        final int f17301k;

        /* renamed from: l */
        final SimplePlainQueue<T> f17302l;

        /* renamed from: m */
        Subscription f17303m;

        /* renamed from: n */
        volatile boolean f17304n;

        /* renamed from: o */
        volatile boolean f17305o;

        /* renamed from: p */
        volatile boolean f17306p;

        /* renamed from: q */
        int f17307q;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver.class */
        public static final class ConcatMapInnerObserver extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = 5638352172918776687L;

            /* renamed from: f */
            final ConcatMapCompletableObserver<?> f17308f;

            ConcatMapInnerObserver(ConcatMapCompletableObserver<?> concatMapCompletableObserver) {
                this.f17308f = concatMapCompletableObserver;
            }

            /* renamed from: a */
            void m3965a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                this.f17308f.m3967b();
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                this.f17308f.m3966c(th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.replace(this, disposable);
            }
        }

        ConcatMapCompletableObserver(CompletableObserver completableObserver, Function<? super T, ? extends CompletableSource> function, ErrorMode errorMode, int i) {
            this.f17296f = completableObserver;
            this.f17297g = function;
            this.f17298h = errorMode;
            this.f17301k = i;
            this.f17302l = new SpscArrayQueue(i);
        }

        /* renamed from: a */
        void m3968a() {
            if (getAndIncrement() == 0) {
                while (!this.f17306p) {
                    if (!this.f17304n) {
                        if (this.f17298h != ErrorMode.BOUNDARY || this.f17299i.get() == null) {
                            boolean z = this.f17305o;
                            T poll = this.f17302l.poll();
                            boolean z2 = poll == null;
                            if (z && z2) {
                                Throwable b = this.f17299i.m3455b();
                                if (b != null) {
                                    this.f17296f.onError(b);
                                    return;
                                } else {
                                    this.f17296f.onComplete();
                                    return;
                                }
                            } else if (!z2) {
                                int i = this.f17301k;
                                int i2 = i - (i >> 1);
                                int i3 = this.f17307q + 1;
                                if (i3 == i2) {
                                    this.f17307q = 0;
                                    this.f17303m.request(i2);
                                } else {
                                    this.f17307q = i3;
                                }
                                try {
                                    Object apply = this.f17297g.apply(poll);
                                    ObjectHelper.m4363e(apply, "The mapper returned a null CompletableSource");
                                    CompletableSource completableSource = (CompletableSource) apply;
                                    this.f17304n = true;
                                    completableSource.mo4514b(this.f17300j);
                                } catch (Throwable th) {
                                    Exceptions.m4428b(th);
                                    this.f17302l.clear();
                                    this.f17303m.cancel();
                                    this.f17299i.m3456a(th);
                                    this.f17296f.onError(this.f17299i.m3455b());
                                    return;
                                }
                            }
                        } else {
                            this.f17302l.clear();
                            this.f17296f.onError(this.f17299i.m3455b());
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
                this.f17302l.clear();
            }
        }

        /* renamed from: b */
        void m3967b() {
            this.f17304n = false;
            m3968a();
        }

        /* renamed from: c */
        void m3966c(Throwable th) {
            if (!this.f17299i.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
            } else if (this.f17298h == ErrorMode.IMMEDIATE) {
                this.f17303m.cancel();
                Throwable b = this.f17299i.m3455b();
                if (b != ExceptionHelper.f19422a) {
                    this.f17296f.onError(b);
                }
                if (getAndIncrement() == 0) {
                    this.f17302l.clear();
                }
            } else {
                this.f17304n = false;
                m3968a();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17306p = true;
            this.f17303m.cancel();
            this.f17300j.m3965a();
            if (getAndIncrement() == 0) {
                this.f17302l.clear();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17306p;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f17305o = true;
            m3968a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.f17299i.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
            } else if (this.f17298h == ErrorMode.IMMEDIATE) {
                this.f17300j.m3965a();
                Throwable b = this.f17299i.m3455b();
                if (b != ExceptionHelper.f19422a) {
                    this.f17296f.onError(b);
                }
                if (getAndIncrement() == 0) {
                    this.f17302l.clear();
                }
            } else {
                this.f17305o = true;
                m3968a();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f17302l.offer(t)) {
                m3968a();
                return;
            }
            this.f17303m.cancel();
            onError(new MissingBackpressureException("Queue full?!"));
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f17303m, subscription)) {
                this.f17303m = subscription;
                this.f17296f.onSubscribe(this);
                subscription.request(this.f17301k);
            }
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f17292f.m4493v(new ConcatMapCompletableObserver(completableObserver, this.f17293g, this.f17294h, this.f17295i));
    }
}
