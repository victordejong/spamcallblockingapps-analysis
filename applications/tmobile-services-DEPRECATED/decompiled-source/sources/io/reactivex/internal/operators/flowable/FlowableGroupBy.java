package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.flowables.GroupedFlowable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.EmptyComponent;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGroupBy.class */
public final class FlowableGroupBy<T, K, V> extends AbstractFlowableWithUpstream<T, GroupedFlowable<K, V>> {

    /* renamed from: h */
    final Function<? super T, ? extends K> f15995h;

    /* renamed from: i */
    final Function<? super T, ? extends V> f15996i;

    /* renamed from: j */
    final int f15997j;

    /* renamed from: k */
    final boolean f15998k;

    /* renamed from: l */
    final Function<? super Consumer<Object>, ? extends Map<K, Object>> f15999l;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGroupBy$EvictionAction.class */
    static final class EvictionAction<K, V> implements Consumer<GroupedUnicast<K, V>> {

        /* renamed from: f */
        final Queue<GroupedUnicast<K, V>> f16000f;

        EvictionAction(Queue<GroupedUnicast<K, V>> queue) {
            this.f16000f = queue;
        }

        /* renamed from: a */
        public void accept(GroupedUnicast<K, V> groupedUnicast) {
            this.f16000f.offer(groupedUnicast);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber.class */
    public static final class GroupBySubscriber<T, K, V> extends BasicIntQueueSubscription<GroupedFlowable<K, V>> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -3688291656102519502L;

        /* renamed from: v */
        static final Object f16001v = new Object();

        /* renamed from: f */
        final Subscriber<? super GroupedFlowable<K, V>> f16002f;

        /* renamed from: g */
        final Function<? super T, ? extends K> f16003g;

        /* renamed from: h */
        final Function<? super T, ? extends V> f16004h;

        /* renamed from: i */
        final int f16005i;

        /* renamed from: j */
        final boolean f16006j;

        /* renamed from: k */
        final Map<Object, GroupedUnicast<K, V>> f16007k;

        /* renamed from: l */
        final SpscLinkedArrayQueue<GroupedFlowable<K, V>> f16008l;

        /* renamed from: m */
        final Queue<GroupedUnicast<K, V>> f16009m;

        /* renamed from: n */
        Subscription f16010n;

        /* renamed from: o */
        final AtomicBoolean f16011o = new AtomicBoolean();

        /* renamed from: p */
        final AtomicLong f16012p = new AtomicLong();

        /* renamed from: q */
        final AtomicInteger f16013q = new AtomicInteger(1);

        /* renamed from: r */
        Throwable f16014r;

        /* renamed from: s */
        volatile boolean f16015s;

        /* renamed from: t */
        boolean f16016t;

        /* renamed from: u */
        boolean f16017u;

        public GroupBySubscriber(Subscriber<? super GroupedFlowable<K, V>> subscriber, Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, int i, boolean z, Map<Object, GroupedUnicast<K, V>> map, Queue<GroupedUnicast<K, V>> queue) {
            this.f16002f = subscriber;
            this.f16003g = function;
            this.f16004h = function2;
            this.f16005i = i;
            this.f16006j = z;
            this.f16007k = map;
            this.f16009m = queue;
            this.f16008l = new SpscLinkedArrayQueue<>(i);
        }

        /* renamed from: i */
        private void m4207i() {
            if (this.f16009m != null) {
                int i = 0;
                while (true) {
                    GroupedUnicast<K, V> poll = this.f16009m.poll();
                    if (poll == null) {
                        break;
                    }
                    poll.onComplete();
                    i++;
                }
                if (i != 0) {
                    this.f16013q.addAndGet(-i);
                }
            }
        }

        /* renamed from: b */
        void m4210b() {
            if (getAndIncrement() == 0) {
                if (this.f16017u) {
                    m4206j();
                } else {
                    m4205k();
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.f16011o.compareAndSet(false, true)) {
                m4207i();
                if (this.f16013q.decrementAndGet() == 0) {
                    this.f16010n.cancel();
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f16008l.clear();
        }

        /* renamed from: d */
        public void m4209d(K k) {
            if (k == null) {
                k = (K) f16001v;
            }
            this.f16007k.remove(k);
            if (this.f16013q.decrementAndGet() == 0) {
                this.f16010n.cancel();
                if (!this.f16017u && getAndIncrement() == 0) {
                    this.f16008l.clear();
                }
            }
        }

        /* renamed from: f */
        boolean m4208f(boolean z, boolean z2, Subscriber<?> subscriber, SpscLinkedArrayQueue<?> spscLinkedArrayQueue) {
            if (this.f16011o.get()) {
                spscLinkedArrayQueue.clear();
                return true;
            } else if (this.f16006j) {
                if (!z || !z2) {
                    return false;
                }
                Throwable th = this.f16014r;
                if (th != null) {
                    subscriber.onError(th);
                    return true;
                }
                subscriber.onComplete();
                return true;
            } else if (!z) {
                return false;
            } else {
                Throwable th2 = this.f16014r;
                if (th2 != null) {
                    spscLinkedArrayQueue.clear();
                    subscriber.onError(th2);
                    return true;
                } else if (!z2) {
                    return false;
                } else {
                    subscriber.onComplete();
                    return true;
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f16008l.isEmpty();
        }

        /* renamed from: j */
        void m4206j() {
            Throwable th;
            SpscLinkedArrayQueue<GroupedFlowable<K, V>> spscLinkedArrayQueue = this.f16008l;
            Subscriber<? super GroupedFlowable<K, V>> subscriber = this.f16002f;
            int i = 1;
            while (!this.f16011o.get()) {
                boolean z = this.f16015s;
                if (!z || this.f16006j || (th = this.f16014r) == null) {
                    subscriber.onNext(null);
                    if (z) {
                        Throwable th2 = this.f16014r;
                        if (th2 != null) {
                            subscriber.onError(th2);
                            return;
                        } else {
                            subscriber.onComplete();
                            return;
                        }
                    } else {
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    }
                } else {
                    spscLinkedArrayQueue.clear();
                    subscriber.onError(th);
                    return;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x006a, code lost:
            if (r0 != 0) goto L_0x007f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x007b, code lost:
            if (m4208f(r6.f16015s, r0.isEmpty(), r0, r0) == false) goto L_0x007f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x007e, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0083, code lost:
            if (r0 == 0) goto L_0x00a5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x008c, code lost:
            if (r0 == Long.MAX_VALUE) goto L_0x009a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x008f, code lost:
            r6.f16012p.addAndGet(-r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x009a, code lost:
            r6.f16010n.request(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x00a5, code lost:
            r0 = addAndGet(-r9);
            r9 = r0;
         */
        /* renamed from: k */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4205k() {
            /*
                r6 = this;
                r0 = r6
                io.reactivex.internal.queue.SpscLinkedArrayQueue<io.reactivex.flowables.GroupedFlowable<K, V>> r0 = r0.f16008l
                r7 = r0
                r0 = r6
                org.reactivestreams.Subscriber<? super io.reactivex.flowables.GroupedFlowable<K, V>> r0 = r0.f16002f
                r8 = r0
                r0 = 1
                r9 = r0
            L_0x000c:
                r0 = r6
                java.util.concurrent.atomic.AtomicLong r0 = r0.f16012p
                long r0 = r0.get()
                r10 = r0
                r0 = 0
                r12 = r0
            L_0x0018:
                r0 = r12
                r1 = r10
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                r14 = r0
                r0 = r14
                if (r0 == 0) goto L_0x0068
                r0 = r6
                boolean r0 = r0.f16015s
                r15 = r0
                r0 = r7
                java.lang.Object r0 = r0.poll()
                io.reactivex.flowables.GroupedFlowable r0 = (io.reactivex.flowables.GroupedFlowable) r0
                r16 = r0
                r0 = r16
                if (r0 != 0) goto L_0x003e
                r0 = 1
                r17 = r0
                goto L_0x0041
            L_0x003e:
                r0 = 0
                r17 = r0
            L_0x0041:
                r0 = r6
                r1 = r15
                r2 = r17
                r3 = r8
                r4 = r7
                boolean r0 = r0.m4208f(r1, r2, r3, r4)
                if (r0 == 0) goto L_0x004f
                return
            L_0x004f:
                r0 = r17
                if (r0 == 0) goto L_0x0057
                goto L_0x0068
            L_0x0057:
                r0 = r8
                r1 = r16
                r0.onNext(r1)
                r0 = r12
                r1 = 1
                long r0 = r0 + r1
                r12 = r0
                goto L_0x0018
            L_0x0068:
                r0 = r14
                if (r0 != 0) goto L_0x007f
                r0 = r6
                r1 = r6
                boolean r1 = r1.f16015s
                r2 = r7
                boolean r2 = r2.isEmpty()
                r3 = r8
                r4 = r7
                boolean r0 = r0.m4208f(r1, r2, r3, r4)
                if (r0 == 0) goto L_0x007f
                return
            L_0x007f:
                r0 = r12
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x00a5
                r0 = r10
                r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x009a
                r0 = r6
                java.util.concurrent.atomic.AtomicLong r0 = r0.f16012p
                r1 = r12
                long r1 = -r1
                long r0 = r0.addAndGet(r1)
            L_0x009a:
                r0 = r6
                org.reactivestreams.Subscription r0 = r0.f16010n
                r1 = r12
                r0.request(r1)
            L_0x00a5:
                r0 = r6
                r1 = r9
                int r1 = -r1
                int r0 = r0.addAndGet(r1)
                r14 = r0
                r0 = r14
                r9 = r0
                r0 = r14
                if (r0 != 0) goto L_0x000c
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableGroupBy.GroupBySubscriber.m4205k():void");
        }

        @Nullable
        /* renamed from: l */
        public GroupedFlowable<K, V> poll() {
            return this.f16008l.poll();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16016t) {
                for (GroupedUnicast<K, V> groupedUnicast : this.f16007k.values()) {
                    groupedUnicast.onComplete();
                }
                this.f16007k.clear();
                Queue<GroupedUnicast<K, V>> queue = this.f16009m;
                if (queue != null) {
                    queue.clear();
                }
                this.f16016t = true;
                this.f16015s = true;
                m4210b();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16016t) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16016t = true;
            for (GroupedUnicast<K, V> groupedUnicast : this.f16007k.values()) {
                groupedUnicast.onError(th);
            }
            this.f16007k.clear();
            Queue<GroupedUnicast<K, V>> queue = this.f16009m;
            if (queue != null) {
                queue.clear();
            }
            this.f16014r = th;
            this.f16015s = true;
            m4210b();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16016t) {
                SpscLinkedArrayQueue<GroupedFlowable<K, V>> spscLinkedArrayQueue = this.f16008l;
                try {
                    Object apply = this.f16003g.apply(t);
                    boolean z = false;
                    Object obj = apply != null ? apply : f16001v;
                    GroupedUnicast<K, V> groupedUnicast = this.f16007k.get(obj);
                    GroupedUnicast groupedUnicast2 = groupedUnicast;
                    if (groupedUnicast == null) {
                        if (!this.f16011o.get()) {
                            groupedUnicast2 = GroupedUnicast.m4203C(apply, this.f16005i, this, this.f16006j);
                            this.f16007k.put(obj, groupedUnicast2);
                            this.f16013q.getAndIncrement();
                            z = true;
                        } else {
                            return;
                        }
                    }
                    try {
                        Object apply2 = this.f16004h.apply(t);
                        ObjectHelper.m4363e(apply2, "The valueSelector returned null");
                        groupedUnicast2.onNext(apply2);
                        m4207i();
                        if (z) {
                            spscLinkedArrayQueue.offer(groupedUnicast2);
                            m4210b();
                        }
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        this.f16010n.cancel();
                        onError(th);
                    }
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    this.f16010n.cancel();
                    onError(th2);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16010n, subscription)) {
                this.f16010n = subscription;
                this.f16002f.onSubscribe(this);
                subscription.request(this.f16005i);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16012p, j);
                m4210b();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.f16017u = true;
            return 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast.class */
    public static final class GroupedUnicast<K, T> extends GroupedFlowable<K, T> {

        /* renamed from: h */
        final State<T, K> f16018h;

        protected GroupedUnicast(K k, State<T, K> state) {
            super(k);
            this.f16018h = state;
        }

        /* renamed from: C */
        public static <T, K> GroupedUnicast<K, T> m4203C(K k, int i, GroupBySubscriber<?, K, T> groupBySubscriber, boolean z) {
            return new GroupedUnicast<>(k, new State(i, groupBySubscriber, k, z));
        }

        public void onComplete() {
            this.f16018h.onComplete();
        }

        public void onError(Throwable th) {
            this.f16018h.onError(th);
        }

        public void onNext(T t) {
            this.f16018h.onNext(t);
        }

        @Override // io.reactivex.Flowable
        /* renamed from: w */
        protected void mo3305w(Subscriber<? super T> subscriber) {
            this.f16018h.mo5c(subscriber);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGroupBy$State.class */
    public static final class State<T, K> extends BasicIntQueueSubscription<T> implements Publisher<T> {
        private static final long serialVersionUID = -3852313036005250360L;

        /* renamed from: f */
        final K f16019f;

        /* renamed from: g */
        final SpscLinkedArrayQueue<T> f16020g;

        /* renamed from: h */
        final GroupBySubscriber<?, K, T> f16021h;

        /* renamed from: i */
        final boolean f16022i;

        /* renamed from: k */
        volatile boolean f16024k;

        /* renamed from: l */
        Throwable f16025l;

        /* renamed from: p */
        boolean f16029p;

        /* renamed from: q */
        int f16030q;

        /* renamed from: j */
        final AtomicLong f16023j = new AtomicLong();

        /* renamed from: m */
        final AtomicBoolean f16026m = new AtomicBoolean();

        /* renamed from: n */
        final AtomicReference<Subscriber<? super T>> f16027n = new AtomicReference<>();

        /* renamed from: o */
        final AtomicBoolean f16028o = new AtomicBoolean();

        State(int i, GroupBySubscriber<?, K, T> groupBySubscriber, K k, boolean z) {
            this.f16020g = new SpscLinkedArrayQueue<>(i);
            this.f16021h = groupBySubscriber;
            this.f16019f = k;
            this.f16022i = z;
        }

        /* renamed from: b */
        void m4202b() {
            if (getAndIncrement() == 0) {
                if (this.f16029p) {
                    m4200f();
                } else {
                    m4199i();
                }
            }
        }

        @Override // org.reactivestreams.Publisher
        /* renamed from: c */
        public void mo5c(Subscriber<? super T> subscriber) {
            if (this.f16028o.compareAndSet(false, true)) {
                subscriber.onSubscribe(this);
                this.f16027n.lazySet(subscriber);
                m4202b();
                return;
            }
            EmptySubscription.error(new IllegalStateException("Only one Subscriber allowed!"), subscriber);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.f16026m.compareAndSet(false, true)) {
                this.f16021h.m4209d(this.f16019f);
                m4202b();
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            SpscLinkedArrayQueue<T> spscLinkedArrayQueue = this.f16020g;
            while (spscLinkedArrayQueue.poll() != null) {
                this.f16030q++;
            }
            m4198j();
        }

        /* renamed from: d */
        boolean m4201d(boolean z, boolean z2, Subscriber<? super T> subscriber, boolean z3, long j) {
            if (this.f16026m.get()) {
                while (this.f16020g.poll() != null) {
                    j++;
                }
                if (j == 0) {
                    return true;
                }
                this.f16021h.f16010n.request(j);
                return true;
            } else if (!z) {
                return false;
            } else {
                if (!z3) {
                    Throwable th = this.f16025l;
                    if (th != null) {
                        this.f16020g.clear();
                        subscriber.onError(th);
                        return true;
                    } else if (!z2) {
                        return false;
                    } else {
                        subscriber.onComplete();
                        return true;
                    }
                } else if (!z2) {
                    return false;
                } else {
                    Throwable th2 = this.f16025l;
                    if (th2 != null) {
                        subscriber.onError(th2);
                        return true;
                    }
                    subscriber.onComplete();
                    return true;
                }
            }
        }

        /* renamed from: f */
        void m4200f() {
            Throwable th;
            SpscLinkedArrayQueue<T> spscLinkedArrayQueue = this.f16020g;
            Subscriber<? super T> subscriber = this.f16027n.get();
            int i = 1;
            while (true) {
                if (subscriber != null) {
                    if (!this.f16026m.get()) {
                        boolean z = this.f16024k;
                        if (!z || this.f16022i || (th = this.f16025l) == null) {
                            subscriber.onNext(null);
                            if (z) {
                                Throwable th2 = this.f16025l;
                                if (th2 != null) {
                                    subscriber.onError(th2);
                                    return;
                                } else {
                                    subscriber.onComplete();
                                    return;
                                }
                            }
                        } else {
                            spscLinkedArrayQueue.clear();
                            subscriber.onError(th);
                            return;
                        }
                    } else {
                        return;
                    }
                }
                int addAndGet = addAndGet(-i);
                if (addAndGet != 0) {
                    i = addAndGet;
                    if (subscriber == null) {
                        subscriber = this.f16027n.get();
                        i = addAndGet;
                    }
                } else {
                    return;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x007f, code lost:
            r15 = r18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0085, code lost:
            if (r0 != 0) goto L_0x00a0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0098, code lost:
            if (m4201d(r8.f16024k, r0.isEmpty(), r11, r0, r18) == false) goto L_0x009c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x009b, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x009c, code lost:
            r15 = r18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x00a4, code lost:
            if (r15 == 0) goto L_0x00c9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x00ad, code lost:
            if (r0 == Long.MAX_VALUE) goto L_0x00bb;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x00b0, code lost:
            r8.f16023j.addAndGet(-r15);
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00bb, code lost:
            r8.f16021h.f16010n.request(r15);
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v23 */
        /* JADX WARN: Type inference failed for: r0v24, types: [long] */
        /* JADX WARN: Type inference failed for: r0v57 */
        /* JADX WARN: Unknown variable types count: 1 */
        /* renamed from: i */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4199i() {
            /*
                Method dump skipped, instructions count: 242
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableGroupBy.State.m4199i():void");
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            if (!this.f16020g.isEmpty()) {
                return false;
            }
            m4198j();
            return true;
        }

        /* renamed from: j */
        void m4198j() {
            int i = this.f16030q;
            if (i != 0) {
                this.f16030q = 0;
                this.f16021h.f16010n.request(i);
            }
        }

        public void onComplete() {
            this.f16024k = true;
            m4202b();
        }

        public void onError(Throwable th) {
            this.f16025l = th;
            this.f16024k = true;
            m4202b();
        }

        public void onNext(T t) {
            this.f16020g.offer(t);
            m4202b();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() {
            T poll = this.f16020g.poll();
            if (poll != null) {
                this.f16030q++;
                return poll;
            }
            m4198j();
            return null;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16023j, j);
                m4202b();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.f16029p = true;
            return 2;
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super GroupedFlowable<K, V>> subscriber) {
        ConcurrentLinkedQueue concurrentLinkedQueue;
        Map map;
        try {
            if (this.f15999l == null) {
                concurrentLinkedQueue = null;
                map = new ConcurrentHashMap();
            } else {
                concurrentLinkedQueue = new ConcurrentLinkedQueue();
                map = (Map) this.f15999l.apply(new EvictionAction(concurrentLinkedQueue));
            }
            this.f15411g.m4493v(new GroupBySubscriber(subscriber, this.f15995h, this.f15996i, this.f15997j, this.f15998k, map, concurrentLinkedQueue));
        } catch (Exception e) {
            Exceptions.m4428b(e);
            subscriber.onSubscribe(EmptyComponent.INSTANCE);
            subscriber.onError(e);
        }
    }
}
