package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.subjects.UnicastSubject;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableGroupJoin.class */
public final class ObservableGroupJoin<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AbstractObservableWithUpstream<TLeft, R> {

    /* renamed from: g */
    final ObservableSource<? extends TRight> f18018g;

    /* renamed from: h */
    final Function<? super TLeft, ? extends ObservableSource<TLeftEnd>> f18019h;

    /* renamed from: i */
    final Function<? super TRight, ? extends ObservableSource<TRightEnd>> f18020i;

    /* renamed from: j */
    final BiFunction<? super TLeft, ? super Observable<TRight>, ? extends R> f18021j;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable.class */
    static final class GroupJoinDisposable<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements Disposable, JoinSupport {
        private static final long serialVersionUID = -6071216598687999801L;

        /* renamed from: f */
        final Observer<? super R> f18026f;

        /* renamed from: l */
        final Function<? super TLeft, ? extends ObservableSource<TLeftEnd>> f18032l;

        /* renamed from: m */
        final Function<? super TRight, ? extends ObservableSource<TRightEnd>> f18033m;

        /* renamed from: n */
        final BiFunction<? super TLeft, ? super Observable<TRight>, ? extends R> f18034n;

        /* renamed from: p */
        int f18036p;

        /* renamed from: q */
        int f18037q;

        /* renamed from: r */
        volatile boolean f18038r;

        /* renamed from: s */
        static final Integer f18022s = 1;

        /* renamed from: t */
        static final Integer f18023t = 2;

        /* renamed from: u */
        static final Integer f18024u = 3;

        /* renamed from: v */
        static final Integer f18025v = 4;

        /* renamed from: h */
        final CompositeDisposable f18028h = new CompositeDisposable();

        /* renamed from: g */
        final SpscLinkedArrayQueue<Object> f18027g = new SpscLinkedArrayQueue<>(Observable.bufferSize());

        /* renamed from: i */
        final Map<Integer, UnicastSubject<TRight>> f18029i = new LinkedHashMap();

        /* renamed from: j */
        final Map<Integer, TRight> f18030j = new LinkedHashMap();

        /* renamed from: k */
        final AtomicReference<Throwable> f18031k = new AtomicReference<>();

        /* renamed from: o */
        final AtomicInteger f18035o = new AtomicInteger(2);

        GroupJoinDisposable(Observer<? super R> observer, Function<? super TLeft, ? extends ObservableSource<TLeftEnd>> function, Function<? super TRight, ? extends ObservableSource<TRightEnd>> function2, BiFunction<? super TLeft, ? super Observable<TRight>, ? extends R> biFunction) {
            this.f18026f = observer;
            this.f18032l = function;
            this.f18033m = function2;
            this.f18034n = biFunction;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.JoinSupport
        /* renamed from: a */
        public void mo3780a(Throwable th) {
            if (ExceptionHelper.m3438a(this.f18031k, th)) {
                this.f18035o.decrementAndGet();
                m3811g();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.JoinSupport
        /* renamed from: b */
        public void mo3779b(Throwable th) {
            if (ExceptionHelper.m3438a(this.f18031k, th)) {
                m3811g();
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.JoinSupport
        /* renamed from: c */
        public void mo3778c(boolean z, Object obj) {
            synchronized (this) {
                this.f18027g.m3545o(z ? f18022s : f18023t, obj);
            }
            m3811g();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.JoinSupport
        /* renamed from: d */
        public void mo3777d(boolean z, LeftRightEndObserver leftRightEndObserver) {
            synchronized (this) {
                this.f18027g.m3545o(z ? f18024u : f18025v, leftRightEndObserver);
            }
            m3811g();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f18038r) {
                this.f18038r = true;
                m3812f();
                if (getAndIncrement() == 0) {
                    this.f18027g.clear();
                }
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.JoinSupport
        /* renamed from: e */
        public void mo3776e(LeftRightObserver leftRightObserver) {
            this.f18028h.mo4424c(leftRightObserver);
            this.f18035o.decrementAndGet();
            m3811g();
        }

        /* renamed from: f */
        void m3812f() {
            this.f18028h.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: g */
        void m3811g() {
            if (getAndIncrement() == 0) {
                SpscLinkedArrayQueue<?> spscLinkedArrayQueue = this.f18027g;
                Observer<? super R> observer = this.f18026f;
                int i = 1;
                while (!this.f18038r) {
                    if (this.f18031k.get() != null) {
                        spscLinkedArrayQueue.clear();
                        m3812f();
                        m3810h(observer);
                        return;
                    }
                    boolean z = this.f18035o.get() == 0;
                    Integer num = (Integer) spscLinkedArrayQueue.poll();
                    boolean z2 = num == null;
                    if (z && z2) {
                        for (UnicastSubject<TRight> unicastSubject : this.f18029i.values()) {
                            unicastSubject.onComplete();
                        }
                        this.f18029i.clear();
                        this.f18030j.clear();
                        this.f18028h.dispose();
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
                        if (num == f18022s) {
                            UnicastSubject<TRight> e = UnicastSubject.m3185e();
                            int i2 = this.f18036p;
                            this.f18036p = i2 + 1;
                            this.f18029i.put(Integer.valueOf(i2), e);
                            try {
                                Object apply = this.f18032l.apply(poll);
                                ObjectHelper.m4363e(apply, "The leftEnd returned a null ObservableSource");
                                ObservableSource observableSource = (ObservableSource) apply;
                                LeftRightEndObserver leftRightEndObserver = new LeftRightEndObserver(this, true, i2);
                                this.f18028h.mo4425b(leftRightEndObserver);
                                observableSource.subscribe(leftRightEndObserver);
                                if (this.f18031k.get() != null) {
                                    spscLinkedArrayQueue.clear();
                                    m3812f();
                                    m3810h(observer);
                                    return;
                                }
                                try {
                                    Object obj = (Object) this.f18034n.apply(poll, e);
                                    ObjectHelper.m4363e(obj, "The resultSelector returned a null value");
                                    observer.onNext(obj);
                                    for (TRight tright : this.f18030j.values()) {
                                        e.onNext(tright);
                                    }
                                } catch (Throwable th) {
                                    m3809i(th, observer, spscLinkedArrayQueue);
                                    return;
                                }
                            } catch (Throwable th2) {
                                m3809i(th2, observer, spscLinkedArrayQueue);
                                return;
                            }
                        } else if (num == f18023t) {
                            int i3 = this.f18037q;
                            this.f18037q = i3 + 1;
                            this.f18030j.put(Integer.valueOf(i3), poll);
                            try {
                                Object apply2 = this.f18033m.apply(poll);
                                ObjectHelper.m4363e(apply2, "The rightEnd returned a null ObservableSource");
                                ObservableSource observableSource2 = (ObservableSource) apply2;
                                LeftRightEndObserver leftRightEndObserver2 = new LeftRightEndObserver(this, false, i3);
                                this.f18028h.mo4425b(leftRightEndObserver2);
                                observableSource2.subscribe(leftRightEndObserver2);
                                if (this.f18031k.get() != null) {
                                    spscLinkedArrayQueue.clear();
                                    m3812f();
                                    m3810h(observer);
                                    return;
                                }
                                for (UnicastSubject<TRight> unicastSubject2 : this.f18029i.values()) {
                                    unicastSubject2.onNext(poll);
                                }
                            } catch (Throwable th3) {
                                m3809i(th3, observer, spscLinkedArrayQueue);
                                return;
                            }
                        } else if (num == f18024u) {
                            LeftRightEndObserver leftRightEndObserver3 = (LeftRightEndObserver) poll;
                            UnicastSubject<TRight> remove = this.f18029i.remove(Integer.valueOf(leftRightEndObserver3.f18041h));
                            this.f18028h.mo4426a(leftRightEndObserver3);
                            if (remove != null) {
                                remove.onComplete();
                            }
                        } else if (num == f18025v) {
                            LeftRightEndObserver leftRightEndObserver4 = (LeftRightEndObserver) poll;
                            this.f18030j.remove(Integer.valueOf(leftRightEndObserver4.f18041h));
                            this.f18028h.mo4426a(leftRightEndObserver4);
                        }
                    }
                }
                spscLinkedArrayQueue.clear();
            }
        }

        /* renamed from: h */
        void m3810h(Observer<?> observer) {
            Throwable b = ExceptionHelper.m3437b(this.f18031k);
            for (UnicastSubject<TRight> unicastSubject : this.f18029i.values()) {
                unicastSubject.onError(b);
            }
            this.f18029i.clear();
            this.f18030j.clear();
            observer.onError(b);
        }

        /* renamed from: i */
        void m3809i(Throwable th, Observer<?> observer, SpscLinkedArrayQueue<?> spscLinkedArrayQueue) {
            Exceptions.m4428b(th);
            ExceptionHelper.m3438a(this.f18031k, th);
            spscLinkedArrayQueue.clear();
            m3812f();
            m3810h(observer);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18038r;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableGroupJoin$JoinSupport.class */
    public interface JoinSupport {
        /* renamed from: a */
        void mo3780a(Throwable th);

        /* renamed from: b */
        void mo3779b(Throwable th);

        /* renamed from: c */
        void mo3778c(boolean z, Object obj);

        /* renamed from: d */
        void mo3777d(boolean z, LeftRightEndObserver leftRightEndObserver);

        /* renamed from: e */
        void mo3776e(LeftRightObserver leftRightObserver);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver.class */
    public static final class LeftRightEndObserver extends AtomicReference<Disposable> implements Observer<Object>, Disposable {
        private static final long serialVersionUID = 1883890389173668373L;

        /* renamed from: f */
        final JoinSupport f18039f;

        /* renamed from: g */
        final boolean f18040g;

        /* renamed from: h */
        final int f18041h;

        /* JADX INFO: Access modifiers changed from: package-private */
        public LeftRightEndObserver(JoinSupport joinSupport, boolean z, int i) {
            this.f18039f = joinSupport;
            this.f18040g = z;
            this.f18041h = i;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18039f.mo3777d(this.f18040g, this);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18039f.mo3779b(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
            if (DisposableHelper.dispose(this)) {
                this.f18039f.mo3777d(this.f18040g, this);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightObserver.class */
    static final class LeftRightObserver extends AtomicReference<Disposable> implements Observer<Object>, Disposable {
        private static final long serialVersionUID = 1883890389173668373L;

        /* renamed from: f */
        final JoinSupport f18042f;

        /* renamed from: g */
        final boolean f18043g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public LeftRightObserver(JoinSupport joinSupport, boolean z) {
            this.f18042f = joinSupport;
            this.f18043g = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18042f.mo3776e(this);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18042f.mo3780a(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
            this.f18042f.mo3778c(this.f18043g, obj);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }
    }

    public ObservableGroupJoin(ObservableSource<TLeft> observableSource, ObservableSource<? extends TRight> observableSource2, Function<? super TLeft, ? extends ObservableSource<TLeftEnd>> function, Function<? super TRight, ? extends ObservableSource<TRightEnd>> function2, BiFunction<? super TLeft, ? super Observable<TRight>, ? extends R> biFunction) {
        super(observableSource);
        this.f18018g = observableSource2;
        this.f18019h = function;
        this.f18020i = function2;
        this.f18021j = biFunction;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super R> observer) {
        GroupJoinDisposable groupJoinDisposable = new GroupJoinDisposable(observer, this.f18019h, this.f18020i, this.f18021j);
        observer.onSubscribe(groupJoinDisposable);
        LeftRightObserver leftRightObserver = new LeftRightObserver(groupJoinDisposable, true);
        groupJoinDisposable.f18028h.mo4425b(leftRightObserver);
        LeftRightObserver leftRightObserver2 = new LeftRightObserver(groupJoinDisposable, false);
        groupJoinDisposable.f18028h.mo4425b(leftRightObserver2);
        this.f17497f.subscribe(leftRightObserver);
        this.f18018g.subscribe(leftRightObserver2);
    }
}
