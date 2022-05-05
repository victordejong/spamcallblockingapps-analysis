package io.reactivex.processors;

import io.reactivex.Scheduler;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor.class */
public final class ReplayProcessor<T> extends FlowableProcessor<T> {

    /* renamed from: j */
    private static final Object[] f19540j = new Object[0];

    /* renamed from: k */
    static final ReplaySubscription[] f19541k = new ReplaySubscription[0];

    /* renamed from: l */
    static final ReplaySubscription[] f19542l = new ReplaySubscription[0];

    /* renamed from: g */
    final ReplayBuffer<T> f19543g;

    /* renamed from: h */
    boolean f19544h;

    /* renamed from: i */
    final AtomicReference<ReplaySubscription<T>[]> f19545i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor$Node.class */
    public static final class Node<T> extends AtomicReference<Node<T>> {
        private static final long serialVersionUID = 6404226426336033100L;

        /* renamed from: f */
        final T f19546f;

        Node(T t) {
            this.f19546f = t;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor$ReplayBuffer.class */
    interface ReplayBuffer<T> {
        /* renamed from: a */
        void mo3318a(ReplaySubscription<T> replaySubscription);

        /* renamed from: c */
        void mo3317c();

        /* renamed from: d */
        void mo3316d(T t);

        /* renamed from: f */
        void mo3315f(Throwable th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor$ReplaySubscription.class */
    public static final class ReplaySubscription<T> extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = 466549804534799122L;

        /* renamed from: f */
        final Subscriber<? super T> f19547f;

        /* renamed from: g */
        final ReplayProcessor<T> f19548g;

        /* renamed from: h */
        Object f19549h;

        /* renamed from: i */
        final AtomicLong f19550i = new AtomicLong();

        /* renamed from: j */
        volatile boolean f19551j;

        /* renamed from: k */
        long f19552k;

        ReplaySubscription(Subscriber<? super T> subscriber, ReplayProcessor<T> replayProcessor) {
            this.f19547f = subscriber;
            this.f19548g = replayProcessor;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f19551j) {
                this.f19551j = true;
                this.f19548g.m3324E(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f19550i, j);
                this.f19548g.f19543g.mo3318a(this);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer.class */
    static final class SizeAndTimeBoundReplayBuffer<T> implements ReplayBuffer<T> {

        /* renamed from: a */
        final int f19553a;

        /* renamed from: b */
        final long f19554b;

        /* renamed from: c */
        final TimeUnit f19555c;

        /* renamed from: d */
        final Scheduler f19556d;

        /* renamed from: e */
        int f19557e;

        /* renamed from: f */
        volatile TimedNode<T> f19558f;

        /* renamed from: g */
        TimedNode<T> f19559g;

        /* renamed from: h */
        Throwable f19560h;

        /* renamed from: i */
        volatile boolean f19561i;

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        /* renamed from: a */
        public void mo3318a(ReplaySubscription<T> replaySubscription) {
            int i;
            int addAndGet;
            if (replaySubscription.getAndIncrement() == 0) {
                Subscriber<? super T> subscriber = replaySubscription.f19547f;
                TimedNode<T> timedNode = (TimedNode) replaySubscription.f19549h;
                TimedNode<T> timedNode2 = timedNode;
                if (timedNode == null) {
                    timedNode2 = m3323b();
                }
                long j = replaySubscription.f19552k;
                int i2 = 1;
                do {
                    long j2 = replaySubscription.f19550i.get();
                    while (true) {
                        i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
                        if (i == 0) {
                            break;
                        } else if (replaySubscription.f19551j) {
                            replaySubscription.f19549h = null;
                            return;
                        } else {
                            boolean z = this.f19561i;
                            TimedNode<T> timedNode3 = timedNode2.get();
                            boolean z2 = timedNode3 == null;
                            if (z && z2) {
                                replaySubscription.f19549h = null;
                                replaySubscription.f19551j = true;
                                Throwable th = this.f19560h;
                                if (th == null) {
                                    subscriber.onComplete();
                                    return;
                                } else {
                                    subscriber.onError(th);
                                    return;
                                }
                            } else if (z2) {
                                break;
                            } else {
                                subscriber.onNext((T) timedNode3.f19568f);
                                j++;
                                timedNode2 = timedNode3;
                            }
                        }
                    }
                    if (i == 0) {
                        if (replaySubscription.f19551j) {
                            replaySubscription.f19549h = null;
                            return;
                        } else if (this.f19561i && timedNode2.get() == null) {
                            replaySubscription.f19549h = null;
                            replaySubscription.f19551j = true;
                            Throwable th2 = this.f19560h;
                            if (th2 == null) {
                                subscriber.onComplete();
                                return;
                            } else {
                                subscriber.onError(th2);
                                return;
                            }
                        }
                    }
                    replaySubscription.f19549h = timedNode2;
                    replaySubscription.f19552k = j;
                    addAndGet = replaySubscription.addAndGet(-i2);
                    i2 = addAndGet;
                } while (addAndGet != 0);
            }
        }

        /* renamed from: b */
        TimedNode<T> m3323b() {
            TimedNode<T> timedNode = this.f19558f;
            long c = this.f19556d.mo3231c(this.f19555c);
            long j = this.f19554b;
            TimedNode<T> timedNode2 = timedNode.get();
            while (timedNode2 != null && timedNode2.f19569g <= c - j) {
                timedNode2 = timedNode2.get();
                timedNode = timedNode2;
            }
            return timedNode;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        /* renamed from: c */
        public void mo3317c() {
            m3321g();
            this.f19561i = true;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        /* renamed from: d */
        public void mo3316d(T t) {
            TimedNode<T> timedNode = new TimedNode<>(t, this.f19556d.mo3231c(this.f19555c));
            TimedNode<T> timedNode2 = this.f19559g;
            this.f19559g = timedNode;
            this.f19557e++;
            timedNode2.set(timedNode);
            m3322e();
        }

        /* renamed from: e */
        void m3322e() {
            int i = this.f19557e;
            if (i > this.f19553a) {
                this.f19557e = i - 1;
                this.f19558f = this.f19558f.get();
            }
            long c = this.f19556d.mo3231c(this.f19555c);
            long j = this.f19554b;
            TimedNode<T> timedNode = this.f19558f;
            while (this.f19557e > 1) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2 == null) {
                    this.f19558f = timedNode;
                    return;
                } else if (timedNode2.f19569g > c - j) {
                    this.f19558f = timedNode;
                    return;
                } else {
                    this.f19557e--;
                    timedNode = timedNode2;
                }
            }
            this.f19558f = timedNode;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        /* renamed from: f */
        public void mo3315f(Throwable th) {
            m3321g();
            this.f19560h = th;
            this.f19561i = true;
        }

        /* renamed from: g */
        void m3321g() {
            long c = this.f19556d.mo3231c(this.f19555c);
            long j = this.f19554b;
            TimedNode<T> timedNode = this.f19558f;
            while (true) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2 == null) {
                    if (timedNode.f19568f != null) {
                        this.f19558f = new TimedNode<>(null, 0L);
                        return;
                    } else {
                        this.f19558f = timedNode;
                        return;
                    }
                } else if (timedNode2.f19569g <= c - j) {
                    timedNode = timedNode2;
                } else if (timedNode.f19568f != null) {
                    TimedNode<T> timedNode3 = new TimedNode<>(null, 0L);
                    timedNode3.lazySet(timedNode.get());
                    this.f19558f = timedNode3;
                    return;
                } else {
                    this.f19558f = timedNode;
                    return;
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer.class */
    static final class SizeBoundReplayBuffer<T> implements ReplayBuffer<T> {

        /* renamed from: a */
        final int f19562a;

        /* renamed from: b */
        int f19563b;

        /* renamed from: c */
        volatile Node<T> f19564c;

        /* renamed from: d */
        Node<T> f19565d;

        /* renamed from: e */
        Throwable f19566e;

        /* renamed from: f */
        volatile boolean f19567f;

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        /* renamed from: a */
        public void mo3318a(ReplaySubscription<T> replaySubscription) {
            int i;
            int addAndGet;
            if (replaySubscription.getAndIncrement() == 0) {
                Subscriber<? super T> subscriber = replaySubscription.f19547f;
                Node<T> node = (Node) replaySubscription.f19549h;
                Node<T> node2 = node;
                if (node == null) {
                    node2 = this.f19564c;
                }
                long j = replaySubscription.f19552k;
                int i2 = 1;
                do {
                    long j2 = replaySubscription.f19550i.get();
                    while (true) {
                        i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
                        if (i == 0) {
                            break;
                        } else if (replaySubscription.f19551j) {
                            replaySubscription.f19549h = null;
                            return;
                        } else {
                            boolean z = this.f19567f;
                            Node<T> node3 = node2.get();
                            boolean z2 = node3 == null;
                            if (z && z2) {
                                replaySubscription.f19549h = null;
                                replaySubscription.f19551j = true;
                                Throwable th = this.f19566e;
                                if (th == null) {
                                    subscriber.onComplete();
                                    return;
                                } else {
                                    subscriber.onError(th);
                                    return;
                                }
                            } else if (z2) {
                                break;
                            } else {
                                subscriber.onNext((T) node3.f19546f);
                                j++;
                                node2 = node3;
                            }
                        }
                    }
                    if (i == 0) {
                        if (replaySubscription.f19551j) {
                            replaySubscription.f19549h = null;
                            return;
                        } else if (this.f19567f && node2.get() == null) {
                            replaySubscription.f19549h = null;
                            replaySubscription.f19551j = true;
                            Throwable th2 = this.f19566e;
                            if (th2 == null) {
                                subscriber.onComplete();
                                return;
                            } else {
                                subscriber.onError(th2);
                                return;
                            }
                        }
                    }
                    replaySubscription.f19549h = node2;
                    replaySubscription.f19552k = j;
                    addAndGet = replaySubscription.addAndGet(-i2);
                    i2 = addAndGet;
                } while (addAndGet != 0);
            }
        }

        /* renamed from: b */
        void m3320b() {
            int i = this.f19563b;
            if (i > this.f19562a) {
                this.f19563b = i - 1;
                this.f19564c = this.f19564c.get();
            }
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        /* renamed from: c */
        public void mo3317c() {
            m3319e();
            this.f19567f = true;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        /* renamed from: d */
        public void mo3316d(T t) {
            Node<T> node = new Node<>(t);
            Node<T> node2 = this.f19565d;
            this.f19565d = node;
            this.f19563b++;
            node2.set(node);
            m3320b();
        }

        /* renamed from: e */
        public void m3319e() {
            if (this.f19564c.f19546f != null) {
                Node<T> node = new Node<>(null);
                node.lazySet(this.f19564c.get());
                this.f19564c = node;
            }
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        /* renamed from: f */
        public void mo3315f(Throwable th) {
            this.f19566e = th;
            m3319e();
            this.f19567f = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor$TimedNode.class */
    public static final class TimedNode<T> extends AtomicReference<TimedNode<T>> {
        private static final long serialVersionUID = 6404226426336033100L;

        /* renamed from: f */
        final T f19568f;

        /* renamed from: g */
        final long f19569g;

        TimedNode(T t, long j) {
            this.f19568f = t;
            this.f19569g = j;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer.class */
    static final class UnboundedReplayBuffer<T> implements ReplayBuffer<T> {

        /* renamed from: a */
        final List<T> f19570a;

        /* renamed from: b */
        Throwable f19571b;

        /* renamed from: c */
        volatile boolean f19572c;

        /* renamed from: d */
        volatile int f19573d;

        /* JADX WARN: Code restructure failed: missing block: B:30:0x00c2, code lost:
            if (r0 != 0) goto L_0x010e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00c9, code lost:
            if (r6.f19551j == false) goto L_0x00d2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00cc, code lost:
            r6.f19549h = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00d1, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00d2, code lost:
            r0 = r5.f19572c;
            r0 = r5.f19573d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00e0, code lost:
            if (r0 == false) goto L_0x010e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00e7, code lost:
            if (r10 != r0) goto L_0x010e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00ea, code lost:
            r6.f19549h = null;
            r6.f19551j = true;
            r0 = r5.f19571b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00fa, code lost:
            if (r0 != null) goto L_0x0106;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00fd, code lost:
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0106, code lost:
            r0.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x010d, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x010e, code lost:
            r6.f19549h = java.lang.Integer.valueOf(r10);
            r6.f19552k = r11;
            r0 = r6.addAndGet(-r13);
            r13 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:?, code lost:
            return;
         */
        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo3318a(io.reactivex.processors.ReplayProcessor.ReplaySubscription<T> r6) {
            /*
                Method dump skipped, instructions count: 304
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.processors.ReplayProcessor.UnboundedReplayBuffer.mo3318a(io.reactivex.processors.ReplayProcessor$ReplaySubscription):void");
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        /* renamed from: c */
        public void mo3317c() {
            this.f19572c = true;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        /* renamed from: d */
        public void mo3316d(T t) {
            this.f19570a.add(t);
            this.f19573d++;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        /* renamed from: f */
        public void mo3315f(Throwable th) {
            this.f19571b = th;
            this.f19572c = true;
        }
    }

    /* renamed from: D */
    boolean m3325D(ReplaySubscription<T> replaySubscription) {
        ReplaySubscription<T>[] replaySubscriptionArr;
        ReplaySubscription<T>[] replaySubscriptionArr2;
        do {
            replaySubscriptionArr = this.f19545i.get();
            if (replaySubscriptionArr == f19542l) {
                return false;
            }
            int length = replaySubscriptionArr.length;
            replaySubscriptionArr2 = new ReplaySubscription[length + 1];
            System.arraycopy(replaySubscriptionArr, 0, replaySubscriptionArr2, 0, length);
            replaySubscriptionArr2[length] = replaySubscription;
        } while (!this.f19545i.compareAndSet(replaySubscriptionArr, replaySubscriptionArr2));
        return true;
    }

    /* renamed from: E */
    void m3324E(ReplaySubscription<T> replaySubscription) {
        ReplaySubscription<T>[] replaySubscriptionArr;
        ReplaySubscription<T>[] replaySubscriptionArr2;
        do {
            replaySubscriptionArr = this.f19545i.get();
            if (replaySubscriptionArr != f19542l && replaySubscriptionArr != f19541k) {
                int length = replaySubscriptionArr.length;
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (replaySubscriptionArr[i2] == replaySubscription) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        replaySubscriptionArr2 = f19541k;
                    } else {
                        replaySubscriptionArr2 = new ReplaySubscription[length - 1];
                        System.arraycopy(replaySubscriptionArr, 0, replaySubscriptionArr2, 0, i);
                        System.arraycopy(replaySubscriptionArr, i + 1, replaySubscriptionArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f19545i.compareAndSet(replaySubscriptionArr, replaySubscriptionArr2));
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (!this.f19544h) {
            this.f19544h = true;
            ReplayBuffer<T> replayBuffer = this.f19543g;
            replayBuffer.mo3317c();
            for (ReplaySubscription<T> replaySubscription : this.f19545i.getAndSet(f19542l)) {
                replayBuffer.mo3318a(replaySubscription);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        ObjectHelper.m4363e(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f19544h) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        this.f19544h = true;
        ReplayBuffer<T> replayBuffer = this.f19543g;
        replayBuffer.mo3315f(th);
        for (ReplaySubscription<T> replaySubscription : this.f19545i.getAndSet(f19542l)) {
            replayBuffer.mo3318a(replaySubscription);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        ObjectHelper.m4363e(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f19544h) {
            ReplayBuffer<T> replayBuffer = this.f19543g;
            replayBuffer.mo3316d(t);
            for (ReplaySubscription<T> replaySubscription : this.f19545i.get()) {
                replayBuffer.mo3318a(replaySubscription);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (this.f19544h) {
            subscription.cancel();
        } else {
            subscription.request(Long.MAX_VALUE);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        ReplaySubscription<T> replaySubscription = new ReplaySubscription<>(subscriber, this);
        subscriber.onSubscribe(replaySubscription);
        if (!m3325D(replaySubscription) || !replaySubscription.f19551j) {
            this.f19543g.mo3318a(replaySubscription);
        } else {
            m3324E(replaySubscription);
        }
    }
}
