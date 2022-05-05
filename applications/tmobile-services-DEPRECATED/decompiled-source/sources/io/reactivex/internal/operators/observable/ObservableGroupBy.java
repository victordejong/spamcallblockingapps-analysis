package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.observables.GroupedObservable;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableGroupBy.class */
public final class ObservableGroupBy<T, K, V> extends AbstractObservableWithUpstream<T, GroupedObservable<K, V>> {

    /* renamed from: g */
    final Function<? super T, ? extends K> f17995g;

    /* renamed from: h */
    final Function<? super T, ? extends V> f17996h;

    /* renamed from: i */
    final int f17997i;

    /* renamed from: j */
    final boolean f17998j;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver.class */
    public static final class GroupByObserver<T, K, V> extends AtomicInteger implements Observer<T>, Disposable {

        /* renamed from: n */
        static final Object f17999n = new Object();
        private static final long serialVersionUID = -3688291656102519502L;

        /* renamed from: f */
        final Observer<? super GroupedObservable<K, V>> f18000f;

        /* renamed from: g */
        final Function<? super T, ? extends K> f18001g;

        /* renamed from: h */
        final Function<? super T, ? extends V> f18002h;

        /* renamed from: i */
        final int f18003i;

        /* renamed from: j */
        final boolean f18004j;

        /* renamed from: l */
        Disposable f18006l;

        /* renamed from: m */
        final AtomicBoolean f18007m = new AtomicBoolean();

        /* renamed from: k */
        final Map<Object, GroupedUnicast<K, V>> f18005k = new ConcurrentHashMap();

        public GroupByObserver(Observer<? super GroupedObservable<K, V>> observer, Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, int i, boolean z) {
            this.f18000f = observer;
            this.f18001g = function;
            this.f18002h = function2;
            this.f18003i = i;
            this.f18004j = z;
            lazySet(1);
        }

        /* renamed from: a */
        public void m3819a(K k) {
            if (k == null) {
                k = (K) f17999n;
            }
            this.f18005k.remove(k);
            if (decrementAndGet() == 0) {
                this.f18006l.dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f18007m.compareAndSet(false, true) && decrementAndGet() == 0) {
                this.f18006l.dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18007m.get();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            ArrayList<GroupedUnicast> arrayList = new ArrayList(this.f18005k.values());
            this.f18005k.clear();
            for (GroupedUnicast groupedUnicast : arrayList) {
                groupedUnicast.onComplete();
            }
            this.f18000f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            ArrayList<GroupedUnicast> arrayList = new ArrayList(this.f18005k.values());
            this.f18005k.clear();
            for (GroupedUnicast groupedUnicast : arrayList) {
                groupedUnicast.onError(th);
            }
            this.f18000f.onError(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.Observer
        public void onNext(T t) {
            try {
                Object apply = this.f18001g.apply(t);
                Object obj = apply != null ? apply : f17999n;
                GroupedUnicast<K, V> groupedUnicast = this.f18005k.get(obj);
                GroupedUnicast groupedUnicast2 = groupedUnicast;
                if (groupedUnicast == null) {
                    if (!this.f18007m.get()) {
                        groupedUnicast2 = GroupedUnicast.m3818d(apply, this.f18003i, this, this.f18004j);
                        this.f18005k.put(obj, groupedUnicast2);
                        getAndIncrement();
                        this.f18000f.onNext(groupedUnicast2);
                    } else {
                        return;
                    }
                }
                try {
                    Object apply2 = this.f18002h.apply(t);
                    ObjectHelper.m4363e(apply2, "The value supplied is null");
                    groupedUnicast2.onNext(apply2);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f18006l.dispose();
                    onError(th);
                }
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                this.f18006l.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18006l, disposable)) {
                this.f18006l = disposable;
                this.f18000f.onSubscribe(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast.class */
    public static final class GroupedUnicast<K, T> extends GroupedObservable<K, T> {

        /* renamed from: g */
        final State<T, K> f18008g;

        protected GroupedUnicast(K k, State<T, K> state) {
            super(k);
            this.f18008g = state;
        }

        /* renamed from: d */
        public static <T, K> GroupedUnicast<K, T> m3818d(K k, int i, GroupByObserver<?, K, T> groupByObserver, boolean z) {
            return new GroupedUnicast<>(k, new State(i, groupByObserver, k, z));
        }

        public void onComplete() {
            this.f18008g.m3815c();
        }

        public void onError(Throwable th) {
            this.f18008g.m3814d(th);
        }

        public void onNext(T t) {
            this.f18008g.m3813e(t);
        }

        @Override // io.reactivex.Observable
        protected void subscribeActual(Observer<? super T> observer) {
            this.f18008g.subscribe(observer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableGroupBy$State.class */
    public static final class State<T, K> extends AtomicInteger implements Disposable, ObservableSource<T> {
        private static final long serialVersionUID = -3852313036005250360L;

        /* renamed from: f */
        final K f18009f;

        /* renamed from: g */
        final SpscLinkedArrayQueue<T> f18010g;

        /* renamed from: h */
        final GroupByObserver<?, K, T> f18011h;

        /* renamed from: i */
        final boolean f18012i;

        /* renamed from: j */
        volatile boolean f18013j;

        /* renamed from: k */
        Throwable f18014k;

        /* renamed from: l */
        final AtomicBoolean f18015l = new AtomicBoolean();

        /* renamed from: m */
        final AtomicBoolean f18016m = new AtomicBoolean();

        /* renamed from: n */
        final AtomicReference<Observer<? super T>> f18017n = new AtomicReference<>();

        State(int i, GroupByObserver<?, K, T> groupByObserver, K k, boolean z) {
            this.f18010g = new SpscLinkedArrayQueue<>(i);
            this.f18011h = groupByObserver;
            this.f18009f = k;
            this.f18012i = z;
        }

        /* renamed from: a */
        boolean m3817a(boolean z, boolean z2, Observer<? super T> observer, boolean z3) {
            if (this.f18015l.get()) {
                this.f18010g.clear();
                this.f18011h.m3819a(this.f18009f);
                this.f18017n.lazySet(null);
                return true;
            } else if (!z) {
                return false;
            } else {
                if (!z3) {
                    Throwable th = this.f18014k;
                    if (th != null) {
                        this.f18010g.clear();
                        this.f18017n.lazySet(null);
                        observer.onError(th);
                        return true;
                    } else if (!z2) {
                        return false;
                    } else {
                        this.f18017n.lazySet(null);
                        observer.onComplete();
                        return true;
                    }
                } else if (!z2) {
                    return false;
                } else {
                    Throwable th2 = this.f18014k;
                    this.f18017n.lazySet(null);
                    if (th2 != null) {
                        observer.onError(th2);
                        return true;
                    }
                    observer.onComplete();
                    return true;
                }
            }
        }

        /* renamed from: b */
        void m3816b() {
            if (getAndIncrement() == 0) {
                SpscLinkedArrayQueue<T> spscLinkedArrayQueue = this.f18010g;
                boolean z = this.f18012i;
                Observer<? super T> observer = this.f18017n.get();
                int i = 1;
                while (true) {
                    if (observer != null) {
                        while (true) {
                            boolean z2 = this.f18013j;
                            Object obj = (T) spscLinkedArrayQueue.poll();
                            boolean z3 = obj == null;
                            if (!m3817a(z2, z3, observer, z)) {
                                if (z3) {
                                    break;
                                }
                                observer.onNext(obj);
                            } else {
                                return;
                            }
                        }
                    }
                    int addAndGet = addAndGet(-i);
                    if (addAndGet != 0) {
                        i = addAndGet;
                        if (observer == null) {
                            observer = this.f18017n.get();
                            i = addAndGet;
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        /* renamed from: c */
        public void m3815c() {
            this.f18013j = true;
            m3816b();
        }

        /* renamed from: d */
        public void m3814d(Throwable th) {
            this.f18014k = th;
            this.f18013j = true;
            m3816b();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f18015l.compareAndSet(false, true) && getAndIncrement() == 0) {
                this.f18017n.lazySet(null);
                this.f18011h.m3819a(this.f18009f);
            }
        }

        /* renamed from: e */
        public void m3813e(T t) {
            this.f18010g.offer(t);
            m3816b();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18015l.get();
        }

        @Override // io.reactivex.ObservableSource
        public void subscribe(Observer<? super T> observer) {
            if (this.f18016m.compareAndSet(false, true)) {
                observer.onSubscribe(this);
                this.f18017n.lazySet(observer);
                if (this.f18015l.get()) {
                    this.f18017n.lazySet(null);
                } else {
                    m3816b();
                }
            } else {
                EmptyDisposable.error(new IllegalStateException("Only one Observer allowed!"), observer);
            }
        }
    }

    public ObservableGroupBy(ObservableSource<T> observableSource, Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, int i, boolean z) {
        super(observableSource);
        this.f17995g = function;
        this.f17996h = function2;
        this.f17997i = i;
        this.f17998j = z;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super GroupedObservable<K, V>> observer) {
        this.f17497f.subscribe(new GroupByObserver(observer, this.f17995g, this.f17996h, this.f17997i, this.f17998j));
    }
}
