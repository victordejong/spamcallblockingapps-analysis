package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.observers.QueueDrainObserver;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.observers.SerializedObserver;
import io.reactivex.subjects.UnicastSubject;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowTimed.class */
public final class ObservableWindowTimed<T> extends AbstractObservableWithUpstream<T, Observable<T>> {

    /* renamed from: g */
    final long f18706g;

    /* renamed from: h */
    final long f18707h;

    /* renamed from: i */
    final TimeUnit f18708i;

    /* renamed from: j */
    final Scheduler f18709j;

    /* renamed from: k */
    final long f18710k;

    /* renamed from: l */
    final int f18711l;

    /* renamed from: m */
    final boolean f18712m;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver.class */
    static final class WindowExactBoundedObserver<T> extends QueueDrainObserver<T, Object, Observable<T>> implements Disposable {

        /* renamed from: l */
        final long f18713l;

        /* renamed from: m */
        final TimeUnit f18714m;

        /* renamed from: n */
        final Scheduler f18715n;

        /* renamed from: o */
        final int f18716o;

        /* renamed from: p */
        final boolean f18717p;

        /* renamed from: q */
        final long f18718q;

        /* renamed from: r */
        final Scheduler.Worker f18719r;

        /* renamed from: s */
        long f18720s;

        /* renamed from: t */
        long f18721t;

        /* renamed from: u */
        Disposable f18722u;

        /* renamed from: v */
        UnicastSubject<T> f18723v;

        /* renamed from: w */
        volatile boolean f18724w;

        /* renamed from: x */
        final SequentialDisposable f18725x = new SequentialDisposable();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder.class */
        public static final class ConsumerIndexHolder implements Runnable {

            /* renamed from: f */
            final long f18726f;

            /* renamed from: g */
            final WindowExactBoundedObserver<?> f18727g;

            ConsumerIndexHolder(long j, WindowExactBoundedObserver<?> windowExactBoundedObserver) {
                this.f18726f = j;
                this.f18727g = windowExactBoundedObserver;
            }

            @Override // java.lang.Runnable
            public void run() {
                WindowExactBoundedObserver<?> windowExactBoundedObserver = this.f18727g;
                if (!((QueueDrainObserver) windowExactBoundedObserver).f15216i) {
                    ((QueueDrainObserver) windowExactBoundedObserver).f15215h.offer(this);
                } else {
                    windowExactBoundedObserver.f18724w = true;
                }
                if (windowExactBoundedObserver.m4344f()) {
                    windowExactBoundedObserver.m3644m();
                }
            }
        }

        WindowExactBoundedObserver(Observer<? super Observable<T>> observer, long j, TimeUnit timeUnit, Scheduler scheduler, int i, long j2, boolean z) {
            super(observer, new MpscLinkedQueue());
            this.f18713l = j;
            this.f18714m = timeUnit;
            this.f18715n = scheduler;
            this.f18716o = i;
            this.f18718q = j2;
            this.f18717p = z;
            if (z) {
                this.f18719r = scheduler.mo3232b();
            } else {
                this.f18719r = null;
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15216i = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15216i;
        }

        /* renamed from: l */
        void m3645l() {
            DisposableHelper.dispose(this.f18725x);
            Scheduler.Worker worker = this.f18719r;
            if (worker != null) {
                worker.dispose();
            }
        }

        /* renamed from: m */
        void m3644m() {
            MpscLinkedQueue mpscLinkedQueue = (MpscLinkedQueue) this.f15215h;
            Observer<? super V> observer = this.f15214g;
            UnicastSubject<T> unicastSubject = this.f18723v;
            int i = 1;
            while (!this.f18724w) {
                boolean z = this.f15217j;
                Object poll = mpscLinkedQueue.poll();
                boolean z2 = poll == null;
                boolean z3 = poll instanceof ConsumerIndexHolder;
                if (z && (z2 || z3)) {
                    this.f18723v = null;
                    mpscLinkedQueue.clear();
                    Throwable th = this.f15218k;
                    if (th != null) {
                        unicastSubject.onError(th);
                    } else {
                        unicastSubject.onComplete();
                    }
                    m3645l();
                    return;
                } else if (z2) {
                    int d = mo3422d(-i);
                    i = d;
                    if (d == 0) {
                        return;
                    }
                } else if (z3) {
                    ConsumerIndexHolder consumerIndexHolder = (ConsumerIndexHolder) poll;
                    if (!this.f18717p || this.f18721t == consumerIndexHolder.f18726f) {
                        unicastSubject.onComplete();
                        this.f18720s = 0L;
                        unicastSubject = UnicastSubject.m3184f(this.f18716o);
                        this.f18723v = unicastSubject;
                        observer.onNext(unicastSubject);
                    }
                } else {
                    unicastSubject.onNext(NotificationLite.getValue(poll));
                    long j = this.f18720s + 1;
                    if (j >= this.f18718q) {
                        this.f18721t++;
                        this.f18720s = 0L;
                        unicastSubject.onComplete();
                        UnicastSubject<T> f = UnicastSubject.m3184f(this.f18716o);
                        this.f18723v = f;
                        this.f15214g.onNext(f);
                        unicastSubject = f;
                        if (this.f18717p) {
                            Disposable disposable = this.f18725x.get();
                            disposable.dispose();
                            Scheduler.Worker worker = this.f18719r;
                            ConsumerIndexHolder consumerIndexHolder2 = new ConsumerIndexHolder(this.f18721t, this);
                            long j2 = this.f18713l;
                            Disposable d2 = worker.mo3531d(consumerIndexHolder2, j2, j2, this.f18714m);
                            unicastSubject = f;
                            if (!this.f18725x.compareAndSet(disposable, d2)) {
                                d2.dispose();
                                unicastSubject = f;
                            }
                        }
                    } else {
                        this.f18720s = j;
                    }
                }
            }
            this.f18722u.dispose();
            mpscLinkedQueue.clear();
            m3645l();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f15217j = true;
            if (m4344f()) {
                m3644m();
            }
            this.f15214g.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f15218k = th;
            this.f15217j = true;
            if (m4344f()) {
                m3644m();
            }
            this.f15214g.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f18724w) {
                if (m4343g()) {
                    UnicastSubject<T> unicastSubject = this.f18723v;
                    unicastSubject.onNext(t);
                    long j = this.f18720s + 1;
                    if (j >= this.f18718q) {
                        this.f18721t++;
                        this.f18720s = 0L;
                        unicastSubject.onComplete();
                        UnicastSubject<T> f = UnicastSubject.m3184f(this.f18716o);
                        this.f18723v = f;
                        this.f15214g.onNext(f);
                        if (this.f18717p) {
                            this.f18725x.get().dispose();
                            Scheduler.Worker worker = this.f18719r;
                            ConsumerIndexHolder consumerIndexHolder = new ConsumerIndexHolder(this.f18721t, this);
                            long j2 = this.f18713l;
                            DisposableHelper.replace(this.f18725x, worker.mo3531d(consumerIndexHolder, j2, j2, this.f18714m));
                        }
                    } else {
                        this.f18720s = j;
                    }
                    if (mo3422d(-1) == 0) {
                        return;
                    }
                } else {
                    this.f15215h.offer(NotificationLite.next(t));
                    if (!m4344f()) {
                        return;
                    }
                }
                m3644m();
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            Disposable disposable2;
            if (DisposableHelper.validate(this.f18722u, disposable)) {
                this.f18722u = disposable;
                Observer<? super V> observer = this.f15214g;
                observer.onSubscribe(this);
                if (!this.f15216i) {
                    UnicastSubject<T> f = UnicastSubject.m3184f(this.f18716o);
                    this.f18723v = f;
                    observer.onNext(f);
                    ConsumerIndexHolder consumerIndexHolder = new ConsumerIndexHolder(this.f18721t, this);
                    if (this.f18717p) {
                        Scheduler.Worker worker = this.f18719r;
                        long j = this.f18713l;
                        disposable2 = worker.mo3531d(consumerIndexHolder, j, j, this.f18714m);
                    } else {
                        Scheduler scheduler = this.f18715n;
                        long j2 = this.f18713l;
                        disposable2 = scheduler.mo3501f(consumerIndexHolder, j2, j2, this.f18714m);
                    }
                    this.f18725x.m4422a(disposable2);
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactUnboundedObserver.class */
    static final class WindowExactUnboundedObserver<T> extends QueueDrainObserver<T, Object, Observable<T>> implements Observer<T>, Disposable, Runnable {

        /* renamed from: t */
        static final Object f18728t = new Object();

        /* renamed from: l */
        final long f18729l;

        /* renamed from: m */
        final TimeUnit f18730m;

        /* renamed from: n */
        final Scheduler f18731n;

        /* renamed from: o */
        final int f18732o;

        /* renamed from: p */
        Disposable f18733p;

        /* renamed from: q */
        UnicastSubject<T> f18734q;

        /* renamed from: r */
        final SequentialDisposable f18735r = new SequentialDisposable();

        /* renamed from: s */
        volatile boolean f18736s;

        WindowExactUnboundedObserver(Observer<? super Observable<T>> observer, long j, TimeUnit timeUnit, Scheduler scheduler, int i) {
            super(observer, new MpscLinkedQueue());
            this.f18729l = j;
            this.f18730m = timeUnit;
            this.f18731n = scheduler;
            this.f18732o = i;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15216i = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15216i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: j */
        void m3643j() {
            MpscLinkedQueue mpscLinkedQueue = (MpscLinkedQueue) this.f15215h;
            Observer<? super V> observer = this.f15214g;
            UnicastSubject<T> unicastSubject = this.f18734q;
            int i = 1;
            while (true) {
                boolean z = this.f18736s;
                boolean z2 = this.f15217j;
                Object poll = mpscLinkedQueue.poll();
                if (!z2 || !(poll == null || poll == f18728t)) {
                    if (poll == null) {
                        int d = mo3422d(-i);
                        i = d;
                        if (d == 0) {
                            return;
                        }
                    } else if (poll == f18728t) {
                        unicastSubject.onComplete();
                        if (!z) {
                            unicastSubject = (UnicastSubject<T>) UnicastSubject.m3184f(this.f18732o);
                            this.f18734q = unicastSubject;
                            observer.onNext(unicastSubject);
                        } else {
                            this.f18733p.dispose();
                        }
                    } else {
                        unicastSubject.onNext(NotificationLite.getValue(poll));
                    }
                }
            }
            this.f18734q = null;
            mpscLinkedQueue.clear();
            Throwable th = this.f15218k;
            if (th != null) {
                unicastSubject.onError(th);
            } else {
                unicastSubject.onComplete();
            }
            this.f18735r.dispose();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f15217j = true;
            if (m4344f()) {
                m3643j();
            }
            this.f15214g.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f15218k = th;
            this.f15217j = true;
            if (m4344f()) {
                m3643j();
            }
            this.f15214g.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f18736s) {
                if (m4343g()) {
                    this.f18734q.onNext(t);
                    if (mo3422d(-1) == 0) {
                        return;
                    }
                } else {
                    this.f15215h.offer(NotificationLite.next(t));
                    if (!m4344f()) {
                        return;
                    }
                }
                m3643j();
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18733p, disposable)) {
                this.f18733p = disposable;
                this.f18734q = UnicastSubject.m3184f(this.f18732o);
                Observer<? super V> observer = this.f15214g;
                observer.onSubscribe(this);
                observer.onNext(this.f18734q);
                if (!this.f15216i) {
                    Scheduler scheduler = this.f18731n;
                    long j = this.f18729l;
                    this.f18735r.m4422a(scheduler.mo3501f(this, j, j, this.f18730m));
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f15216i) {
                this.f18736s = true;
            }
            this.f15215h.offer(f18728t);
            if (m4344f()) {
                m3643j();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver.class */
    static final class WindowSkipObserver<T> extends QueueDrainObserver<T, Object, Observable<T>> implements Disposable, Runnable {

        /* renamed from: l */
        final long f18737l;

        /* renamed from: m */
        final long f18738m;

        /* renamed from: n */
        final TimeUnit f18739n;

        /* renamed from: o */
        final Scheduler.Worker f18740o;

        /* renamed from: p */
        final int f18741p;

        /* renamed from: q */
        final List<UnicastSubject<T>> f18742q = new LinkedList();

        /* renamed from: r */
        Disposable f18743r;

        /* renamed from: s */
        volatile boolean f18744s;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$CompletionTask.class */
        public final class CompletionTask implements Runnable {

            /* renamed from: f */
            private final UnicastSubject<T> f18745f;

            CompletionTask(UnicastSubject<T> unicastSubject) {
                this.f18745f = unicastSubject;
            }

            @Override // java.lang.Runnable
            public void run() {
                WindowSkipObserver.this.m3642j(this.f18745f);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork.class */
        public static final class SubjectWork<T> {

            /* renamed from: a */
            final UnicastSubject<T> f18747a;

            /* renamed from: b */
            final boolean f18748b;

            SubjectWork(UnicastSubject<T> unicastSubject, boolean z) {
                this.f18747a = unicastSubject;
                this.f18748b = z;
            }
        }

        WindowSkipObserver(Observer<? super Observable<T>> observer, long j, long j2, TimeUnit timeUnit, Scheduler.Worker worker, int i) {
            super(observer, new MpscLinkedQueue());
            this.f18737l = j;
            this.f18738m = j2;
            this.f18739n = timeUnit;
            this.f18740o = worker;
            this.f18741p = i;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15216i = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15216i;
        }

        /* renamed from: j */
        void m3642j(UnicastSubject<T> unicastSubject) {
            this.f15215h.offer(new SubjectWork(unicastSubject, false));
            if (m4344f()) {
                m3641k();
            }
        }

        /* renamed from: k */
        void m3641k() {
            MpscLinkedQueue mpscLinkedQueue = (MpscLinkedQueue) this.f15215h;
            Observer<? super V> observer = this.f15214g;
            List<UnicastSubject<T>> list = this.f18742q;
            int i = 1;
            while (!this.f18744s) {
                boolean z = this.f15217j;
                T t = (T) mpscLinkedQueue.poll();
                boolean z2 = t == null;
                boolean z3 = t instanceof SubjectWork;
                if (z && (z2 || z3)) {
                    mpscLinkedQueue.clear();
                    Throwable th = this.f15218k;
                    if (th != null) {
                        for (UnicastSubject<T> unicastSubject : list) {
                            unicastSubject.onError(th);
                        }
                    } else {
                        for (UnicastSubject<T> unicastSubject2 : list) {
                            unicastSubject2.onComplete();
                        }
                    }
                    list.clear();
                    this.f18740o.dispose();
                    return;
                } else if (z2) {
                    int d = mo3422d(-i);
                    i = d;
                    if (d == 0) {
                        return;
                    }
                } else if (z3) {
                    SubjectWork subjectWork = (SubjectWork) t;
                    if (!subjectWork.f18748b) {
                        list.remove(subjectWork.f18747a);
                        subjectWork.f18747a.onComplete();
                        if (list.isEmpty() && this.f15216i) {
                            this.f18744s = true;
                        }
                    } else if (!this.f15216i) {
                        UnicastSubject<T> f = UnicastSubject.m3184f(this.f18741p);
                        list.add(f);
                        observer.onNext(f);
                        this.f18740o.mo3228c(new CompletionTask(f), this.f18737l, this.f18739n);
                    }
                } else {
                    for (UnicastSubject<T> unicastSubject3 : list) {
                        unicastSubject3.onNext(t);
                    }
                }
            }
            this.f18743r.dispose();
            mpscLinkedQueue.clear();
            list.clear();
            this.f18740o.dispose();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f15217j = true;
            if (m4344f()) {
                m3641k();
            }
            this.f15214g.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f15218k = th;
            this.f15217j = true;
            if (m4344f()) {
                m3641k();
            }
            this.f15214g.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (m4343g()) {
                for (UnicastSubject<T> unicastSubject : this.f18742q) {
                    unicastSubject.onNext(t);
                }
                if (mo3422d(-1) == 0) {
                    return;
                }
            } else {
                this.f15215h.offer(t);
                if (!m4344f()) {
                    return;
                }
            }
            m3641k();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18743r, disposable)) {
                this.f18743r = disposable;
                this.f15214g.onSubscribe(this);
                if (!this.f15216i) {
                    UnicastSubject<T> f = UnicastSubject.m3184f(this.f18741p);
                    this.f18742q.add(f);
                    this.f15214g.onNext(f);
                    this.f18740o.mo3228c(new CompletionTask(f), this.f18737l, this.f18739n);
                    Scheduler.Worker worker = this.f18740o;
                    long j = this.f18738m;
                    worker.mo3531d(this, j, j, this.f18739n);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            SubjectWork subjectWork = new SubjectWork(UnicastSubject.m3184f(this.f18741p), true);
            if (!this.f15216i) {
                this.f15215h.offer(subjectWork);
            }
            if (m4344f()) {
                m3641k();
            }
        }
    }

    public ObservableWindowTimed(ObservableSource<T> observableSource, long j, long j2, TimeUnit timeUnit, Scheduler scheduler, long j3, int i, boolean z) {
        super(observableSource);
        this.f18706g = j;
        this.f18707h = j2;
        this.f18708i = timeUnit;
        this.f18709j = scheduler;
        this.f18710k = j3;
        this.f18711l = i;
        this.f18712m = z;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super Observable<T>> observer) {
        SerializedObserver serializedObserver = new SerializedObserver(observer);
        long j = this.f18706g;
        long j2 = this.f18707h;
        if (j == j2) {
            long j3 = this.f18710k;
            if (j3 == Long.MAX_VALUE) {
                this.f17497f.subscribe(new WindowExactUnboundedObserver(serializedObserver, this.f18706g, this.f18708i, this.f18709j, this.f18711l));
            } else {
                this.f17497f.subscribe(new WindowExactBoundedObserver(serializedObserver, j, this.f18708i, this.f18709j, this.f18711l, j3, this.f18712m));
            }
        } else {
            this.f17497f.subscribe(new WindowSkipObserver(serializedObserver, j, j2, this.f18708i, this.f18709j.mo3232b(), this.f18711l));
        }
    }
}
