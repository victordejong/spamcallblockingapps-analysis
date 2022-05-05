package io.reactivex.internal.operators.observable;

import com.google.android.gms.common.api.Api;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.ResettableConnectable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.HasUpstreamObservableSource;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.observables.ConnectableObservable;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.schedulers.Timed;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay.class */
public final class ObservableReplay<T> extends ConnectableObservable<T> implements HasUpstreamObservableSource<T>, ResettableConnectable {

    /* renamed from: j */
    static final BufferSupplier f18283j = new UnBoundedFactory();

    /* renamed from: f */
    final ObservableSource<T> f18284f;

    /* renamed from: g */
    final AtomicReference<ReplayObserver<T>> f18285g;

    /* renamed from: h */
    final BufferSupplier<T> f18286h;

    /* renamed from: i */
    final ObservableSource<T> f18287i;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer.class */
    static abstract class BoundedReplayBuffer<T> extends AtomicReference<Node> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 2346567790059478686L;

        /* renamed from: f */
        Node f18288f;

        /* renamed from: g */
        int f18289g;

        BoundedReplayBuffer() {
            Node node = new Node(null);
            this.f18288f = node;
            set(node);
        }

        /* renamed from: a */
        final void m3725a(Node node) {
            this.f18288f.set(node);
            this.f18288f = node;
            this.f18289g++;
        }

        /* renamed from: b */
        Object mo3715b(Object obj) {
            return obj;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        /* renamed from: c */
        public final void mo3710c() {
            m3725a(new Node(mo3715b(NotificationLite.complete())));
            mo3712m();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        /* renamed from: d */
        public final void mo3709d(T t) {
            m3725a(new Node(mo3715b(NotificationLite.next(t))));
            mo3711l();
        }

        /* renamed from: e */
        Node mo3714e() {
            return get();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        /* renamed from: f */
        public final void mo3708f(Throwable th) {
            m3725a(new Node(mo3715b(NotificationLite.error(th))));
            mo3712m();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        /* renamed from: g */
        public final void mo3707g(InnerDisposable<T> innerDisposable) {
            int addAndGet;
            if (innerDisposable.getAndIncrement() == 0) {
                int i = 1;
                do {
                    Node node = (Node) innerDisposable.m3720a();
                    Node node2 = node;
                    if (node == null) {
                        node2 = mo3714e();
                        innerDisposable.f18293h = node2;
                    }
                    while (!innerDisposable.isDisposed()) {
                        Node node3 = node2.get();
                        if (node3 == null) {
                            innerDisposable.f18293h = node2;
                            addAndGet = innerDisposable.addAndGet(-i);
                            i = addAndGet;
                        } else if (NotificationLite.accept(mo3713h(node3.f18297f), innerDisposable.f18292g)) {
                            innerDisposable.f18293h = null;
                            return;
                        } else {
                            node2 = node3;
                        }
                    }
                    innerDisposable.f18293h = null;
                    return;
                } while (addAndGet != 0);
            }
        }

        /* renamed from: h */
        Object mo3713h(Object obj) {
            return obj;
        }

        /* renamed from: i */
        final void m3724i() {
            this.f18289g--;
            m3723j(get().get());
        }

        /* renamed from: j */
        final void m3723j(Node node) {
            set(node);
        }

        /* renamed from: k */
        final void m3722k() {
            Node node = get();
            if (node.f18297f != null) {
                Node node2 = new Node(null);
                node2.lazySet(node.get());
                set(node2);
            }
        }

        /* renamed from: l */
        abstract void mo3711l();

        /* renamed from: m */
        void mo3712m() {
            m3722k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$BufferSupplier.class */
    public interface BufferSupplier<T> {
        ReplayBuffer<T> call();
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer.class */
    static final class DisposeConsumer<R> implements Consumer<Disposable> {

        /* renamed from: f */
        private final ObserverResourceWrapper<R> f18290f;

        DisposeConsumer(ObserverResourceWrapper<R> observerResourceWrapper) {
            this.f18290f = observerResourceWrapper;
        }

        /* renamed from: a */
        public void accept(Disposable disposable) {
            this.f18290f.m3624a(disposable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable.class */
    public static final class InnerDisposable<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 2728361546769921047L;

        /* renamed from: f */
        final ReplayObserver<T> f18291f;

        /* renamed from: g */
        final Observer<? super T> f18292g;

        /* renamed from: h */
        Object f18293h;

        /* renamed from: i */
        volatile boolean f18294i;

        InnerDisposable(ReplayObserver<T> replayObserver, Observer<? super T> observer) {
            this.f18291f = replayObserver;
            this.f18292g = observer;
        }

        /* renamed from: a */
        <U> U m3720a() {
            return (U) this.f18293h;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f18294i) {
                this.f18294i = true;
                this.f18291f.m3718b(this);
                this.f18293h = null;
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18294i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$MulticastReplay.class */
    public static final class MulticastReplay<R, U> extends Observable<R> {

        /* renamed from: f */
        private final Callable<? extends ConnectableObservable<U>> f18295f;

        /* renamed from: g */
        private final Function<? super Observable<U>, ? extends ObservableSource<R>> f18296g;

        MulticastReplay(Callable<? extends ConnectableObservable<U>> callable, Function<? super Observable<U>, ? extends ObservableSource<R>> function) {
            this.f18295f = callable;
            this.f18296g = function;
        }

        @Override // io.reactivex.Observable
        protected void subscribeActual(Observer<? super R> observer) {
            try {
                Object call = this.f18295f.call();
                ObjectHelper.m4363e(call, "The connectableFactory returned a null ConnectableObservable");
                ConnectableObservable connectableObservable = (ConnectableObservable) call;
                Object apply = this.f18296g.apply(connectableObservable);
                ObjectHelper.m4363e(apply, "The selector returned a null ObservableSource");
                ObservableSource observableSource = (ObservableSource) apply;
                ObserverResourceWrapper observerResourceWrapper = new ObserverResourceWrapper(observer);
                observableSource.subscribe(observerResourceWrapper);
                connectableObservable.mo3394d(new DisposeConsumer(observerResourceWrapper));
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                EmptyDisposable.error(th, observer);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$Node.class */
    public static final class Node extends AtomicReference<Node> {
        private static final long serialVersionUID = 245354315435971818L;

        /* renamed from: f */
        final Object f18297f;

        Node(Object obj) {
            this.f18297f = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$Replay.class */
    public static final class Replay<T> extends ConnectableObservable<T> {

        /* renamed from: f */
        private final ConnectableObservable<T> f18298f;

        /* renamed from: g */
        private final Observable<T> f18299g;

        Replay(ConnectableObservable<T> connectableObservable, Observable<T> observable) {
            this.f18298f = connectableObservable;
            this.f18299g = observable;
        }

        @Override // io.reactivex.observables.ConnectableObservable
        /* renamed from: d */
        public void mo3394d(Consumer<? super Disposable> consumer) {
            this.f18298f.mo3394d(consumer);
        }

        @Override // io.reactivex.Observable
        protected void subscribeActual(Observer<? super T> observer) {
            this.f18299g.subscribe(observer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer.class */
    public interface ReplayBuffer<T> {
        /* renamed from: c */
        void mo3710c();

        /* renamed from: d */
        void mo3709d(T t);

        /* renamed from: f */
        void mo3708f(Throwable th);

        /* renamed from: g */
        void mo3707g(InnerDisposable<T> innerDisposable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$ReplayBufferSupplier.class */
    public static final class ReplayBufferSupplier<T> implements BufferSupplier<T> {

        /* renamed from: a */
        private final int f18300a;

        ReplayBufferSupplier(int i) {
            this.f18300a = i;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BufferSupplier
        public ReplayBuffer<T> call() {
            return new SizeBoundReplayBuffer(this.f18300a);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver.class */
    static final class ReplayObserver<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable {

        /* renamed from: j */
        static final InnerDisposable[] f18301j = new InnerDisposable[0];

        /* renamed from: k */
        static final InnerDisposable[] f18302k = new InnerDisposable[0];
        private static final long serialVersionUID = -533785617179540163L;

        /* renamed from: f */
        final ReplayBuffer<T> f18303f;

        /* renamed from: g */
        boolean f18304g;

        /* renamed from: h */
        final AtomicReference<InnerDisposable[]> f18305h = new AtomicReference<>(f18301j);

        /* renamed from: i */
        final AtomicBoolean f18306i = new AtomicBoolean();

        ReplayObserver(ReplayBuffer<T> replayBuffer) {
            this.f18303f = replayBuffer;
        }

        /* renamed from: a */
        boolean m3719a(InnerDisposable<T> innerDisposable) {
            InnerDisposable[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = this.f18305h.get();
                if (innerDisposableArr == f18302k) {
                    return false;
                }
                int length = innerDisposableArr.length;
                innerDisposableArr2 = new InnerDisposable[length + 1];
                System.arraycopy(innerDisposableArr, 0, innerDisposableArr2, 0, length);
                innerDisposableArr2[length] = innerDisposable;
            } while (!this.f18305h.compareAndSet(innerDisposableArr, innerDisposableArr2));
            return true;
        }

        /* renamed from: b */
        void m3718b(InnerDisposable<T> innerDisposable) {
            InnerDisposable[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = this.f18305h.get();
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
                            innerDisposableArr2 = f18301j;
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
            } while (!this.f18305h.compareAndSet(innerDisposableArr, innerDisposableArr2));
        }

        /* renamed from: c */
        void m3717c() {
            for (InnerDisposable<T> innerDisposable : this.f18305h.get()) {
                this.f18303f.mo3707g(innerDisposable);
            }
        }

        /* renamed from: d */
        void m3716d() {
            for (InnerDisposable<T> innerDisposable : this.f18305h.getAndSet(f18302k)) {
                this.f18303f.mo3707g(innerDisposable);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18305h.set(f18302k);
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18305h.get() == f18302k;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f18304g) {
                this.f18304g = true;
                this.f18303f.mo3710c();
                m3716d();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.f18304g) {
                this.f18304g = true;
                this.f18303f.mo3708f(th);
                m3716d();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f18304g) {
                this.f18303f.mo3709d(t);
                m3717c();
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                m3717c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$ReplaySource.class */
    public static final class ReplaySource<T> implements ObservableSource<T> {

        /* renamed from: f */
        private final AtomicReference<ReplayObserver<T>> f18307f;

        /* renamed from: g */
        private final BufferSupplier<T> f18308g;

        ReplaySource(AtomicReference<ReplayObserver<T>> atomicReference, BufferSupplier<T> bufferSupplier) {
            this.f18307f = atomicReference;
            this.f18308g = bufferSupplier;
        }

        @Override // io.reactivex.ObservableSource
        public void subscribe(Observer<? super T> observer) {
            ReplayObserver<T> replayObserver;
            do {
                ReplayObserver<T> replayObserver2 = this.f18307f.get();
                replayObserver = replayObserver2;
                if (replayObserver2 != null) {
                    break;
                }
                replayObserver = new ReplayObserver<>(this.f18308g.call());
            } while (!this.f18307f.compareAndSet(null, replayObserver));
            InnerDisposable<T> innerDisposable = new InnerDisposable<>(replayObserver, observer);
            observer.onSubscribe(innerDisposable);
            replayObserver.m3719a(innerDisposable);
            if (innerDisposable.isDisposed()) {
                replayObserver.m3718b(innerDisposable);
            } else {
                replayObserver.f18303f.mo3707g(innerDisposable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$ScheduledReplaySupplier.class */
    public static final class ScheduledReplaySupplier<T> implements BufferSupplier<T> {

        /* renamed from: a */
        private final int f18309a;

        /* renamed from: b */
        private final long f18310b;

        /* renamed from: c */
        private final TimeUnit f18311c;

        /* renamed from: d */
        private final Scheduler f18312d;

        ScheduledReplaySupplier(int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
            this.f18309a = i;
            this.f18310b = j;
            this.f18311c = timeUnit;
            this.f18312d = scheduler;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BufferSupplier
        public ReplayBuffer<T> call() {
            return new SizeAndTimeBoundReplayBuffer(this.f18309a, this.f18310b, this.f18311c, this.f18312d);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer.class */
    static final class SizeAndTimeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = 3457957419649567404L;

        /* renamed from: h */
        final Scheduler f18313h;

        /* renamed from: i */
        final long f18314i;

        /* renamed from: j */
        final TimeUnit f18315j;

        /* renamed from: k */
        final int f18316k;

        SizeAndTimeBoundReplayBuffer(int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
            this.f18313h = scheduler;
            this.f18316k = i;
            this.f18314i = j;
            this.f18315j = timeUnit;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        /* renamed from: b */
        Object mo3715b(Object obj) {
            return new Timed(obj, this.f18313h.mo3231c(this.f18315j), this.f18315j);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        /* renamed from: e */
        Node mo3714e() {
            long c = this.f18313h.mo3231c(this.f18315j);
            long j = this.f18314i;
            Node node = get();
            Node node2 = node.get();
            while (node2 != null) {
                Timed timed = (Timed) node2.f18297f;
                if (NotificationLite.isComplete(timed.m3225b()) || NotificationLite.isError(timed.m3225b()) || timed.m3226a() > c - j) {
                    break;
                }
                node2 = node2.get();
                node = node2;
            }
            return node;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        /* renamed from: h */
        Object mo3713h(Object obj) {
            return ((Timed) obj).m3225b();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        /* renamed from: l */
        void mo3711l() {
            long c = this.f18313h.mo3231c(this.f18315j);
            long j = this.f18314i;
            Node node = get();
            Node node2 = node.get();
            int i = 0;
            while (node2 != null) {
                int i2 = this.f18289g;
                if (i2 <= this.f18316k || i2 <= 1) {
                    if (((Timed) node2.f18297f).m3226a() > c - j) {
                        break;
                    }
                    i++;
                    this.f18289g--;
                    node2 = node2.get();
                    node = node2;
                } else {
                    i++;
                    this.f18289g = i2 - 1;
                    node2 = node2.get();
                    node = node2;
                }
            }
            if (i != 0) {
                m3723j(node);
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        /* renamed from: m */
        void mo3712m() {
            long c = this.f18313h.mo3231c(this.f18315j);
            long j = this.f18314i;
            Node node = get();
            Node node2 = node.get();
            int i = 0;
            while (node2 != null && this.f18289g > 1 && ((Timed) node2.f18297f).m3226a() <= c - j) {
                i++;
                this.f18289g--;
                node2 = node2.get();
                node = node2;
            }
            if (i != 0) {
                m3723j(node);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$SizeBoundReplayBuffer.class */
    static final class SizeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = -5898283885385201806L;

        /* renamed from: h */
        final int f18317h;

        SizeBoundReplayBuffer(int i) {
            this.f18317h = i;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        /* renamed from: l */
        void mo3711l() {
            if (this.f18289g > this.f18317h) {
                m3724i();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$UnBoundedFactory.class */
    static final class UnBoundedFactory implements BufferSupplier<Object> {
        UnBoundedFactory() {
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BufferSupplier
        public ReplayBuffer<Object> call() {
            return new UnboundedReplayBuffer(16);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer.class */
    static final class UnboundedReplayBuffer<T> extends ArrayList<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 7063189396499112664L;

        /* renamed from: f */
        volatile int f18318f;

        UnboundedReplayBuffer(int i) {
            super(i);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        /* renamed from: c */
        public void mo3710c() {
            add(NotificationLite.complete());
            this.f18318f++;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        /* renamed from: d */
        public void mo3709d(T t) {
            add(NotificationLite.next(t));
            this.f18318f++;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        /* renamed from: f */
        public void mo3708f(Throwable th) {
            add(NotificationLite.error(th));
            this.f18318f++;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        /* renamed from: g */
        public void mo3707g(InnerDisposable<T> innerDisposable) {
            if (innerDisposable.getAndIncrement() == 0) {
                Observer<? super T> observer = innerDisposable.f18292g;
                int i = 1;
                while (!innerDisposable.isDisposed()) {
                    int i2 = this.f18318f;
                    Integer num = (Integer) innerDisposable.m3720a();
                    int intValue = num != null ? num.intValue() : 0;
                    while (intValue < i2) {
                        if (!NotificationLite.accept(get(intValue), observer) && !innerDisposable.isDisposed()) {
                            intValue++;
                        } else {
                            return;
                        }
                    }
                    innerDisposable.f18293h = Integer.valueOf(intValue);
                    int addAndGet = innerDisposable.addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                }
            }
        }
    }

    private ObservableReplay(ObservableSource<T> observableSource, ObservableSource<T> observableSource2, AtomicReference<ReplayObserver<T>> atomicReference, BufferSupplier<T> bufferSupplier) {
        this.f18287i = observableSource;
        this.f18284f = observableSource2;
        this.f18285g = atomicReference;
        this.f18286h = bufferSupplier;
    }

    /* renamed from: g */
    public static <T> ConnectableObservable<T> m3732g(ObservableSource<T> observableSource, int i) {
        return i == Integer.MAX_VALUE ? m3728k(observableSource) : m3729j(observableSource, new ReplayBufferSupplier(i));
    }

    /* renamed from: h */
    public static <T> ConnectableObservable<T> m3731h(ObservableSource<T> observableSource, long j, TimeUnit timeUnit, Scheduler scheduler) {
        return m3730i(observableSource, j, timeUnit, scheduler, Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }

    /* renamed from: i */
    public static <T> ConnectableObservable<T> m3730i(ObservableSource<T> observableSource, long j, TimeUnit timeUnit, Scheduler scheduler, int i) {
        return m3729j(observableSource, new ScheduledReplaySupplier(i, j, timeUnit, scheduler));
    }

    /* renamed from: j */
    static <T> ConnectableObservable<T> m3729j(ObservableSource<T> observableSource, BufferSupplier<T> bufferSupplier) {
        AtomicReference atomicReference = new AtomicReference();
        return RxJavaPlugins.m3357q(new ObservableReplay(new ReplaySource(atomicReference, bufferSupplier), observableSource, atomicReference, bufferSupplier));
    }

    /* renamed from: k */
    public static <T> ConnectableObservable<T> m3728k(ObservableSource<? extends T> observableSource) {
        return m3729j(observableSource, f18283j);
    }

    /* renamed from: l */
    public static <U, R> Observable<R> m3727l(Callable<? extends ConnectableObservable<U>> callable, Function<? super Observable<U>, ? extends ObservableSource<R>> function) {
        return RxJavaPlugins.m3360n(new MulticastReplay(callable, function));
    }

    /* renamed from: m */
    public static <T> ConnectableObservable<T> m3726m(ConnectableObservable<T> connectableObservable, Scheduler scheduler) {
        return RxJavaPlugins.m3357q(new Replay(connectableObservable, connectableObservable.observeOn(scheduler)));
    }

    @Override // io.reactivex.internal.disposables.ResettableConnectable
    /* renamed from: b */
    public void mo3733b(Disposable disposable) {
        this.f18285g.compareAndSet((ReplayObserver) disposable, null);
    }

    @Override // io.reactivex.observables.ConnectableObservable
    /* renamed from: d */
    public void mo3394d(Consumer<? super Disposable> consumer) {
        ReplayObserver<T> replayObserver;
        ReplayObserver<T> replayObserver2;
        do {
            replayObserver = this.f18285g.get();
            if (replayObserver != null) {
                replayObserver2 = replayObserver;
                if (!replayObserver.isDisposed()) {
                    break;
                }
            }
            replayObserver2 = new ReplayObserver<>(this.f18286h.call());
        } while (!this.f18285g.compareAndSet(replayObserver, replayObserver2));
        boolean z = !replayObserver2.f18306i.get() && replayObserver2.f18306i.compareAndSet(false, true);
        try {
            consumer.accept(replayObserver2);
            if (z) {
                this.f18284f.subscribe(replayObserver2);
            }
        } catch (Throwable th) {
            if (z) {
                replayObserver2.f18306i.compareAndSet(true, false);
            }
            Exceptions.m4428b(th);
            throw ExceptionHelper.m3434e(th);
        }
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f18287i.subscribe(observer);
    }
}
