package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.operators.observable.ObservableGroupJoin;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableJoin.class */
public final class ObservableJoin<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AbstractObservableWithUpstream<TLeft, R> {

    /* renamed from: g */
    final ObservableSource<? extends TRight> f18092g;

    /* renamed from: h */
    final Function<? super TLeft, ? extends ObservableSource<TLeftEnd>> f18093h;

    /* renamed from: i */
    final Function<? super TRight, ? extends ObservableSource<TRightEnd>> f18094i;

    /* renamed from: j */
    final BiFunction<? super TLeft, ? super TRight, ? extends R> f18095j;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable.class */
    static final class JoinDisposable<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements Disposable, ObservableGroupJoin.JoinSupport {
        private static final long serialVersionUID = -6071216598687999801L;

        /* renamed from: f */
        final Observer<? super R> f18100f;

        /* renamed from: l */
        final Function<? super TLeft, ? extends ObservableSource<TLeftEnd>> f18106l;

        /* renamed from: m */
        final Function<? super TRight, ? extends ObservableSource<TRightEnd>> f18107m;

        /* renamed from: n */
        final BiFunction<? super TLeft, ? super TRight, ? extends R> f18108n;

        /* renamed from: p */
        int f18110p;

        /* renamed from: q */
        int f18111q;

        /* renamed from: r */
        volatile boolean f18112r;

        /* renamed from: s */
        static final Integer f18096s = 1;

        /* renamed from: t */
        static final Integer f18097t = 2;

        /* renamed from: u */
        static final Integer f18098u = 3;

        /* renamed from: v */
        static final Integer f18099v = 4;

        /* renamed from: h */
        final CompositeDisposable f18102h = new CompositeDisposable();

        /* renamed from: g */
        final SpscLinkedArrayQueue<Object> f18101g = new SpscLinkedArrayQueue<>(Observable.bufferSize());

        /* renamed from: i */
        final Map<Integer, TLeft> f18103i = new LinkedHashMap();

        /* renamed from: j */
        final Map<Integer, TRight> f18104j = new LinkedHashMap();

        /* renamed from: k */
        final AtomicReference<Throwable> f18105k = new AtomicReference<>();

        /* renamed from: o */
        final AtomicInteger f18109o = new AtomicInteger(2);

        JoinDisposable(Observer<? super R> observer, Function<? super TLeft, ? extends ObservableSource<TLeftEnd>> function, Function<? super TRight, ? extends ObservableSource<TRightEnd>> function2, BiFunction<? super TLeft, ? super TRight, ? extends R> biFunction) {
            this.f18100f = observer;
            this.f18106l = function;
            this.f18107m = function2;
            this.f18108n = biFunction;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.JoinSupport
        /* renamed from: a */
        public void mo3780a(Throwable th) {
            if (ExceptionHelper.m3438a(this.f18105k, th)) {
                this.f18109o.decrementAndGet();
                m3774g();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.JoinSupport
        /* renamed from: b */
        public void mo3779b(Throwable th) {
            if (ExceptionHelper.m3438a(this.f18105k, th)) {
                m3774g();
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.JoinSupport
        /* renamed from: c */
        public void mo3778c(boolean z, Object obj) {
            synchronized (this) {
                this.f18101g.m3545o(z ? f18096s : f18097t, obj);
            }
            m3774g();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.JoinSupport
        /* renamed from: d */
        public void mo3777d(boolean z, ObservableGroupJoin.LeftRightEndObserver leftRightEndObserver) {
            synchronized (this) {
                this.f18101g.m3545o(z ? f18098u : f18099v, leftRightEndObserver);
            }
            m3774g();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f18112r) {
                this.f18112r = true;
                m3775f();
                if (getAndIncrement() == 0) {
                    this.f18101g.clear();
                }
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.JoinSupport
        /* renamed from: e */
        public void mo3776e(ObservableGroupJoin.LeftRightObserver leftRightObserver) {
            this.f18102h.mo4424c(leftRightObserver);
            this.f18109o.decrementAndGet();
            m3774g();
        }

        /* renamed from: f */
        void m3775f() {
            this.f18102h.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: g */
        void m3774g() {
            if (getAndIncrement() == 0) {
                SpscLinkedArrayQueue<?> spscLinkedArrayQueue = this.f18101g;
                Observer<? super R> observer = this.f18100f;
                int i = 1;
                while (!this.f18112r) {
                    if (this.f18105k.get() != null) {
                        spscLinkedArrayQueue.clear();
                        m3775f();
                        m3773h(observer);
                        return;
                    }
                    boolean z = this.f18109o.get() == 0;
                    Integer num = (Integer) spscLinkedArrayQueue.poll();
                    boolean z2 = num == null;
                    if (z && z2) {
                        this.f18103i.clear();
                        this.f18104j.clear();
                        this.f18102h.dispose();
                        observer.onComplete();
                        return;
                    } else if (z2) {
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        Object poll = spscLinkedArrayQueue.poll();
                        if (num == f18096s) {
                            int i2 = this.f18110p;
                            this.f18110p = i2 + 1;
                            this.f18103i.put(Integer.valueOf(i2), poll);
                            try {
                                Object apply = this.f18106l.apply(poll);
                                ObjectHelper.m4363e(apply, "The leftEnd returned a null ObservableSource");
                                ObservableSource observableSource = (ObservableSource) apply;
                                ObservableGroupJoin.LeftRightEndObserver leftRightEndObserver = new ObservableGroupJoin.LeftRightEndObserver(this, true, i2);
                                this.f18102h.mo4425b(leftRightEndObserver);
                                observableSource.subscribe(leftRightEndObserver);
                                if (this.f18105k.get() != null) {
                                    spscLinkedArrayQueue.clear();
                                    m3775f();
                                    m3773h(observer);
                                    return;
                                }
                                for (TRight tright : this.f18104j.values()) {
                                    try {
                                        Object obj = (Object) this.f18108n.apply(poll, tright);
                                        ObjectHelper.m4363e(obj, "The resultSelector returned a null value");
                                        observer.onNext(obj);
                                    } catch (Throwable th) {
                                        m3772i(th, observer, spscLinkedArrayQueue);
                                        return;
                                    }
                                }
                                continue;
                            } catch (Throwable th2) {
                                m3772i(th2, observer, spscLinkedArrayQueue);
                                return;
                            }
                        } else if (num == f18097t) {
                            int i3 = this.f18111q;
                            this.f18111q = i3 + 1;
                            this.f18104j.put(Integer.valueOf(i3), poll);
                            try {
                                Object apply2 = this.f18107m.apply(poll);
                                ObjectHelper.m4363e(apply2, "The rightEnd returned a null ObservableSource");
                                ObservableSource observableSource2 = (ObservableSource) apply2;
                                ObservableGroupJoin.LeftRightEndObserver leftRightEndObserver2 = new ObservableGroupJoin.LeftRightEndObserver(this, false, i3);
                                this.f18102h.mo4425b(leftRightEndObserver2);
                                observableSource2.subscribe(leftRightEndObserver2);
                                if (this.f18105k.get() != null) {
                                    spscLinkedArrayQueue.clear();
                                    m3775f();
                                    m3773h(observer);
                                    return;
                                }
                                for (TLeft tleft : this.f18103i.values()) {
                                    try {
                                        Object obj2 = (Object) this.f18108n.apply(tleft, poll);
                                        ObjectHelper.m4363e(obj2, "The resultSelector returned a null value");
                                        observer.onNext(obj2);
                                    } catch (Throwable th3) {
                                        m3772i(th3, observer, spscLinkedArrayQueue);
                                        return;
                                    }
                                }
                                continue;
                            } catch (Throwable th4) {
                                m3772i(th4, observer, spscLinkedArrayQueue);
                                return;
                            }
                        } else if (num == f18098u) {
                            ObservableGroupJoin.LeftRightEndObserver leftRightEndObserver3 = (ObservableGroupJoin.LeftRightEndObserver) poll;
                            this.f18103i.remove(Integer.valueOf(leftRightEndObserver3.f18041h));
                            this.f18102h.mo4426a(leftRightEndObserver3);
                        } else {
                            ObservableGroupJoin.LeftRightEndObserver leftRightEndObserver4 = (ObservableGroupJoin.LeftRightEndObserver) poll;
                            this.f18104j.remove(Integer.valueOf(leftRightEndObserver4.f18041h));
                            this.f18102h.mo4426a(leftRightEndObserver4);
                        }
                    }
                }
                spscLinkedArrayQueue.clear();
            }
        }

        /* renamed from: h */
        void m3773h(Observer<?> observer) {
            Throwable b = ExceptionHelper.m3437b(this.f18105k);
            this.f18103i.clear();
            this.f18104j.clear();
            observer.onError(b);
        }

        /* renamed from: i */
        void m3772i(Throwable th, Observer<?> observer, SpscLinkedArrayQueue<?> spscLinkedArrayQueue) {
            Exceptions.m4428b(th);
            ExceptionHelper.m3438a(this.f18105k, th);
            spscLinkedArrayQueue.clear();
            m3775f();
            m3773h(observer);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18112r;
        }
    }

    public ObservableJoin(ObservableSource<TLeft> observableSource, ObservableSource<? extends TRight> observableSource2, Function<? super TLeft, ? extends ObservableSource<TLeftEnd>> function, Function<? super TRight, ? extends ObservableSource<TRightEnd>> function2, BiFunction<? super TLeft, ? super TRight, ? extends R> biFunction) {
        super(observableSource);
        this.f18092g = observableSource2;
        this.f18093h = function;
        this.f18094i = function2;
        this.f18095j = biFunction;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super R> observer) {
        JoinDisposable joinDisposable = new JoinDisposable(observer, this.f18093h, this.f18094i, this.f18095j);
        observer.onSubscribe(joinDisposable);
        ObservableGroupJoin.LeftRightObserver leftRightObserver = new ObservableGroupJoin.LeftRightObserver(joinDisposable, true);
        joinDisposable.f18102h.mo4425b(leftRightObserver);
        ObservableGroupJoin.LeftRightObserver leftRightObserver2 = new ObservableGroupJoin.LeftRightObserver(joinDisposable, false);
        joinDisposable.f18102h.mo4425b(leftRightObserver2);
        this.f17497f.subscribe(leftRightObserver);
        this.f18092g.subscribe(leftRightObserver2);
    }
}
