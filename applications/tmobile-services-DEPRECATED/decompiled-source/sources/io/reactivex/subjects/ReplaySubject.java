package io.reactivex.subjects;

import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject.class */
public final class ReplaySubject<T> extends Subject<T> {

    /* renamed from: i */
    static final ReplayDisposable[] f19732i = new ReplayDisposable[0];

    /* renamed from: j */
    static final ReplayDisposable[] f19733j = new ReplayDisposable[0];

    /* renamed from: k */
    private static final Object[] f19734k = new Object[0];

    /* renamed from: f */
    final ReplayBuffer<T> f19735f;

    /* renamed from: g */
    final AtomicReference<ReplayDisposable<T>[]> f19736g;

    /* renamed from: h */
    boolean f19737h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$Node.class */
    public static final class Node<T> extends AtomicReference<Node<T>> {
        private static final long serialVersionUID = 6404226426336033100L;

        /* renamed from: f */
        final T f19738f;

        Node(T t) {
            this.f19738f = t;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$ReplayBuffer.class */
    public interface ReplayBuffer<T> {
        /* renamed from: a */
        void mo3194a(Object obj);

        void add(T t);

        /* renamed from: b */
        void mo3193b(ReplayDisposable<T> replayDisposable);

        boolean compareAndSet(Object obj, Object obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$ReplayDisposable.class */
    public static final class ReplayDisposable<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 466549804534799122L;

        /* renamed from: f */
        final Observer<? super T> f19739f;

        /* renamed from: g */
        final ReplaySubject<T> f19740g;

        /* renamed from: h */
        Object f19741h;

        /* renamed from: i */
        volatile boolean f19742i;

        ReplayDisposable(Observer<? super T> observer, ReplaySubject<T> replaySubject) {
            this.f19739f = observer;
            this.f19740g = replaySubject;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f19742i) {
                this.f19742i = true;
                this.f19740g.m3201f(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19742i;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer.class */
    static final class SizeAndTimeBoundReplayBuffer<T> extends AtomicReference<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = -8056260896137901749L;

        /* renamed from: f */
        final int f19743f;

        /* renamed from: g */
        final long f19744g;

        /* renamed from: h */
        final TimeUnit f19745h;

        /* renamed from: i */
        final Scheduler f19746i;

        /* renamed from: j */
        int f19747j;

        /* renamed from: k */
        volatile TimedNode<Object> f19748k;

        /* renamed from: l */
        TimedNode<Object> f19749l;

        /* renamed from: m */
        volatile boolean f19750m;

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        /* renamed from: a */
        public void mo3194a(Object obj) {
            TimedNode<Object> timedNode = new TimedNode<>(obj, Long.MAX_VALUE);
            TimedNode<Object> timedNode2 = this.f19749l;
            this.f19749l = timedNode;
            this.f19747j++;
            timedNode2.lazySet(timedNode);
            m3197e();
            this.f19750m = true;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void add(T t) {
            TimedNode<Object> timedNode = new TimedNode<>(t, this.f19746i.mo3231c(this.f19745h));
            TimedNode<Object> timedNode2 = this.f19749l;
            this.f19749l = timedNode;
            this.f19747j++;
            timedNode2.set(timedNode);
            m3198d();
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        /* renamed from: b */
        public void mo3193b(ReplayDisposable<T> replayDisposable) {
            if (replayDisposable.getAndIncrement() == 0) {
                Observer<? super T> observer = replayDisposable.f19739f;
                TimedNode<Object> timedNode = (TimedNode) replayDisposable.f19741h;
                TimedNode<T> timedNode2 = timedNode;
                if (timedNode == null) {
                    timedNode2 = m3199c();
                }
                int i = 1;
                while (true) {
                    timedNode2 = timedNode2;
                    if (replayDisposable.f19742i) {
                        replayDisposable.f19741h = null;
                        return;
                    }
                    while (!replayDisposable.f19742i) {
                        TimedNode<T> timedNode3 = timedNode2.get();
                        if (timedNode3 != null) {
                            Object obj = (T) timedNode3.f19756f;
                            if (!this.f19750m || timedNode3.get() != null) {
                                observer.onNext(obj);
                                timedNode2 = timedNode3;
                            } else {
                                if (NotificationLite.isComplete(obj)) {
                                    observer.onComplete();
                                } else {
                                    observer.onError(NotificationLite.getError(obj));
                                }
                                replayDisposable.f19741h = null;
                                replayDisposable.f19742i = true;
                                return;
                            }
                        } else if (timedNode2.get() == null) {
                            replayDisposable.f19741h = timedNode2;
                            int addAndGet = replayDisposable.addAndGet(-i);
                            i = addAndGet;
                            if (addAndGet == 0) {
                                return;
                            }
                        }
                    }
                    replayDisposable.f19741h = null;
                    return;
                }
            }
        }

        /* renamed from: c */
        TimedNode<Object> m3199c() {
            TimedNode<Object> timedNode = this.f19748k;
            long c = this.f19746i.mo3231c(this.f19745h);
            long j = this.f19744g;
            TimedNode<Object> timedNode2 = timedNode.get();
            while (timedNode2 != null && timedNode2.f19757g <= c - j) {
                timedNode2 = timedNode2.get();
                timedNode = timedNode2;
            }
            return timedNode;
        }

        /* renamed from: d */
        void m3198d() {
            int i = this.f19747j;
            if (i > this.f19743f) {
                this.f19747j = i - 1;
                this.f19748k = this.f19748k.get();
            }
            long c = this.f19746i.mo3231c(this.f19745h);
            long j = this.f19744g;
            TimedNode<Object> timedNode = this.f19748k;
            while (this.f19747j > 1) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2 == null) {
                    this.f19748k = timedNode;
                    return;
                } else if (timedNode2.f19757g > c - j) {
                    this.f19748k = timedNode;
                    return;
                } else {
                    this.f19747j--;
                    timedNode = timedNode2;
                }
            }
            this.f19748k = timedNode;
        }

        /* renamed from: e */
        void m3197e() {
            long c = this.f19746i.mo3231c(this.f19745h);
            long j = this.f19744g;
            TimedNode<Object> timedNode = this.f19748k;
            while (true) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2.get() == null) {
                    if (timedNode.f19756f != null) {
                        TimedNode<Object> timedNode3 = new TimedNode<>(null, 0L);
                        timedNode3.lazySet(timedNode.get());
                        this.f19748k = timedNode3;
                        return;
                    }
                    this.f19748k = timedNode;
                    return;
                } else if (timedNode2.f19757g <= c - j) {
                    timedNode = timedNode2;
                } else if (timedNode.f19756f != null) {
                    TimedNode<Object> timedNode4 = new TimedNode<>(null, 0L);
                    timedNode4.lazySet(timedNode.get());
                    this.f19748k = timedNode4;
                    return;
                } else {
                    this.f19748k = timedNode;
                    return;
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer.class */
    static final class SizeBoundReplayBuffer<T> extends AtomicReference<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 1107649250281456395L;

        /* renamed from: f */
        final int f19751f;

        /* renamed from: g */
        int f19752g;

        /* renamed from: h */
        volatile Node<Object> f19753h;

        /* renamed from: i */
        Node<Object> f19754i;

        /* renamed from: j */
        volatile boolean f19755j;

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        /* renamed from: a */
        public void mo3194a(Object obj) {
            Node<Object> node = new Node<>(obj);
            Node<Object> node2 = this.f19754i;
            this.f19754i = node;
            this.f19752g++;
            node2.lazySet(node);
            m3195d();
            this.f19755j = true;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void add(T t) {
            Node<Object> node = new Node<>(t);
            Node<Object> node2 = this.f19754i;
            this.f19754i = node;
            this.f19752g++;
            node2.set(node);
            m3196c();
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        /* renamed from: b */
        public void mo3193b(ReplayDisposable<T> replayDisposable) {
            if (replayDisposable.getAndIncrement() == 0) {
                Observer<? super T> observer = replayDisposable.f19739f;
                Node<Object> node = (Node) replayDisposable.f19741h;
                Node<T> node2 = node;
                if (node == null) {
                    node2 = this.f19753h;
                }
                int i = 1;
                while (!replayDisposable.f19742i) {
                    Node<T> node3 = node2.get();
                    if (node3 != null) {
                        Object obj = (T) node3.f19738f;
                        if (!this.f19755j || node3.get() != null) {
                            observer.onNext(obj);
                            node2 = node3;
                        } else {
                            if (NotificationLite.isComplete(obj)) {
                                observer.onComplete();
                            } else {
                                observer.onError(NotificationLite.getError(obj));
                            }
                            replayDisposable.f19741h = null;
                            replayDisposable.f19742i = true;
                            return;
                        }
                    } else if (node2.get() != null) {
                        continue;
                    } else {
                        replayDisposable.f19741h = node2;
                        int addAndGet = replayDisposable.addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    }
                }
                replayDisposable.f19741h = null;
            }
        }

        /* renamed from: c */
        void m3196c() {
            int i = this.f19752g;
            if (i > this.f19751f) {
                this.f19752g = i - 1;
                this.f19753h = this.f19753h.get();
            }
        }

        /* renamed from: d */
        public void m3195d() {
            Node<Object> node = this.f19753h;
            if (node.f19738f != null) {
                Node<Object> node2 = new Node<>(null);
                node2.lazySet(node.get());
                this.f19753h = node2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$TimedNode.class */
    public static final class TimedNode<T> extends AtomicReference<TimedNode<T>> {
        private static final long serialVersionUID = 6404226426336033100L;

        /* renamed from: f */
        final T f19756f;

        /* renamed from: g */
        final long f19757g;

        TimedNode(T t, long j) {
            this.f19756f = t;
            this.f19757g = j;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer.class */
    static final class UnboundedReplayBuffer<T> extends AtomicReference<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = -733876083048047795L;

        /* renamed from: f */
        final List<Object> f19758f;

        /* renamed from: g */
        volatile boolean f19759g;

        /* renamed from: h */
        volatile int f19760h;

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        /* renamed from: a */
        public void mo3194a(Object obj) {
            this.f19758f.add(obj);
            m3192c();
            this.f19760h++;
            this.f19759g = true;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void add(T t) {
            this.f19758f.add(t);
            this.f19760h++;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        /* renamed from: b */
        public void mo3193b(ReplayDisposable<T> replayDisposable) {
            if (replayDisposable.getAndIncrement() == 0) {
                List<Object> list = this.f19758f;
                Observer<? super T> observer = replayDisposable.f19739f;
                Integer num = (Integer) replayDisposable.f19741h;
                int i = 0;
                if (num != null) {
                    i = num.intValue();
                } else {
                    replayDisposable.f19741h = 0;
                }
                int i2 = 1;
                while (!replayDisposable.f19742i) {
                    int i3 = this.f19760h;
                    while (i3 != i) {
                        if (replayDisposable.f19742i) {
                            replayDisposable.f19741h = null;
                            return;
                        }
                        Object obj = list.get(i);
                        i3 = i3;
                        if (this.f19759g) {
                            int i4 = i + 1;
                            i3 = i3;
                            if (i4 == i3) {
                                int i5 = this.f19760h;
                                i3 = i5;
                                if (i4 == i5) {
                                    if (NotificationLite.isComplete(obj)) {
                                        observer.onComplete();
                                    } else {
                                        observer.onError(NotificationLite.getError(obj));
                                    }
                                    replayDisposable.f19741h = null;
                                    replayDisposable.f19742i = true;
                                    return;
                                }
                            } else {
                                continue;
                            }
                        }
                        observer.onNext(obj);
                        i++;
                    }
                    if (i == this.f19760h) {
                        replayDisposable.f19741h = Integer.valueOf(i);
                        int addAndGet = replayDisposable.addAndGet(-i2);
                        i2 = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    }
                }
                replayDisposable.f19741h = null;
            }
        }

        /* renamed from: c */
        public void m3192c() {
        }
    }

    /* renamed from: e */
    boolean m3202e(ReplayDisposable<T> replayDisposable) {
        ReplayDisposable<T>[] replayDisposableArr;
        ReplayDisposable<T>[] replayDisposableArr2;
        do {
            replayDisposableArr = this.f19736g.get();
            if (replayDisposableArr == f19733j) {
                return false;
            }
            int length = replayDisposableArr.length;
            replayDisposableArr2 = new ReplayDisposable[length + 1];
            System.arraycopy(replayDisposableArr, 0, replayDisposableArr2, 0, length);
            replayDisposableArr2[length] = replayDisposable;
        } while (!this.f19736g.compareAndSet(replayDisposableArr, replayDisposableArr2));
        return true;
    }

    /* renamed from: f */
    void m3201f(ReplayDisposable<T> replayDisposable) {
        ReplayDisposable<T>[] replayDisposableArr;
        ReplayDisposable<T>[] replayDisposableArr2;
        do {
            replayDisposableArr = this.f19736g.get();
            if (replayDisposableArr != f19733j && replayDisposableArr != f19732i) {
                int length = replayDisposableArr.length;
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (replayDisposableArr[i2] == replayDisposable) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        replayDisposableArr2 = f19732i;
                    } else {
                        replayDisposableArr2 = new ReplayDisposable[length - 1];
                        System.arraycopy(replayDisposableArr, 0, replayDisposableArr2, 0, i);
                        System.arraycopy(replayDisposableArr, i + 1, replayDisposableArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f19736g.compareAndSet(replayDisposableArr, replayDisposableArr2));
    }

    /* renamed from: g */
    ReplayDisposable<T>[] m3200g(Object obj) {
        return this.f19735f.compareAndSet(null, obj) ? this.f19736g.getAndSet(f19733j) : f19733j;
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (!this.f19737h) {
            this.f19737h = true;
            Object complete = NotificationLite.complete();
            ReplayBuffer<T> replayBuffer = this.f19735f;
            replayBuffer.mo3194a(complete);
            for (ReplayDisposable<T> replayDisposable : m3200g(complete)) {
                replayBuffer.mo3193b(replayDisposable);
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        ObjectHelper.m4363e(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f19737h) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        this.f19737h = true;
        Object error = NotificationLite.error(th);
        ReplayBuffer<T> replayBuffer = this.f19735f;
        replayBuffer.mo3194a(error);
        for (ReplayDisposable<T> replayDisposable : m3200g(error)) {
            replayBuffer.mo3193b(replayDisposable);
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        ObjectHelper.m4363e(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f19737h) {
            ReplayBuffer<T> replayBuffer = this.f19735f;
            replayBuffer.add(t);
            for (ReplayDisposable<T> replayDisposable : this.f19736g.get()) {
                replayBuffer.mo3193b(replayDisposable);
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (this.f19737h) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        ReplayDisposable<T> replayDisposable = new ReplayDisposable<>(observer, this);
        observer.onSubscribe(replayDisposable);
        if (replayDisposable.f19742i) {
            return;
        }
        if (!m3202e(replayDisposable) || !replayDisposable.f19742i) {
            this.f19735f.mo3193b(replayDisposable);
        } else {
            m3201f(replayDisposable);
        }
    }
}
