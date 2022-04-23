package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscribers.BasicFuseableConditionalSubscriber;
import io.reactivex.internal.subscribers.BasicFuseableSubscriber;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDoOnEach.class */
public final class FlowableDoOnEach<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Consumer<? super T> f15810h;

    /* renamed from: i */
    final Consumer<? super Throwable> f15811i;

    /* renamed from: j */
    final Action f15812j;

    /* renamed from: k */
    final Action f15813k;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachConditionalSubscriber.class */
    static final class DoOnEachConditionalSubscriber<T> extends BasicFuseableConditionalSubscriber<T, T> {

        /* renamed from: k */
        final Consumer<? super T> f15814k;

        /* renamed from: l */
        final Consumer<? super Throwable> f15815l;

        /* renamed from: m */
        final Action f15816m;

        /* renamed from: n */
        final Action f15817n;

        DoOnEachConditionalSubscriber(ConditionalSubscriber<? super T> conditionalSubscriber, Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Action action2) {
            super(conditionalSubscriber);
            this.f15814k = consumer;
            this.f15815l = consumer2;
            this.f15816m = action;
            this.f15817n = action2;
        }

        @Override // io.reactivex.internal.subscribers.BasicFuseableConditionalSubscriber, org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f19346i) {
                try {
                    this.f15816m.run();
                    this.f19346i = true;
                    this.f19343f.onComplete();
                    try {
                        this.f15817n.run();
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        RxJavaPlugins.m3354t(th);
                    }
                } catch (Throwable th2) {
                    m3492c(th2);
                }
            }
        }

        @Override // io.reactivex.internal.subscribers.BasicFuseableConditionalSubscriber, org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f19346i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            boolean z = true;
            this.f19346i = true;
            try {
                this.f15815l.accept(th);
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                this.f19343f.onError(new CompositeException(th, th2));
                z = false;
            }
            if (z) {
                this.f19343f.onError(th);
            }
            try {
                this.f15817n.run();
            } catch (Throwable th3) {
                Exceptions.m4428b(th3);
                RxJavaPlugins.m3354t(th3);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f19346i) {
                if (this.f19347j != 0) {
                    this.f19343f.onNext(null);
                    return;
                }
                try {
                    this.f15814k.accept(t);
                    this.f19343f.onNext(t);
                } catch (Throwable th) {
                    m3492c(th);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        /* renamed from: p */
        public boolean mo3605p(T t) {
            if (this.f19346i) {
                return false;
            }
            try {
                this.f15814k.accept(t);
                return this.f19343f.mo3605p(t);
            } catch (Throwable th) {
                m3492c(th);
                return false;
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            try {
                T poll = this.f19345h.poll();
                if (poll != null) {
                    try {
                        this.f15814k.accept(poll);
                        this.f15817n.run();
                    } catch (Throwable th) {
                        try {
                            Exceptions.m4428b(th);
                            this.f15815l.accept(th);
                            throw ExceptionHelper.m3436c(th);
                        } finally {
                            this.f15817n.run();
                        }
                    }
                } else if (this.f19347j == 1) {
                    this.f15816m.run();
                }
                return poll;
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                try {
                    this.f15815l.accept(th2);
                    throw ExceptionHelper.m3436c(th2);
                } catch (Throwable th3) {
                    throw new CompositeException(th2, th3);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m3491d(i);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDoOnEach$DoOnEachSubscriber.class */
    static final class DoOnEachSubscriber<T> extends BasicFuseableSubscriber<T, T> {

        /* renamed from: k */
        final Consumer<? super T> f15818k;

        /* renamed from: l */
        final Consumer<? super Throwable> f15819l;

        /* renamed from: m */
        final Action f15820m;

        /* renamed from: n */
        final Action f15821n;

        DoOnEachSubscriber(Subscriber<? super T> subscriber, Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Action action2) {
            super(subscriber);
            this.f15818k = consumer;
            this.f15819l = consumer2;
            this.f15820m = action;
            this.f15821n = action2;
        }

        @Override // io.reactivex.internal.subscribers.BasicFuseableSubscriber, org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f19351i) {
                try {
                    this.f15820m.run();
                    this.f19351i = true;
                    this.f19348f.onComplete();
                    try {
                        this.f15821n.run();
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        RxJavaPlugins.m3354t(th);
                    }
                } catch (Throwable th2) {
                    m3488c(th2);
                }
            }
        }

        @Override // io.reactivex.internal.subscribers.BasicFuseableSubscriber, org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f19351i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            boolean z = true;
            this.f19351i = true;
            try {
                this.f15819l.accept(th);
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                this.f19348f.onError(new CompositeException(th, th2));
                z = false;
            }
            if (z) {
                this.f19348f.onError(th);
            }
            try {
                this.f15821n.run();
            } catch (Throwable th3) {
                Exceptions.m4428b(th3);
                RxJavaPlugins.m3354t(th3);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f19351i) {
                if (this.f19352j != 0) {
                    this.f19348f.onNext(null);
                    return;
                }
                try {
                    this.f15818k.accept(t);
                    this.f19348f.onNext(t);
                } catch (Throwable th) {
                    m3488c(th);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            try {
                T poll = this.f19350h.poll();
                if (poll != null) {
                    try {
                        this.f15818k.accept(poll);
                        this.f15821n.run();
                    } catch (Throwable th) {
                        try {
                            Exceptions.m4428b(th);
                            this.f15819l.accept(th);
                            throw ExceptionHelper.m3436c(th);
                        } finally {
                            this.f15821n.run();
                        }
                    }
                } else if (this.f19352j == 1) {
                    this.f15820m.run();
                }
                return poll;
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                try {
                    this.f15819l.accept(th2);
                    throw ExceptionHelper.m3436c(th2);
                } catch (Throwable th3) {
                    throw new CompositeException(th2, th3);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m3487d(i);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            this.f15411g.m4493v(new DoOnEachConditionalSubscriber((ConditionalSubscriber) subscriber, this.f15810h, this.f15811i, this.f15812j, this.f15813k));
        } else {
            this.f15411g.m4493v(new DoOnEachSubscriber(subscriber, this.f15810h, this.f15811i, this.f15812j, this.f15813k));
        }
    }
}
