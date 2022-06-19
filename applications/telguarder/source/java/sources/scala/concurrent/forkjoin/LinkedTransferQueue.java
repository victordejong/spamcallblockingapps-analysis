package scala.concurrent.forkjoin;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import sun.misc.Unsafe;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/LinkedTransferQueue.class */
public class LinkedTransferQueue<E> extends AbstractQueue<E> implements TransferQueue<E>, Serializable {
    private static final int ASYNC = 1;
    private static final int CHAINED_SPINS = 64;
    private static final int FRONT_SPINS = 128;

    /* renamed from: MP */
    private static final boolean f1620MP;
    private static final int NOW = 0;
    static final int SWEEP_THRESHOLD = 32;
    private static final int SYNC = 2;
    private static final int TIMED = 3;
    private static final Unsafe UNSAFE;
    private static final long headOffset;
    private static final long serialVersionUID = -3223113410248163686L;
    private static final long sweepVotesOffset;
    private static final long tailOffset;
    volatile transient Node head;
    private volatile transient int sweepVotes;
    private volatile transient Node tail;

    /* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/LinkedTransferQueue$Itr.class */
    public final class Itr implements Iterator<E> {
        private Node lastPred;
        private Node lastRet;
        private E nextItem;
        private Node nextNode;

        Itr() {
            LinkedTransferQueue.this = r4;
            advance(null);
        }

        private void advance(Node node) {
            Node node2;
            Node node3 = this.lastRet;
            if (node3 == null || node3.isMatched()) {
                Node node4 = this.lastPred;
                if (node4 != null && !node4.isMatched()) {
                    while (true) {
                        Node node5 = node4.next;
                        if (node5 == null || node5 == node4 || !node5.isMatched() || (node2 = node5.next) == null || node2 == node5) {
                            break;
                        }
                        node4.casNext(node5, node2);
                    }
                } else {
                    this.lastPred = null;
                }
            } else {
                this.lastPred = node3;
            }
            this.lastRet = node;
            while (true) {
                Node node6 = node == null ? LinkedTransferQueue.this.head : node.next;
                if (node6 == null) {
                    break;
                }
                if (node6 != node) {
                    Object obj = node6.item;
                    if (!node6.isData) {
                        if (obj == null) {
                            break;
                        }
                    } else if (obj != null && obj != node6) {
                        this.nextItem = (E) LinkedTransferQueue.cast(obj);
                        this.nextNode = node6;
                        return;
                    }
                    if (node == null) {
                        node = node6;
                    } else {
                        Node node7 = node6.next;
                        if (node7 == null) {
                            break;
                        } else if (node6 != node7) {
                            node.casNext(node6, node7);
                        }
                    }
                }
                node = null;
            }
            this.nextNode = null;
            this.nextItem = null;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.nextNode != null;
        }

        @Override // java.util.Iterator
        public final E next() {
            Node node = this.nextNode;
            if (node != null) {
                E e = this.nextItem;
                advance(node);
                return e;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            Node node = this.lastRet;
            if (node != null) {
                this.lastRet = null;
                if (!node.tryMatchData()) {
                    return;
                }
                LinkedTransferQueue.this.unsplice(this.lastPred, node);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/LinkedTransferQueue$Node.class */
    public static final class Node {
        private static final Unsafe UNSAFE;
        private static final long itemOffset;
        private static final long nextOffset;
        private static final long serialVersionUID = -3375979862319811754L;
        private static final long waiterOffset;
        final boolean isData;
        volatile Object item;
        volatile Node next;
        volatile Thread waiter;

        static {
            try {
                Unsafe unsafe = LinkedTransferQueue.getUnsafe();
                UNSAFE = unsafe;
                itemOffset = unsafe.objectFieldOffset(Node.class.getDeclaredField("item"));
                nextOffset = unsafe.objectFieldOffset(Node.class.getDeclaredField("next"));
                waiterOffset = unsafe.objectFieldOffset(Node.class.getDeclaredField("waiter"));
            } catch (Exception e) {
                throw new Error(e);
            }
        }

        Node(Object obj, boolean z) {
            UNSAFE.putObject(this, itemOffset, obj);
            this.isData = z;
        }

        final boolean cannotPrecede(boolean z) {
            boolean z2;
            Object obj;
            boolean z3 = this.isData;
            if (z3 != z && (obj = this.item) != this) {
                if ((obj != null) == z3) {
                    z2 = true;
                    return z2;
                }
            }
            z2 = false;
            return z2;
        }

        final boolean casItem(Object obj, Object obj2) {
            return UNSAFE.compareAndSwapObject(this, itemOffset, obj, obj2);
        }

        final boolean casNext(Node node, Node node2) {
            return UNSAFE.compareAndSwapObject(this, nextOffset, node, node2);
        }

        final void forgetContents() {
            Unsafe unsafe = UNSAFE;
            unsafe.putObject(this, itemOffset, this);
            unsafe.putObject(this, waiterOffset, (Object) null);
        }

        final void forgetNext() {
            UNSAFE.putObject(this, nextOffset, this);
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
            if ((r0 == null) == r3.isData) goto L10;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final boolean isMatched() {
            /*
                r3 = this;
                r0 = r3
                java.lang.Object r0 = r0.item
                r4 = r0
                r0 = 0
                r5 = r0
                r0 = r4
                r1 = r3
                if (r0 == r1) goto L1f
                r0 = r4
                if (r0 != 0) goto L15
                r0 = 1
                r6 = r0
                goto L17
            L15:
                r0 = 0
                r6 = r0
            L17:
                r0 = r6
                r1 = r3
                boolean r1 = r1.isData
                if (r0 != r1) goto L21
            L1f:
                r0 = 1
                r5 = r0
            L21:
                r0 = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.concurrent.forkjoin.LinkedTransferQueue.Node.isMatched():boolean");
        }

        final boolean isUnmatchedRequest() {
            return !this.isData && this.item == null;
        }

        final boolean tryMatchData() {
            Object obj = this.item;
            if (obj == null || obj == this || !casItem(obj, null)) {
                return false;
            }
            LockSupport.unpark(this.waiter);
            return true;
        }
    }

    static {
        boolean z = true;
        if (Runtime.getRuntime().availableProcessors() <= 1) {
            z = false;
        }
        f1620MP = z;
        try {
            Unsafe unsafe = getUnsafe();
            UNSAFE = unsafe;
            headOffset = unsafe.objectFieldOffset(LinkedTransferQueue.class.getDeclaredField("head"));
            tailOffset = unsafe.objectFieldOffset(LinkedTransferQueue.class.getDeclaredField("tail"));
            sweepVotesOffset = unsafe.objectFieldOffset(LinkedTransferQueue.class.getDeclaredField("sweepVotes"));
        } catch (Exception e) {
            throw new Error(e);
        }
    }

    public LinkedTransferQueue() {
    }

    public LinkedTransferQueue(Collection<? extends E> collection) {
        this();
        addAll(collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [long] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r2v0, types: [long] */
    private E awaitMatch(Node node, Node node2, E e, boolean z, long j) {
        ?? nanoTime = z ? System.nanoTime() : (char) 0;
        Thread currentThread = Thread.currentThread();
        ThreadLocalRandom threadLocalRandom = null;
        int i = -1;
        while (true) {
            Object obj = node.item;
            if (obj != e) {
                node.forgetContents();
                return (E) cast(obj);
            } else if ((currentThread.isInterrupted() || (z && j <= 0)) && node.casItem(e, node)) {
                unsplice(node2, node);
                return e;
            } else if (i < 0) {
                int spinsFor = spinsFor(node2, node.isData);
                i = spinsFor;
                if (spinsFor > 0) {
                    threadLocalRandom = ThreadLocalRandom.current();
                    i = spinsFor;
                }
            } else if (i > 0) {
                int i2 = i - 1;
                i = i2;
                if (threadLocalRandom.nextInt(64) == 0) {
                    Thread.yield();
                    i = i2;
                }
            } else if (node.waiter == null) {
                node.waiter = currentThread;
            } else if (z) {
                ?? nanoTime2 = System.nanoTime();
                j = (j == true ? 1 : 0) - (nanoTime2 - nanoTime);
                if ((j == true ? 1L : 0L) > 0) {
                    LockSupport.parkNanos(this, j);
                }
                nanoTime = nanoTime2;
            } else {
                LockSupport.park(this);
            }
        }
    }

    private boolean casHead(Node node, Node node2) {
        return UNSAFE.compareAndSwapObject(this, headOffset, node, node2);
    }

    private boolean casSweepVotes(int i, int i2) {
        return UNSAFE.compareAndSwapInt(this, sweepVotesOffset, i, i2);
    }

    private boolean casTail(Node node, Node node2) {
        return UNSAFE.compareAndSwapObject(this, tailOffset, node, node2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <E> E cast(Object obj) {
        return obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
        return r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int countOfMode(boolean r4) {
        /*
            r3 = this;
            r0 = r3
            scala.concurrent.forkjoin.LinkedTransferQueue$Node r0 = r0.head
            r5 = r0
        L5:
            r0 = 0
            r6 = r0
        L7:
            r0 = r6
            r7 = r0
            r0 = r5
            if (r0 == 0) goto L51
            r0 = r6
            r7 = r0
            r0 = r5
            boolean r0 = r0.isMatched()
            if (r0 != 0) goto L34
            r0 = r5
            boolean r0 = r0.isData
            r1 = r4
            if (r0 == r1) goto L22
            r0 = 0
            return r0
        L22:
            int r6 = r6 + 1
            r0 = r6
            r7 = r0
            r0 = r6
            r1 = 2147483647(0x7fffffff, float:NaN)
            if (r0 != r1) goto L34
            r0 = r6
            r7 = r0
            goto L51
        L34:
            r0 = r5
            scala.concurrent.forkjoin.LinkedTransferQueue$Node r0 = r0.next
            r8 = r0
            r0 = r8
            r1 = r5
            if (r0 == r1) goto L49
            r0 = r8
            r5 = r0
            r0 = r7
            r6 = r0
            goto L7
        L49:
            r0 = r3
            scala.concurrent.forkjoin.LinkedTransferQueue$Node r0 = r0.head
            r5 = r0
            goto L5
        L51:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.concurrent.forkjoin.LinkedTransferQueue.countOfMode(boolean):int");
    }

    private boolean findAndRemove(Object obj) {
        if (obj != null) {
            Node node = this.head;
            while (true) {
                Node node2 = node;
                Node node3 = null;
                while (node2 != null) {
                    Object obj2 = node2.item;
                    if (node2.isData) {
                        if (obj2 != null && obj2 != node2 && obj.equals(obj2) && node2.tryMatchData()) {
                            unsplice(node3, node2);
                            return true;
                        }
                    } else if (obj2 == null) {
                        return false;
                    }
                    Node node4 = node2.next;
                    if (node4 == node2) {
                        break;
                    }
                    node3 = node2;
                    node2 = node4;
                }
                return false;
                node = this.head;
            }
        } else {
            return false;
        }
    }

    private E firstDataItem() {
        Node node = this.head;
        while (true) {
            Node node2 = node;
            if (node2 != null) {
                Object obj = node2.item;
                if (node2.isData) {
                    if (obj != null && obj != node2) {
                        return (E) cast(obj);
                    }
                } else if (obj == null) {
                    return null;
                }
                node = succ(node2);
            } else {
                return null;
            }
        }
    }

    private Node firstOfMode(boolean z) {
        Node node = this.head;
        while (true) {
            Node node2 = node;
            if (node2 != null) {
                if (!node2.isMatched()) {
                    if (node2.isData != z) {
                        node2 = null;
                    }
                    return node2;
                }
                node = succ(node2);
            } else {
                return null;
            }
        }
    }

    static Unsafe getUnsafe() {
        return scala.concurrent.util.Unsafe.instance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        while (true) {
            Object readObject = objectInputStream.readObject();
            if (readObject == null) {
                return;
            }
            offer(readObject);
        }
    }

    private static int spinsFor(Node node, boolean z) {
        if (!f1620MP || node == null) {
            return 0;
        }
        if (node.isData != z) {
            return 192;
        }
        if (node.isMatched()) {
            return 128;
        }
        return node.waiter == null ? 64 : 0;
    }

    private void sweep() {
        Node node;
        Node node2 = this.head;
        while (node2 != null && (node = node2.next) != null) {
            if (!node.isMatched()) {
                node2 = node;
            } else {
                Node node3 = node.next;
                if (node3 == null) {
                    return;
                }
                if (node == node3) {
                    node2 = this.head;
                } else {
                    node2.casNext(node, node3);
                }
            }
        }
    }

    private Node tryAppend(Node node, boolean z) {
        Node node2;
        Node node3;
        Node node4;
        Node node5 = this.tail;
        Node node6 = node5;
        while (true) {
            Node node7 = node5;
            if (node5 == null) {
                node5 = this.head;
                node7 = node5;
                if (node5 == null) {
                    if (casHead(null, node)) {
                        return node;
                    }
                }
            }
            if (node7.cannotPrecede(z)) {
                return null;
            }
            Node node8 = node7.next;
            if (node8 != null) {
                if (node7 == node6 || node6 == (node3 = this.tail)) {
                    node2 = node6;
                    node5 = null;
                    if (node7 != node8) {
                        node5 = node8;
                        node2 = node6;
                    }
                } else {
                    node2 = node3;
                    node5 = node3;
                }
                node6 = node2;
            } else if (node7.casNext(null, node)) {
                if (node7 != node6) {
                    do {
                        if (this.tail == node6 && casTail(node6, node)) {
                            break;
                        }
                        node6 = this.tail;
                        if (node6 != null && (node4 = node6.next) != null) {
                            node = node4.next;
                            if (node == null) {
                                break;
                            }
                        } else {
                            break;
                        }
                    } while (node != node6);
                }
                return node7;
            } else {
                node5 = node7.next;
            }
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            objectOutputStream.writeObject(it.next());
        }
        objectOutputStream.writeObject(null);
    }

    private E xfer(E e, boolean z, int i, long j) {
        Node node;
        if (z) {
            Objects.requireNonNull(e);
        }
        Node node2 = null;
        while (true) {
            Node node3 = node2;
            Node node4 = this.head;
            while (true) {
                Node node5 = node4;
                while (node5 != null) {
                    boolean z2 = node5.isData;
                    Object obj = node5.item;
                    if (obj != node5) {
                        if ((obj != null) == z2) {
                            if (z2 == z) {
                                break;
                            } else if (node5.casItem(obj, e)) {
                                Node node6 = node5;
                                Node node7 = node5;
                                while (true) {
                                    if (node6 == node7) {
                                        break;
                                    }
                                    Node node8 = node6.next;
                                    if (this.head == node7) {
                                        if (node8 != null) {
                                            node6 = node8;
                                        }
                                        if (casHead(node7, node6)) {
                                            node7.forgetNext();
                                            break;
                                        }
                                    }
                                    node7 = this.head;
                                    if (node7 != null && (node = node7.next) != null) {
                                        node6 = node;
                                        if (!node.isMatched()) {
                                            break;
                                        }
                                    } else {
                                        break;
                                    }
                                }
                                LockSupport.unpark(node5.waiter);
                                return (E) cast(obj);
                            }
                        }
                    }
                    Node node9 = node5.next;
                    if (node5 != node9) {
                        node5 = node9;
                    }
                }
                node4 = this.head;
            }
            if (i == 0) {
                break;
            }
            Node node10 = node3;
            if (node3 == null) {
                node10 = new Node(e, z);
            }
            Node tryAppend = tryAppend(node10, z);
            if (tryAppend == null) {
                node2 = node10;
            } else if (i != 1) {
                boolean z3 = false;
                if (i == 3) {
                    z3 = true;
                }
                return awaitMatch(node10, tryAppend, e, z3, j);
            }
        }
        return e;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue, java.util.concurrent.BlockingQueue
    public boolean add(E e) {
        xfer(e, true, 1, 0L);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        Node node = this.head;
        while (true) {
            Node node2 = node;
            if (node2 == null) {
                return false;
            }
            Object obj2 = node2.item;
            if (node2.isData) {
                if (obj2 != null && obj2 != node2 && obj.equals(obj2)) {
                    return true;
                }
            } else if (obj2 == null) {
                return false;
            }
            node = succ(node2);
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection) {
        Objects.requireNonNull(collection);
        if (collection != this) {
            int i = 0;
            while (true) {
                E poll = poll();
                if (poll == null) {
                    return i;
                }
                collection.add(poll);
                i++;
            }
        } else {
            throw new IllegalArgumentException();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection, int i) {
        E poll;
        Objects.requireNonNull(collection);
        if (collection != this) {
            int i2 = 0;
            while (i2 < i && (poll = poll()) != null) {
                collection.add(poll);
                i2++;
            }
            return i2;
        }
        throw new IllegalArgumentException();
    }

    @Override // scala.concurrent.forkjoin.TransferQueue
    public int getWaitingConsumerCount() {
        return countOfMode(false);
    }

    @Override // scala.concurrent.forkjoin.TransferQueue
    public boolean hasWaitingConsumer() {
        boolean z = false;
        if (firstOfMode(false) != null) {
            z = true;
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        Node node = this.head;
        while (true) {
            Node node2 = node;
            if (node2 != null) {
                if (!node2.isMatched()) {
                    return !node2.isData;
                }
                node = succ(node2);
            } else {
                return true;
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new Itr();
    }

    @Override // java.util.Queue, java.util.concurrent.BlockingQueue
    public boolean offer(E e) {
        xfer(e, true, 1, 0L);
        return true;
    }

    @Override // java.util.concurrent.BlockingQueue
    public boolean offer(E e, long j, TimeUnit timeUnit) {
        xfer(e, true, 1, 0L);
        return true;
    }

    @Override // java.util.Queue
    public E peek() {
        return firstDataItem();
    }

    @Override // java.util.Queue
    public E poll() {
        return xfer(null, false, 0, 0L);
    }

    @Override // java.util.concurrent.BlockingQueue
    public E poll(long j, TimeUnit timeUnit) throws InterruptedException {
        E xfer = xfer(null, false, 3, timeUnit.toNanos(j));
        if (xfer != null || !Thread.interrupted()) {
            return xfer;
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.BlockingQueue
    public void put(E e) {
        xfer(e, true, 1, 0L);
    }

    @Override // java.util.concurrent.BlockingQueue
    public int remainingCapacity() {
        return Integer.MAX_VALUE;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public boolean remove(Object obj) {
        return findAndRemove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return countOfMode(true);
    }

    final Node succ(Node node) {
        Node node2 = node.next;
        Node node3 = node2;
        if (node == node2) {
            node3 = this.head;
        }
        return node3;
    }

    @Override // java.util.concurrent.BlockingQueue
    public E take() throws InterruptedException {
        E xfer = xfer(null, false, 2, 0L);
        if (xfer != null) {
            return xfer;
        }
        Thread.interrupted();
        throw new InterruptedException();
    }

    @Override // scala.concurrent.forkjoin.TransferQueue
    public void transfer(E e) throws InterruptedException {
        if (xfer(e, true, 2, 0L) == null) {
            return;
        }
        Thread.interrupted();
        throw new InterruptedException();
    }

    @Override // scala.concurrent.forkjoin.TransferQueue
    public boolean tryTransfer(E e) {
        return xfer(e, true, 0, 0L) == null;
    }

    @Override // scala.concurrent.forkjoin.TransferQueue
    public boolean tryTransfer(E e, long j, TimeUnit timeUnit) throws InterruptedException {
        if (xfer(e, true, 3, timeUnit.toNanos(j)) == null) {
            return true;
        }
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        return false;
    }

    final void unsplice(Node node, Node node2) {
        node2.forgetContents();
        if (node == null || node == node2 || node.next != node2) {
            return;
        }
        Node node3 = node2.next;
        if (node3 != null && (node3 == node2 || !node.casNext(node2, node3) || !node.isMatched())) {
            return;
        }
        while (true) {
            Node node4 = this.head;
            if (node4 == node || node4 == node2 || node4 == null) {
                return;
            }
            if (node4.isMatched()) {
                Node node5 = node4.next;
                if (node5 == null) {
                    return;
                }
                if (node5 != node4 && casHead(node4, node5)) {
                    node4.forgetNext();
                }
            } else if (node.next == node || node2.next == node2) {
                return;
            } else {
                while (true) {
                    int i = this.sweepVotes;
                    if (i < 32) {
                        if (casSweepVotes(i, i + 1)) {
                            return;
                        }
                    } else if (casSweepVotes(i, 0)) {
                        sweep();
                        return;
                    }
                }
            }
        }
    }
}
