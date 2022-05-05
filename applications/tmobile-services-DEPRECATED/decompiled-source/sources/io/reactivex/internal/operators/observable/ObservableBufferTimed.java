package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.QueueDrainObserver;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.util.QueueDrainHelper;
import io.reactivex.observers.SerializedObserver;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBufferTimed.class */
public final class ObservableBufferTimed<T, U extends Collection<? super T>> extends AbstractObservableWithUpstream<T, U> {

    /* renamed from: g */
    final long f17610g;

    /* renamed from: h */
    final long f17611h;

    /* renamed from: i */
    final TimeUnit f17612i;

    /* renamed from: j */
    final Scheduler f17613j;

    /* renamed from: k */
    final Callable<U> f17614k;

    /* renamed from: l */
    final int f17615l;

    /* renamed from: m */
    final boolean f17616m;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactBoundedObserver.class */
    static final class BufferExactBoundedObserver<T, U extends Collection<? super T>> extends QueueDrainObserver<T, U, U> implements Runnable, Disposable {

        /* renamed from: l */
        final Callable<U> f17617l;

        /* renamed from: m */
        final long f17618m;

        /* renamed from: n */
        final TimeUnit f17619n;

        /* renamed from: o */
        final int f17620o;

        /* renamed from: p */
        final boolean f17621p;

        /* renamed from: q */
        final Scheduler.Worker f17622q;

        /* renamed from: r */
        U f17623r;

        /* renamed from: s */
        Disposable f17624s;

        /* renamed from: t */
        Disposable f17625t;

        /* renamed from: u */
        long f17626u;

        /* renamed from: v */
        long f17627v;

        BufferExactBoundedObserver(Observer<? super U> observer, Callable<U> callable, long j, TimeUnit timeUnit, int i, boolean z, Scheduler.Worker worker) {
            super(observer, new MpscLinkedQueue());
            this.f17617l = callable;
            this.f17618m = j;
            this.f17619n = timeUnit;
            this.f17620o = i;
            this.f17621p = z;
            this.f17622q = worker;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f15216i) {
                this.f15216i = true;
                this.f17625t.dispose();
                this.f17622q.dispose();
                synchronized (this) {
                    this.f17623r = null;
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15216i;
        }

        /* renamed from: j */
        public void mo3421e(Observer<? super U> observer, U u) {
            observer.onNext(u);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            U u;
            this.f17622q.dispose();
            synchronized (this) {
                u = this.f17623r;
                this.f17623r = null;
            }
            if (u != null) {
                this.f15215h.offer(u);
                this.f15217j = true;
                if (m4344f()) {
                    QueueDrainHelper.m3402d(this.f15215h, this.f15214g, false, this, this);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            synchronized (this) {
                this.f17623r = null;
            }
            this.f15214g.onError(th);
            this.f17622q.dispose();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            synchronized (this) {
                U u = this.f17623r;
                if (u != null) {
                    u.add(t);
                    if (u.size() >= this.f17620o) {
                        this.f17623r = null;
                        this.f17626u++;
                        if (this.f17621p) {
                            this.f17624s.dispose();
                        }
                        m4341i(u, false, this);
                        try {
                            U call = this.f17617l.call();
                            ObjectHelper.m4363e(call, "The buffer supplied is null");
                            U u2 = call;
                            synchronized (this) {
                                this.f17623r = u2;
                                this.f17627v++;
                            }
                            if (this.f17621p) {
                                Scheduler.Worker worker = this.f17622q;
                                long j = this.f17618m;
                                this.f17624s = worker.mo3531d(this, j, j, this.f17619n);
                            }
                        } catch (Throwable th) {
                            Exceptions.m4428b(th);
                            this.f15214g.onError(th);
                            dispose();
                        }
                    }
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17625t, disposable)) {
                this.f17625t = disposable;
                try {
                    U call = this.f17617l.call();
                    ObjectHelper.m4363e(call, "The buffer supplied is null");
                    this.f17623r = call;
                    this.f15214g.onSubscribe(this);
                    Scheduler.Worker worker = this.f17622q;
                    long j = this.f17618m;
                    this.f17624s = worker.mo3531d(this, j, j, this.f17619n);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    disposable.dispose();
                    EmptyDisposable.error(th, this.f15214g);
                    this.f17622q.dispose();
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U call = this.f17617l.call();
                ObjectHelper.m4363e(call, "The bufferSupplier returned a null buffer");
                U u = call;
                synchronized (this) {
                    U u2 = this.f17623r;
                    if (u2 != null && this.f17626u == this.f17627v) {
                        this.f17623r = u;
                        m4341i(u2, false, this);
                    }
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                dispose();
                this.f15214g.onError(th);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver.class */
    static final class BufferExactUnboundedObserver<T, U extends Collection<? super T>> extends QueueDrainObserver<T, U, U> implements Runnable, Disposable {

        /* renamed from: l */
        final Callable<U> f17628l;

        /* renamed from: m */
        final long f17629m;

        /* renamed from: n */
        final TimeUnit f17630n;

        /* renamed from: o */
        final Scheduler f17631o;

        /* renamed from: p */
        Disposable f17632p;

        /* renamed from: q */
        U f17633q;

        /* renamed from: r */
        final AtomicReference<Disposable> f17634r = new AtomicReference<>();

        BufferExactUnboundedObserver(Observer<? super U> observer, Callable<U> callable, long j, TimeUnit timeUnit, Scheduler scheduler) {
            super(observer, new MpscLinkedQueue());
            this.f17628l = callable;
            this.f17629m = j;
            this.f17630n = timeUnit;
            this.f17631o = scheduler;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this.f17634r);
            this.f17632p.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17634r.get() == DisposableHelper.DISPOSED;
        }

        /* renamed from: j */
        public void mo3421e(Observer<? super U> observer, U u) {
            this.f15214g.onNext(u);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            U u;
            synchronized (this) {
                u = this.f17633q;
                this.f17633q = null;
            }
            if (u != null) {
                this.f15215h.offer(u);
                this.f15217j = true;
                if (m4344f()) {
                    QueueDrainHelper.m3402d(this.f15215h, this.f15214g, false, null, this);
                }
            }
            DisposableHelper.dispose(this.f17634r);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            synchronized (this) {
                this.f17633q = null;
            }
            this.f15214g.onError(th);
            DisposableHelper.dispose(this.f17634r);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            synchronized (this) {
                U u = this.f17633q;
                if (u != null) {
                    u.add(t);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17632p, disposable)) {
                this.f17632p = disposable;
                try {
                    U call = this.f17628l.call();
                    ObjectHelper.m4363e(call, "The buffer supplied is null");
                    this.f17633q = call;
                    this.f15214g.onSubscribe(this);
                    if (!this.f15216i) {
                        Scheduler scheduler = this.f17631o;
                        long j = this.f17629m;
                        Disposable f = scheduler.mo3501f(this, j, j, this.f17630n);
                        if (!this.f17634r.compareAndSet(null, f)) {
                            f.dispose();
                        }
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    dispose();
                    EmptyDisposable.error(th, this.f15214g);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            U u;
            try {
                U call = this.f17628l.call();
                ObjectHelper.m4363e(call, "The bufferSupplier returned a null buffer");
                U u2 = call;
                synchronized (this) {
                    u = this.f17633q;
                    if (u != null) {
                        this.f17633q = u2;
                    }
                }
                if (u == null) {
                    DisposableHelper.dispose(this.f17634r);
                } else {
                    m4342h(u, false, this);
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f15214g.onError(th);
                dispose();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver.class */
    static final class BufferSkipBoundedObserver<T, U extends Collection<? super T>> extends QueueDrainObserver<T, U, U> implements Runnable, Disposable {

        /* renamed from: l */
        final Callable<U> f17635l;

        /* renamed from: m */
        final long f17636m;

        /* renamed from: n */
        final long f17637n;

        /* renamed from: o */
        final TimeUnit f17638o;

        /* renamed from: p */
        final Scheduler.Worker f17639p;

        /* renamed from: q */
        final List<U> f17640q = new LinkedList();

        /* renamed from: r */
        Disposable f17641r;

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver$RemoveFromBuffer.class */
        final class RemoveFromBuffer implements Runnable {

            /* renamed from: f */
            private final U f17642f;

            RemoveFromBuffer(U u) {
                this.f17642f = u;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (BufferSkipBoundedObserver.this) {
                    BufferSkipBoundedObserver.this.f17640q.remove(this.f17642f);
                }
                BufferSkipBoundedObserver bufferSkipBoundedObserver = BufferSkipBoundedObserver.this;
                bufferSkipBoundedObserver.m4341i(this.f17642f, false, bufferSkipBoundedObserver.f17639p);
            }
        }

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBufferTimed$BufferSkipBoundedObserver$RemoveFromBufferEmit.class */
        final class RemoveFromBufferEmit implements Runnable {

            /* renamed from: f */
            private final U f17644f;

            RemoveFromBufferEmit(U u) {
                this.f17644f = u;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (BufferSkipBoundedObserver.this) {
                    BufferSkipBoundedObserver.this.f17640q.remove(this.f17644f);
                }
                BufferSkipBoundedObserver bufferSkipBoundedObserver = BufferSkipBoundedObserver.this;
                bufferSkipBoundedObserver.m4341i(this.f17644f, false, bufferSkipBoundedObserver.f17639p);
            }
        }

        BufferSkipBoundedObserver(Observer<? super U> observer, Callable<U> callable, long j, long j2, TimeUnit timeUnit, Scheduler.Worker worker) {
            super(observer, new MpscLinkedQueue());
            this.f17635l = callable;
            this.f17636m = j;
            this.f17637n = j2;
            this.f17638o = timeUnit;
            this.f17639p = worker;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f15216i) {
                this.f15216i = true;
                m3884m();
                this.f17641r.dispose();
                this.f17639p.dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15216i;
        }

        /* renamed from: j */
        public void mo3421e(Observer<? super U> observer, U u) {
            observer.onNext(u);
        }

        /* renamed from: m */
        void m3884m() {
            synchronized (this) {
                this.f17640q.clear();
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            ArrayList<Collection> arrayList;
            synchronized (this) {
                arrayList = new ArrayList(this.f17640q);
                this.f17640q.clear();
            }
            for (Collection collection : arrayList) {
                this.f15215h.offer(collection);
            }
            this.f15217j = true;
            if (m4344f()) {
                QueueDrainHelper.m3402d(this.f15215h, this.f15214g, false, this.f17639p, this);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f15217j = true;
            m3884m();
            this.f15214g.onError(th);
            this.f17639p.dispose();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            synchronized (this) {
                for (U u : this.f17640q) {
                    u.add(t);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17641r, disposable)) {
                this.f17641r = disposable;
                try {
                    U call = this.f17635l.call();
                    ObjectHelper.m4363e(call, "The buffer supplied is null");
                    U u = call;
                    this.f17640q.add(u);
                    this.f15214g.onSubscribe(this);
                    Scheduler.Worker worker = this.f17639p;
                    long j = this.f17637n;
                    worker.mo3531d(this, j, j, this.f17638o);
                    this.f17639p.mo3228c(new RemoveFromBufferEmit(u), this.f17636m, this.f17638o);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    disposable.dispose();
                    EmptyDisposable.error(th, this.f15214g);
                    this.f17639p.dispose();
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f15216i) {
                try {
                    U call = this.f17635l.call();
                    ObjectHelper.m4363e(call, "The bufferSupplier returned a null buffer");
                    U u = call;
                    synchronized (this) {
                        if (!this.f15216i) {
                            this.f17640q.add(u);
                            this.f17639p.mo3228c(new RemoveFromBuffer(u), this.f17636m, this.f17638o);
                        }
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f15214g.onError(th);
                    dispose();
                }
            }
        }
    }

    public ObservableBufferTimed(ObservableSource<T> observableSource, long j, long j2, TimeUnit timeUnit, Scheduler scheduler, Callable<U> callable, int i, boolean z) {
        super(observableSource);
        this.f17610g = j;
        this.f17611h = j2;
        this.f17612i = timeUnit;
        this.f17613j = scheduler;
        this.f17614k = callable;
        this.f17615l = i;
        this.f17616m = z;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super U> observer) {
        if (this.f17610g == this.f17611h && this.f17615l == Integer.MAX_VALUE) {
            this.f17497f.subscribe(new BufferExactUnboundedObserver(new SerializedObserver(observer), this.f17614k, this.f17610g, this.f17612i, this.f17613j));
            return;
        }
        Scheduler.Worker b = this.f17613j.mo3232b();
        if (this.f17610g == this.f17611h) {
            this.f17497f.subscribe(new BufferExactBoundedObserver(new SerializedObserver(observer), this.f17614k, this.f17610g, this.f17612i, this.f17615l, this.f17616m, b));
        } else {
            this.f17497f.subscribe(new BufferSkipBoundedObserver(new SerializedObserver(observer), this.f17614k, this.f17610g, this.f17611h, this.f17612i, b));
        }
    }
}
