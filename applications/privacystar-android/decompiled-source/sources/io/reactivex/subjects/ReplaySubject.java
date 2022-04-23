package io.reactivex.subjects;

import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.plugins.RxJavaPlugins;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject.class */
public final class ReplaySubject<T> extends Subject<T> {
    final ReplayBuffer<T> buffer;
    boolean done;
    final AtomicReference<ReplayDisposable<T>[]> observers = new AtomicReference<>(EMPTY);
    static final ReplayDisposable[] EMPTY = new ReplayDisposable[0];
    static final ReplayDisposable[] TERMINATED = new ReplayDisposable[0];
    private static final Object[] EMPTY_ARRAY = new Object[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$Node.class */
    public static final class Node<T> extends AtomicReference<Node<T>> {
        private static final long serialVersionUID = 6404226426336033100L;
        final T value;

        Node(T t) {
            this.value = t;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$ReplayBuffer.class */
    public interface ReplayBuffer<T> {
        void add(T t);

        void addFinal(Object obj);

        boolean compareAndSet(Object obj, Object obj2);

        Object get();

        T getValue();

        T[] getValues(T[] tArr);

        void replay(ReplayDisposable<T> replayDisposable);

        int size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$ReplayDisposable.class */
    public static final class ReplayDisposable<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 466549804534799122L;
        final Observer<? super T> actual;
        volatile boolean cancelled;
        Object index;
        final ReplaySubject<T> state;

        ReplayDisposable(Observer<? super T> observer, ReplaySubject<T> replaySubject) {
            this.actual = observer;
            this.state = replaySubject;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.state.remove(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer.class */
    static final class SizeAndTimeBoundReplayBuffer<T> extends AtomicReference<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = -8056260896137901749L;
        volatile boolean done;
        volatile TimedNode<Object> head;
        final long maxAge;
        final int maxSize;
        final Scheduler scheduler;
        int size;
        TimedNode<Object> tail;
        final TimeUnit unit;

        SizeAndTimeBoundReplayBuffer(int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
            this.maxSize = ObjectHelper.verifyPositive(i, "maxSize");
            this.maxAge = ObjectHelper.verifyPositive(j, "maxAge");
            this.unit = (TimeUnit) ObjectHelper.requireNonNull(timeUnit, "unit is null");
            this.scheduler = (Scheduler) ObjectHelper.requireNonNull(scheduler, "scheduler is null");
            TimedNode<Object> timedNode = new TimedNode<>(null, 0L);
            this.tail = timedNode;
            this.head = timedNode;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void add(T t) {
            TimedNode<Object> timedNode = new TimedNode<>(t, this.scheduler.now(this.unit));
            TimedNode<Object> timedNode2 = this.tail;
            this.tail = timedNode;
            this.size++;
            timedNode2.set(timedNode);
            trim();
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void addFinal(Object obj) {
            TimedNode<Object> timedNode = new TimedNode<>(obj, Long.MAX_VALUE);
            TimedNode<Object> timedNode2 = this.tail;
            this.tail = timedNode;
            this.size++;
            timedNode2.lazySet(timedNode);
            trimFinal();
            this.done = true;
        }

        TimedNode<Object> getHead() {
            TimedNode<Object> timedNode = this.head;
            long now = this.scheduler.now(this.unit);
            long j = this.maxAge;
            TimedNode<Object> timedNode2 = timedNode.get();
            while (timedNode2 != null && timedNode2.time <= now - j) {
                timedNode2 = timedNode2.get();
                timedNode = timedNode2;
            }
            return timedNode;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
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
            if (timedNode.time >= this.scheduler.now(this.unit) - this.maxAge && (t = (T) timedNode.value) != null) {
                return (NotificationLite.isComplete(t) || NotificationLite.isError(t)) ? (T) timedNode2.value : t;
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
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

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void replay(ReplayDisposable<T> replayDisposable) {
            if (replayDisposable.getAndIncrement() == 0) {
                Observer<? super T> observer = replayDisposable.actual;
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
                                observer.onNext(obj);
                                timedNode2 = timedNode3;
                            } else {
                                if (NotificationLite.isComplete(obj)) {
                                    observer.onComplete();
                                } else {
                                    observer.onError(NotificationLite.getError(obj));
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

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
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
        int size(io.reactivex.subjects.ReplaySubject.TimedNode<java.lang.Object> r4) {
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

        void trim() {
            if (this.size > this.maxSize) {
                this.size--;
                this.head = this.head.get();
            }
            long now = this.scheduler.now(this.unit);
            long j = this.maxAge;
            TimedNode<Object> timedNode = this.head;
            while (true) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2 == null) {
                    this.head = timedNode;
                    return;
                } else if (timedNode2.time > now - j) {
                    this.head = timedNode;
                    return;
                } else {
                    timedNode = timedNode2;
                }
            }
        }

        void trimFinal() {
            long now = this.scheduler.now(this.unit);
            long j = this.maxAge;
            TimedNode<Object> timedNode = this.head;
            while (true) {
                TimedNode<T> timedNode2 = timedNode.get();
                if (timedNode2.get() == null) {
                    this.head = timedNode;
                    return;
                } else if (timedNode2.time > now - j) {
                    this.head = timedNode;
                    return;
                } else {
                    timedNode = timedNode2;
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer.class */
    static final class SizeBoundReplayBuffer<T> extends AtomicReference<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 1107649250281456395L;
        volatile boolean done;
        volatile Node<Object> head;
        final int maxSize;
        int size;
        Node<Object> tail;

        SizeBoundReplayBuffer(int i) {
            this.maxSize = ObjectHelper.verifyPositive(i, "maxSize");
            Node<Object> node = new Node<>(null);
            this.tail = node;
            this.head = node;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void add(T t) {
            Node<Object> node = new Node<>(t);
            Node<Object> node2 = this.tail;
            this.tail = node;
            this.size++;
            node2.set(node);
            trim();
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void addFinal(Object obj) {
            Node<Object> node = new Node<>(obj);
            Node<Object> node2 = this.tail;
            this.tail = node;
            this.size++;
            node2.lazySet(node);
            this.done = true;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
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
        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
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

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void replay(ReplayDisposable<T> replayDisposable) {
            if (replayDisposable.getAndIncrement() == 0) {
                Observer<? super T> observer = replayDisposable.actual;
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
                            observer.onNext(obj);
                            node2 = node3;
                        } else {
                            if (NotificationLite.isComplete(obj)) {
                                observer.onComplete();
                            } else {
                                observer.onError(NotificationLite.getError(obj));
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
        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
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

        void trim() {
            if (this.size > this.maxSize) {
                this.size--;
                this.head = this.head.get();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$TimedNode.class */
    public static final class TimedNode<T> extends AtomicReference<TimedNode<T>> {
        private static final long serialVersionUID = 6404226426336033100L;
        final long time;
        final T value;

        TimedNode(T t, long j) {
            this.value = t;
            this.time = j;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer.class */
    static final class UnboundedReplayBuffer<T> extends AtomicReference<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = -733876083048047795L;
        final List<Object> buffer;
        volatile boolean done;
        volatile int size;

        UnboundedReplayBuffer(int i) {
            this.buffer = new ArrayList(ObjectHelper.verifyPositive(i, "capacityHint"));
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void add(T t) {
            this.buffer.add(t);
            this.size++;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void addFinal(Object obj) {
            this.buffer.add(obj);
            this.size++;
            this.done = true;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
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
        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
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

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void replay(ReplayDisposable<T> replayDisposable) {
            if (replayDisposable.getAndIncrement() == 0) {
                List<Object> list = this.buffer;
                Observer<? super T> observer = replayDisposable.actual;
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
                                        observer.onComplete();
                                    } else {
                                        observer.onError(NotificationLite.getError(obj));
                                    }
                                    replayDisposable.index = null;
                                    replayDisposable.cancelled = true;
                                    return;
                                }
                            } else {
                                continue;
                            }
                        }
                        observer.onNext(obj);
                        i++;
                    }
                    if (i != this.size) {
                        i = i;
                    } else {
                        replayDisposable.index = Integer.valueOf(i);
                        int addAndGet = replayDisposable.addAndGet(-i2);
                        i2 = addAndGet;
                        i = i;
                        if (addAndGet == 0) {
                            return;
                        }
                    }
                }
                replayDisposable.index = null;
            }
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public int size() {
            int i = this.size;
            if (i == 0) {
                return 0;
            }
            int i2 = i - 1;
            Object obj = this.buffer.get(i2);
            return (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) ? i2 : i;
        }
    }

    ReplaySubject(ReplayBuffer<T> replayBuffer) {
        this.buffer = replayBuffer;
    }

    @CheckReturnValue
    public static <T> ReplaySubject<T> create() {
        return new ReplaySubject<>(new UnboundedReplayBuffer(16));
    }

    @CheckReturnValue
    public static <T> ReplaySubject<T> create(int i) {
        return new ReplaySubject<>(new UnboundedReplayBuffer(i));
    }

    static <T> ReplaySubject<T> createUnbounded() {
        return new ReplaySubject<>(new SizeBoundReplayBuffer(Integer.MAX_VALUE));
    }

    @CheckReturnValue
    public static <T> ReplaySubject<T> createWithSize(int i) {
        return new ReplaySubject<>(new SizeBoundReplayBuffer(i));
    }

    @CheckReturnValue
    public static <T> ReplaySubject<T> createWithTime(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return new ReplaySubject<>(new SizeAndTimeBoundReplayBuffer(Integer.MAX_VALUE, j, timeUnit, scheduler));
    }

    @CheckReturnValue
    public static <T> ReplaySubject<T> createWithTimeAndSize(long j, TimeUnit timeUnit, Scheduler scheduler, int i) {
        return new ReplaySubject<>(new SizeAndTimeBoundReplayBuffer(i, j, timeUnit, scheduler));
    }

    boolean add(ReplayDisposable<T> replayDisposable) {
        ReplayDisposable<T>[] replayDisposableArr;
        ReplayDisposable<T>[] replayDisposableArr2;
        do {
            replayDisposableArr = this.observers.get();
            if (replayDisposableArr == TERMINATED) {
                return false;
            }
            int length = replayDisposableArr.length;
            replayDisposableArr2 = new ReplayDisposable[length + 1];
            System.arraycopy(replayDisposableArr, 0, replayDisposableArr2, 0, length);
            replayDisposableArr2[length] = replayDisposable;
        } while (!this.observers.compareAndSet(replayDisposableArr, replayDisposableArr2));
        return true;
    }

    @Override // io.reactivex.subjects.Subject
    public Throwable getThrowable() {
        Object obj = this.buffer.get();
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    public T getValue() {
        return this.buffer.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object[] getValues() {
        Object[] values = getValues(EMPTY_ARRAY);
        return values == EMPTY_ARRAY ? new Object[0] : values;
    }

    public T[] getValues(T[] tArr) {
        return this.buffer.getValues(tArr);
    }

    @Override // io.reactivex.subjects.Subject
    public boolean hasComplete() {
        return NotificationLite.isComplete(this.buffer.get());
    }

    @Override // io.reactivex.subjects.Subject
    public boolean hasObservers() {
        return this.observers.get().length != 0;
    }

    @Override // io.reactivex.subjects.Subject
    public boolean hasThrowable() {
        return NotificationLite.isError(this.buffer.get());
    }

    public boolean hasValue() {
        return this.buffer.size() != 0;
    }

    int observerCount() {
        return this.observers.get().length;
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            Object complete = NotificationLite.complete();
            ReplayBuffer<T> replayBuffer = this.buffer;
            replayBuffer.addFinal(complete);
            for (ReplayDisposable<T> replayDisposable : terminate(complete)) {
                replayBuffer.replay(replayDisposable);
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        Throwable th2 = th;
        if (th == null) {
            th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        }
        if (this.done) {
            RxJavaPlugins.onError(th2);
            return;
        }
        this.done = true;
        Object error = NotificationLite.error(th2);
        ReplayBuffer<T> replayBuffer = this.buffer;
        replayBuffer.addFinal(error);
        for (ReplayDisposable<T> replayDisposable : terminate(error)) {
            replayBuffer.replay(replayDisposable);
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        if (t == null) {
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
        } else if (!this.done) {
            ReplayBuffer<T> replayBuffer = this.buffer;
            replayBuffer.add(t);
            for (ReplayDisposable<T> replayDisposable : this.observers.get()) {
                replayBuffer.replay(replayDisposable);
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (this.done) {
            disposable.dispose();
        }
    }

    void remove(ReplayDisposable<T> replayDisposable) {
        ReplayDisposable<T>[] replayDisposableArr;
        ReplayDisposable<T>[] replayDisposableArr2;
        do {
            replayDisposableArr = this.observers.get();
            if (replayDisposableArr != TERMINATED && replayDisposableArr != EMPTY) {
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
                        replayDisposableArr2 = EMPTY;
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
        } while (!this.observers.compareAndSet(replayDisposableArr, replayDisposableArr2));
    }

    int size() {
        return this.buffer.size();
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        ReplayDisposable<T> replayDisposable = new ReplayDisposable<>(observer, this);
        observer.onSubscribe(replayDisposable);
        if (replayDisposable.cancelled) {
            return;
        }
        if (!add(replayDisposable) || !replayDisposable.cancelled) {
            this.buffer.replay(replayDisposable);
        } else {
            remove(replayDisposable);
        }
    }

    ReplayDisposable<T>[] terminate(Object obj) {
        return this.buffer.compareAndSet(null, obj) ? this.observers.getAndSet(TERMINATED) : TERMINATED;
    }
}
