package io.reactivex.subjects;

import io.reactivex.internal.util.NotificationLite;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p563h0.AbstractC9832b;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject.class */
public final class ReplaySubject<T> extends AbstractC9832b<T> {

    /* renamed from: a */
    public static final Object[] f38602a = new Object[0];

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$Node.class */
    public static final class Node<T> extends AtomicReference<Node<T>> {
        public static final long serialVersionUID = 6404226426336033100L;
        public final T value;

        public Node(T t) {
            this.value = t;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$ReplayDisposable.class */
    public static final class ReplayDisposable<T> extends AtomicInteger implements AbstractC9861b {
        public static final long serialVersionUID = 466549804534799122L;
        public final AbstractC9844r<? super T> actual;
        public volatile boolean cancelled;
        public Object index;
        public final ReplaySubject<T> state;

        public ReplayDisposable(AbstractC9844r<? super T> rVar, ReplaySubject<T> replaySubject) {
            this.actual = rVar;
            this.state = replaySubject;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.state.m198a((ReplayDisposable) this);
                throw null;
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.cancelled;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer.class */
    public static final class SizeAndTimeBoundReplayBuffer<T> extends AtomicReference<Object> {
        public static final long serialVersionUID = -8056260896137901749L;
        public volatile boolean done;
        public volatile TimedNode<Object> head;
        public final long maxAge;
        public final int maxSize;
        public final AbstractC9845s scheduler;
        public int size;
        public TimedNode<Object> tail;
        public final TimeUnit unit;

        public SizeAndTimeBoundReplayBuffer(int i, long j, TimeUnit timeUnit, AbstractC9845s sVar) {
            C9650a.m2099a(i, "maxSize");
            this.maxSize = i;
            C9650a.m2097a(j, "maxAge");
            this.maxAge = j;
            C9650a.m2095a(timeUnit, "unit is null");
            this.unit = timeUnit;
            C9650a.m2095a(sVar, "scheduler is null");
            this.scheduler = sVar;
            TimedNode<Object> timedNode = new TimedNode<>(null, 0L);
            this.tail = timedNode;
            this.head = timedNode;
        }

        public void add(T t) {
            TimedNode<Object> timedNode = new TimedNode<>(t, this.scheduler.m1852a(this.unit));
            TimedNode<Object> timedNode2 = this.tail;
            this.tail = timedNode;
            this.size++;
            timedNode2.set(timedNode);
            trim();
        }

        public void addFinal(Object obj) {
            TimedNode<Object> timedNode = new TimedNode<>(obj, Long.MAX_VALUE);
            TimedNode<Object> timedNode2 = this.tail;
            this.tail = timedNode;
            this.size++;
            timedNode2.lazySet(timedNode);
            trimFinal();
            this.done = true;
        }

        public TimedNode<Object> getHead() {
            TimedNode<Object> timedNode = this.head;
            long a = this.scheduler.m1852a(this.unit);
            long j = this.maxAge;
            TimedNode<Object> timedNode2 = timedNode.get();
            while (timedNode2 != null && timedNode2.time <= a - j) {
                timedNode2 = timedNode2.get();
                timedNode = timedNode2;
            }
            return timedNode;
        }

        public T getValue() {
            T t;
            TimedNode<Object> timedNode = this.head;
            TimedNode<Object> timedNode2 = null;
            while (true) {
                TimedNode<T> timedNode3 = timedNode.get();
                if (timedNode3 == null) {
                    break;
                }
                timedNode2 = timedNode;
                timedNode = timedNode3;
            }
            if (timedNode.time >= this.scheduler.m1852a(this.unit) - this.maxAge && (t = (T) timedNode.value) != null) {
                return (NotificationLite.isComplete(t) || NotificationLite.isError(t)) ? (T) timedNode2.value : t;
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public T[] getValues(T[] tArr) {
            T[] tArr2;
            TimedNode<Object> head = getHead();
            int size = size(head);
            if (size == 0) {
                tArr2 = tArr;
                if (tArr.length != 0) {
                    tArr[0] = null;
                    tArr2 = tArr;
                }
            } else {
                TimedNode<T> timedNode = head;
                int i = 0;
                Object[] objArr = tArr;
                if (tArr.length < size) {
                    i = 0;
                    timedNode = head;
                    objArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), size);
                }
                while (i != size) {
                    timedNode = timedNode.get();
                    objArr[i] = timedNode.value;
                    i++;
                }
                tArr2 = objArr;
                if (objArr.length > size) {
                    objArr[size] = 0;
                    tArr2 = objArr;
                }
            }
            return tArr2;
        }

        public void replay(ReplayDisposable<T> replayDisposable) {
            if (replayDisposable.getAndIncrement() == 0) {
                AbstractC9844r<? super T> rVar = replayDisposable.actual;
                TimedNode<Object> timedNode = (TimedNode) replayDisposable.index;
                TimedNode<T> timedNode2 = timedNode;
                if (timedNode == null) {
                    timedNode2 = getHead();
                }
                int i = 1;
                while (true) {
                    timedNode2 = timedNode2;
                    if (replayDisposable.cancelled) {
                        replayDisposable.index = null;
                        return;
                    }
                    while (!replayDisposable.cancelled) {
                        TimedNode<T> timedNode3 = timedNode2.get();
                        if (timedNode3 != null) {
                            Object obj = (T) timedNode3.value;
                            if (!this.done || timedNode3.get() != null) {
                                rVar.onNext(obj);
                                timedNode2 = timedNode3;
                            } else {
                                if (NotificationLite.isComplete(obj)) {
                                    rVar.onComplete();
                                } else {
                                    rVar.onError(NotificationLite.getError(obj));
                                }
                                replayDisposable.index = null;
                                replayDisposable.cancelled = true;
                                return;
                            }
                        } else if (timedNode2.get() == null) {
                            replayDisposable.index = timedNode2;
                            int addAndGet = replayDisposable.addAndGet(-i);
                            i = addAndGet;
                            if (addAndGet == 0) {
                                return;
                            }
                        }
                    }
                    replayDisposable.index = null;
                    return;
                }
            }
        }

        public int size() {
            return size(getHead());
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x002a, code lost:
            if (io.reactivex.internal.util.NotificationLite.isError(r0) != false) goto L_0x002d;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int size(io.reactivex.subjects.ReplaySubject.TimedNode<java.lang.Object> r4) {
            /*
                r3 = this;
                r0 = 0
                r5 = r0
            L_0x0002:
                r0 = r5
                r6 = r0
                r0 = r5
                r1 = 2147483647(0x7fffffff, float:NaN)
                if (r0 == r1) goto L_0x003d
                r0 = r4
                java.lang.Object r0 = r0.get()
                io.reactivex.subjects.ReplaySubject$TimedNode r0 = (io.reactivex.subjects.ReplaySubject.TimedNode) r0
                r7 = r0
                r0 = r7
                if (r0 != 0) goto L_0x0034
                r0 = r4
                T r0 = r0.value
                r4 = r0
                r0 = r4
                boolean r0 = io.reactivex.internal.util.NotificationLite.isComplete(r0)
                if (r0 != 0) goto L_0x002d
                r0 = r5
                r6 = r0
                r0 = r4
                boolean r0 = io.reactivex.internal.util.NotificationLite.isError(r0)
                if (r0 == 0) goto L_0x003d
            L_0x002d:
                r0 = r5
                r1 = 1
                int r0 = r0 - r1
                r6 = r0
                goto L_0x003d
            L_0x0034:
                int r5 = r5 + 1
                r0 = r7
                r4 = r0
                goto L_0x0002
            L_0x003d:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.subjects.ReplaySubject.SizeAndTimeBoundReplayBuffer.size(io.reactivex.subjects.ReplaySubject$TimedNode):int");
        }

        public void trim() {
            int i = this.size;
            if (i > this.maxSize) {
                this.size = i - 1;
                this.head = this.head.get();
            }
            long a = this.scheduler.m1852a(this.unit);
            long j = this.maxAge;
            TimedNode<Object> timedNode = this.head;
            while (true) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2 == null) {
                    this.head = timedNode;
                    return;
                } else if (timedNode2.time > a - j) {
                    this.head = timedNode;
                    return;
                } else {
                    timedNode = timedNode2;
                }
            }
        }

        public void trimFinal() {
            long a = this.scheduler.m1852a(this.unit);
            long j = this.maxAge;
            TimedNode<Object> timedNode = this.head;
            while (true) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2.get() == null) {
                    if (timedNode.value != null) {
                        TimedNode<Object> timedNode3 = new TimedNode<>(null, 0L);
                        timedNode3.lazySet(timedNode.get());
                        this.head = timedNode3;
                        return;
                    }
                    this.head = timedNode;
                    return;
                } else if (timedNode2.time <= a - j) {
                    timedNode = timedNode2;
                } else if (timedNode.value != null) {
                    TimedNode<Object> timedNode4 = new TimedNode<>(null, 0L);
                    timedNode4.lazySet(timedNode.get());
                    this.head = timedNode4;
                    return;
                } else {
                    this.head = timedNode;
                    return;
                }
            }
        }

        public void trimHead() {
            TimedNode<Object> timedNode = this.head;
            if (timedNode.value != null) {
                TimedNode<Object> timedNode2 = new TimedNode<>(null, 0L);
                timedNode2.lazySet(timedNode.get());
                this.head = timedNode2;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer.class */
    public static final class SizeBoundReplayBuffer<T> extends AtomicReference<Object> {
        public static final long serialVersionUID = 1107649250281456395L;
        public volatile boolean done;
        public volatile Node<Object> head;
        public final int maxSize;
        public int size;
        public Node<Object> tail;

        public SizeBoundReplayBuffer(int i) {
            C9650a.m2099a(i, "maxSize");
            this.maxSize = i;
            Node<Object> node = new Node<>(null);
            this.tail = node;
            this.head = node;
        }

        public void add(T t) {
            Node<Object> node = new Node<>(t);
            Node<Object> node2 = this.tail;
            this.tail = node;
            this.size++;
            node2.set(node);
            trim();
        }

        public void addFinal(Object obj) {
            Node<Object> node = new Node<>(obj);
            Node<Object> node2 = this.tail;
            this.tail = node;
            this.size++;
            node2.lazySet(node);
            trimHead();
            this.done = true;
        }

        public T getValue() {
            Node<Object> node = this.head;
            Node<Object> node2 = null;
            while (true) {
                Node<T> node3 = node.get();
                if (node3 == null) {
                    break;
                }
                node2 = node;
                node = node3;
            }
            T t = (T) node.value;
            if (t == null) {
                return null;
            }
            return (NotificationLite.isComplete(t) || NotificationLite.isError(t)) ? (T) node2.value : t;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public T[] getValues(T[] tArr) {
            T[] tArr2;
            Node<Object> node = this.head;
            int size = size();
            if (size == 0) {
                tArr2 = tArr;
                if (tArr.length != 0) {
                    tArr[0] = null;
                    tArr2 = tArr;
                }
            } else {
                Node<T> node2 = node;
                int i = 0;
                T[] tArr3 = tArr;
                if (tArr.length < size) {
                    i = 0;
                    node2 = node;
                    tArr3 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), size);
                }
                while (i != size) {
                    node2 = node2.get();
                    tArr3[i] = node2.value;
                    i++;
                }
                tArr2 = tArr3;
                if (tArr3.length > size) {
                    tArr3[size] = null;
                    tArr2 = tArr3;
                }
            }
            return tArr2;
        }

        public void replay(ReplayDisposable<T> replayDisposable) {
            if (replayDisposable.getAndIncrement() == 0) {
                AbstractC9844r<? super T> rVar = replayDisposable.actual;
                Node<Object> node = (Node) replayDisposable.index;
                Node<T> node2 = node;
                if (node == null) {
                    node2 = this.head;
                }
                int i = 1;
                while (!replayDisposable.cancelled) {
                    Node<T> node3 = node2.get();
                    if (node3 != null) {
                        Object obj = (T) node3.value;
                        if (!this.done || node3.get() != null) {
                            rVar.onNext(obj);
                            node2 = node3;
                        } else {
                            if (NotificationLite.isComplete(obj)) {
                                rVar.onComplete();
                            } else {
                                rVar.onError(NotificationLite.getError(obj));
                            }
                            replayDisposable.index = null;
                            replayDisposable.cancelled = true;
                            return;
                        }
                    } else if (node2.get() != null) {
                        continue;
                    } else {
                        replayDisposable.index = node2;
                        int addAndGet = replayDisposable.addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    }
                }
                replayDisposable.index = null;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x002f, code lost:
            if (io.reactivex.internal.util.NotificationLite.isError(r0) != false) goto L_0x0032;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int size() {
            /*
                r3 = this;
                r0 = r3
                io.reactivex.subjects.ReplaySubject$Node<java.lang.Object> r0 = r0.head
                r4 = r0
                r0 = 0
                r5 = r0
            L_0x0007:
                r0 = r5
                r6 = r0
                r0 = r5
                r1 = 2147483647(0x7fffffff, float:NaN)
                if (r0 == r1) goto L_0x0042
                r0 = r4
                java.lang.Object r0 = r0.get()
                io.reactivex.subjects.ReplaySubject$Node r0 = (io.reactivex.subjects.ReplaySubject.Node) r0
                r7 = r0
                r0 = r7
                if (r0 != 0) goto L_0x0039
                r0 = r4
                T r0 = r0.value
                r4 = r0
                r0 = r4
                boolean r0 = io.reactivex.internal.util.NotificationLite.isComplete(r0)
                if (r0 != 0) goto L_0x0032
                r0 = r5
                r6 = r0
                r0 = r4
                boolean r0 = io.reactivex.internal.util.NotificationLite.isError(r0)
                if (r0 == 0) goto L_0x0042
            L_0x0032:
                r0 = r5
                r1 = 1
                int r0 = r0 - r1
                r6 = r0
                goto L_0x0042
            L_0x0039:
                int r5 = r5 + 1
                r0 = r7
                r4 = r0
                goto L_0x0007
            L_0x0042:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.subjects.ReplaySubject.SizeBoundReplayBuffer.size():int");
        }

        public void trim() {
            int i = this.size;
            if (i > this.maxSize) {
                this.size = i - 1;
                this.head = this.head.get();
            }
        }

        public void trimHead() {
            Node<Object> node = this.head;
            if (node.value != null) {
                Node<Object> node2 = new Node<>(null);
                node2.lazySet(node.get());
                this.head = node2;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$TimedNode.class */
    public static final class TimedNode<T> extends AtomicReference<TimedNode<T>> {
        public static final long serialVersionUID = 6404226426336033100L;
        public final long time;
        public final T value;

        public TimedNode(T t, long j) {
            this.value = t;
            this.time = j;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer.class */
    public static final class UnboundedReplayBuffer<T> extends AtomicReference<Object> {
        public static final long serialVersionUID = -733876083048047795L;
        public final List<Object> buffer;
        public volatile boolean done;
        public volatile int size;

        public UnboundedReplayBuffer(int i) {
            C9650a.m2099a(i, "capacityHint");
            this.buffer = new ArrayList(i);
        }

        public void add(T t) {
            this.buffer.add(t);
            this.size++;
        }

        public void addFinal(Object obj) {
            this.buffer.add(obj);
            trimHead();
            this.size++;
            this.done = true;
        }

        public T getValue() {
            int i = this.size;
            if (i == 0) {
                return null;
            }
            List<Object> list = this.buffer;
            T t = (T) list.get(i - 1);
            if (!NotificationLite.isComplete(t) && !NotificationLite.isError(t)) {
                return t;
            }
            if (i == 1) {
                return null;
            }
            return (T) list.get(i - 2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
            if (io.reactivex.internal.util.NotificationLite.isError(r0) != false) goto L_0x003b;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public T[] getValues(T[] r6) {
            /*
                r5 = this;
                r0 = r5
                int r0 = r0.size
                r7 = r0
                r0 = 0
                r8 = r0
                r0 = r7
                if (r0 != 0) goto L_0x0016
                r0 = r6
                int r0 = r0.length
                if (r0 == 0) goto L_0x0014
                r0 = r6
                r1 = 0
                r2 = 0
                r0[r1] = r2
            L_0x0014:
                r0 = r6
                return r0
            L_0x0016:
                r0 = r5
                java.util.List<java.lang.Object> r0 = r0.buffer
                r9 = r0
                r0 = r9
                r1 = r7
                r2 = 1
                int r1 = r1 - r2
                java.lang.Object r0 = r0.get(r1)
                r10 = r0
                r0 = r10
                boolean r0 = io.reactivex.internal.util.NotificationLite.isComplete(r0)
                if (r0 != 0) goto L_0x003b
                r0 = r7
                r11 = r0
                r0 = r10
                boolean r0 = io.reactivex.internal.util.NotificationLite.isError(r0)
                if (r0 == 0) goto L_0x0050
            L_0x003b:
                int r7 = r7 + (-1)
                r0 = r7
                r11 = r0
                r0 = r7
                if (r0 != 0) goto L_0x0050
                r0 = r6
                int r0 = r0.length
                if (r0 == 0) goto L_0x004e
                r0 = r6
                r1 = 0
                r2 = 0
                r0[r1] = r2
            L_0x004e:
                r0 = r6
                return r0
            L_0x0050:
                r0 = r8
                r7 = r0
                r0 = r6
                r10 = r0
                r0 = r6
                int r0 = r0.length
                r1 = r11
                if (r0 >= r1) goto L_0x006f
                r0 = r6
                java.lang.Class r0 = r0.getClass()
                java.lang.Class r0 = r0.getComponentType()
                r1 = r11
                java.lang.Object r0 = java.lang.reflect.Array.newInstance(r0, r1)
                java.lang.Object[] r0 = (java.lang.Object[]) r0
                r10 = r0
                r0 = r8
                r7 = r0
            L_0x006f:
                r0 = r7
                r1 = r11
                if (r0 >= r1) goto L_0x0087
                r0 = r10
                r1 = r7
                r2 = r9
                r3 = r7
                java.lang.Object r2 = r2.get(r3)
                r0[r1] = r2
                int r7 = r7 + 1
                goto L_0x006f
            L_0x0087:
                r0 = r10
                int r0 = r0.length
                r1 = r11
                if (r0 <= r1) goto L_0x0095
                r0 = r10
                r1 = r11
                r2 = 0
                r0[r1] = r2
            L_0x0095:
                r0 = r10
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.subjects.ReplaySubject.UnboundedReplayBuffer.getValues(java.lang.Object[]):java.lang.Object[]");
        }

        public void replay(ReplayDisposable<T> replayDisposable) {
            if (replayDisposable.getAndIncrement() == 0) {
                List<Object> list = this.buffer;
                AbstractC9844r<? super T> rVar = replayDisposable.actual;
                Integer num = (Integer) replayDisposable.index;
                int i = 0;
                if (num != null) {
                    i = num.intValue();
                } else {
                    replayDisposable.index = 0;
                }
                int i2 = 1;
                while (!replayDisposable.cancelled) {
                    int i3 = this.size;
                    while (i3 != i) {
                        if (replayDisposable.cancelled) {
                            replayDisposable.index = null;
                            return;
                        }
                        Object obj = list.get(i);
                        i3 = i3;
                        if (this.done) {
                            int i4 = i + 1;
                            i3 = i3;
                            if (i4 == i3) {
                                int i5 = this.size;
                                i3 = i5;
                                if (i4 == i5) {
                                    if (NotificationLite.isComplete(obj)) {
                                        rVar.onComplete();
                                    } else {
                                        rVar.onError(NotificationLite.getError(obj));
                                    }
                                    replayDisposable.index = null;
                                    replayDisposable.cancelled = true;
                                    return;
                                }
                            } else {
                                continue;
                            }
                        }
                        rVar.onNext(obj);
                        i++;
                    }
                    if (i == this.size) {
                        replayDisposable.index = Integer.valueOf(i);
                        int addAndGet = replayDisposable.addAndGet(-i2);
                        i2 = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    }
                }
                replayDisposable.index = null;
            }
        }

        public int size() {
            int i = this.size;
            if (i == 0) {
                return 0;
            }
            int i2 = i - 1;
            Object obj = this.buffer.get(i2);
            return (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) ? i2 : i;
        }

        public void trimHead() {
        }
    }

    /* renamed from: a */
    public void m198a(ReplayDisposable<T> replayDisposable) {
        throw null;
    }
}
