package com.lidroid.xutils.task;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/task/PriorityObjectBlockingQueue.class */
public class PriorityObjectBlockingQueue<E> extends AbstractQueue<E> implements BlockingQueue<E>, Serializable {
    private static final long serialVersionUID = -6903933977591709194L;
    private final int capacity;
    private final AtomicInteger count;
    transient Node<E> head;
    private transient Node<E> last;
    private final Condition notEmpty;
    private final Condition notFull;
    private final ReentrantLock putLock;
    private final ReentrantLock takeLock;

    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr.class */
    private class Itr implements Iterator<E> {
        private Node<E> current;
        private E currentElement;
        private Node<E> lastRet;

        Itr() {
            PriorityObjectBlockingQueue.this.fullyLock();
            try {
                Node<E> node = PriorityObjectBlockingQueue.this.head.next;
                this.current = node;
                if (node != null) {
                    this.currentElement = node.getValue();
                }
            } finally {
                PriorityObjectBlockingQueue.this.fullyUnlock();
            }
        }

        private Node<E> nextNode(Node<E> node) {
            Node<E> node2;
            while (true) {
                node2 = node.next;
                if (node2 == node) {
                    return PriorityObjectBlockingQueue.this.head.next;
                }
                if (node2 == null || node2.getValue() != null) {
                    break;
                }
                node = node2;
            }
            return node2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.current != null;
        }

        @Override // java.util.Iterator
        public E next() {
            PriorityObjectBlockingQueue.this.fullyLock();
            try {
                Node<E> node = this.current;
                if (node != null) {
                    E e = this.currentElement;
                    this.lastRet = node;
                    Node<E> nextNode = nextNode(node);
                    this.current = nextNode;
                    this.currentElement = nextNode == null ? null : nextNode.getValue();
                    return e;
                }
                throw new NoSuchElementException();
            } finally {
                PriorityObjectBlockingQueue.this.fullyUnlock();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
            r4.this$0.unlink(r0, r6);
         */
        @Override // java.util.Iterator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void remove() {
            /*
                r4 = this;
                r0 = r4
                com.lidroid.xutils.task.Node<E> r0 = r0.lastRet
                if (r0 == 0) goto L_0x0052
                r0 = r4
                com.lidroid.xutils.task.PriorityObjectBlockingQueue r0 = com.lidroid.xutils.task.PriorityObjectBlockingQueue.this
                r0.fullyLock()
                r0 = r4
                com.lidroid.xutils.task.Node<E> r0 = r0.lastRet     // Catch: all -> 0x0048
                r5 = r0
                r0 = r4
                r1 = 0
                r0.lastRet = r1     // Catch: all -> 0x0048
                r0 = r4
                com.lidroid.xutils.task.PriorityObjectBlockingQueue r0 = com.lidroid.xutils.task.PriorityObjectBlockingQueue.this     // Catch: all -> 0x0048
                com.lidroid.xutils.task.Node<E> r0 = r0.head     // Catch: all -> 0x0048
                r6 = r0
            L_0x0020:
                r0 = r6
                r7 = r0
                r0 = r7
                com.lidroid.xutils.task.Node<T> r0 = r0.next     // Catch: all -> 0x0048
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L_0x0040
                r0 = r8
                r6 = r0
                r0 = r8
                r1 = r5
                if (r0 != r1) goto L_0x0020
                r0 = r4
                com.lidroid.xutils.task.PriorityObjectBlockingQueue r0 = com.lidroid.xutils.task.PriorityObjectBlockingQueue.this     // Catch: all -> 0x0048
                r1 = r8
                r2 = r7
                r0.unlink(r1, r2)     // Catch: all -> 0x0048
            L_0x0040:
                r0 = r4
                com.lidroid.xutils.task.PriorityObjectBlockingQueue r0 = com.lidroid.xutils.task.PriorityObjectBlockingQueue.this
                r0.fullyUnlock()
                return
            L_0x0048:
                r6 = move-exception
                r0 = r4
                com.lidroid.xutils.task.PriorityObjectBlockingQueue r0 = com.lidroid.xutils.task.PriorityObjectBlockingQueue.this
                r0.fullyUnlock()
                r0 = r6
                throw r0
            L_0x0052:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                r1.<init>()
                r6 = r0
                goto L_0x005f
            L_0x005d:
                r0 = r6
                throw r0
            L_0x005f:
                goto L_0x005d
            */
            throw new UnsupportedOperationException("Method not decompiled: com.lidroid.xutils.task.PriorityObjectBlockingQueue.Itr.remove():void");
        }
    }

    public PriorityObjectBlockingQueue() {
        this(Integer.MAX_VALUE);
    }

    public PriorityObjectBlockingQueue(int i) {
        this.count = new AtomicInteger();
        ReentrantLock reentrantLock = new ReentrantLock();
        this.takeLock = reentrantLock;
        this.notEmpty = reentrantLock.newCondition();
        ReentrantLock reentrantLock2 = new ReentrantLock();
        this.putLock = reentrantLock2;
        this.notFull = reentrantLock2.newCondition();
        if (i > 0) {
            this.capacity = i;
            Node<E> node = new Node<>(null);
            this.head = node;
            this.last = node;
            return;
        }
        throw new IllegalArgumentException();
    }

    public PriorityObjectBlockingQueue(Collection<? extends E> collection) {
        this(Integer.MAX_VALUE);
        ReentrantLock reentrantLock = this.putLock;
        reentrantLock.lock();
        int i = 0;
        try {
            for (Object obj : collection) {
                if (obj == null) {
                    throw new NullPointerException();
                } else if (i != this.capacity) {
                    opQueue(new Node<>(obj));
                    i++;
                } else {
                    throw new IllegalStateException("Queue full");
                }
            }
            this.count.set(i);
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    private E _dequeue() {
        Node node = (Node<E>) this.head;
        Node<E> node2 = (Node<E>) node.next;
        node.next = node;
        this.head = node2;
        E value = node2.getValue();
        node2.setValue(null);
        return value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void _enqueue(Node<E> node) {
        boolean z;
        Node node2 = this.head;
        while (true) {
            Node<T> node3 = node2.next;
            if (node3 == 0) {
                z = false;
                break;
            } else if (node3.getPriority().ordinal() > node.getPriority().ordinal()) {
                node2.next = node;
                node.next = node3;
                z = true;
                break;
            } else {
                node2 = node2.next;
            }
        }
        if (!z) {
            this.last.next = node;
            this.last = node;
        }
    }

    private E opQueue(Node<E> node) {
        synchronized (this) {
            if (node == null) {
                return _dequeue();
            }
            _enqueue(node);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        this.count.set(0);
        Node<E> node = new Node<>(null);
        this.head = node;
        this.last = node;
        while (true) {
            Object readObject = objectInputStream.readObject();
            if (readObject != null) {
                add(readObject);
            } else {
                return;
            }
        }
    }

    private void signalNotEmpty() {
        ReentrantLock reentrantLock = this.takeLock;
        reentrantLock.lock();
        try {
            this.notEmpty.signal();
        } finally {
            reentrantLock.unlock();
        }
    }

    private void signalNotFull() {
        ReentrantLock reentrantLock = this.putLock;
        reentrantLock.lock();
        try {
            this.notFull.signal();
        } finally {
            reentrantLock.unlock();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        fullyLock();
        try {
            objectOutputStream.defaultWriteObject();
            Node node = this.head;
            while (true) {
                node = node.next;
                if (node != null) {
                    objectOutputStream.writeObject(node.getValue());
                } else {
                    objectOutputStream.writeObject(null);
                    fullyUnlock();
                    return;
                }
            }
        } catch (Throwable th) {
            fullyUnlock();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        fullyLock();
        try {
            Node node = (Node<E>) this.head;
            while (true) {
                Node node2 = node.next;
                if (node2 == 0) {
                    break;
                }
                node.next = node;
                node2.setValue(null);
                node = (Node<E>) node2;
            }
            this.head = this.last;
            if (this.count.getAndSet(0) == this.capacity) {
                this.notFull.signal();
            }
            fullyUnlock();
        } catch (Throwable th) {
            fullyUnlock();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        fullyLock();
        try {
            Node node = this.head;
            do {
                node = node.next;
                if (node == null) {
                    fullyUnlock();
                    return false;
                }
            } while (!obj.equals(node.getValue()));
            fullyUnlock();
            return true;
        } catch (Throwable th) {
            fullyUnlock();
            throw th;
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection) {
        return drainTo(collection, Integer.MAX_VALUE);
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection, int i) {
        collection.getClass();
        if (collection == this) {
            throw new IllegalArgumentException();
        } else if (i <= 0) {
            return 0;
        } else {
            ReentrantLock reentrantLock = this.takeLock;
            reentrantLock.lock();
            boolean z = false;
            try {
                int min = Math.min(i, this.count.get());
                Node<E> node = this.head;
                int i2 = 0;
                while (i2 < min) {
                    Node<E> node2 = node.next;
                    collection.add((Object) node2.getValue());
                    node2.setValue(null);
                    node.next = (Node<T>) node;
                    i2++;
                    node = node2;
                }
                boolean z2 = false;
                if (i2 > 0) {
                    this.head = node;
                    z = false;
                    z2 = false;
                    if (this.count.getAndAdd(-i2) == this.capacity) {
                        z2 = true;
                    }
                }
                return min;
            } finally {
                reentrantLock.unlock();
                if (z) {
                    signalNotFull();
                }
            }
        }
    }

    void fullyLock() {
        this.putLock.lock();
        this.takeLock.lock();
    }

    void fullyUnlock() {
        this.takeLock.unlock();
        this.putLock.unlock();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new Itr();
    }

    @Override // java.util.Queue, java.util.concurrent.BlockingQueue
    public boolean offer(E e) {
        e.getClass();
        AtomicInteger atomicInteger = this.count;
        boolean z = false;
        if (atomicInteger.get() == this.capacity) {
            return false;
        }
        int i = -1;
        Node<E> node = new Node<>(e);
        ReentrantLock reentrantLock = this.putLock;
        reentrantLock.lock();
        try {
            if (atomicInteger.get() < this.capacity) {
                opQueue(node);
                int andIncrement = atomicInteger.getAndIncrement();
                i = andIncrement;
                if (andIncrement + 1 < this.capacity) {
                    this.notFull.signal();
                    i = andIncrement;
                }
            }
            if (i == 0) {
                signalNotEmpty();
            }
            if (i >= 0) {
                z = true;
            }
            return z;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.BlockingQueue
    public boolean offer(E e, long j, TimeUnit timeUnit) {
        e.getClass();
        long nanos = timeUnit.toNanos(j);
        ReentrantLock reentrantLock = this.putLock;
        AtomicInteger atomicInteger = this.count;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == this.capacity) {
            try {
                if (nanos <= 0) {
                    reentrantLock.unlock();
                    return false;
                }
                nanos = this.notFull.awaitNanos(nanos);
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        opQueue(new Node<>(e));
        int andIncrement = atomicInteger.getAndIncrement();
        if (andIncrement + 1 < this.capacity) {
            this.notFull.signal();
        }
        reentrantLock.unlock();
        if (andIncrement != 0) {
            return true;
        }
        signalNotEmpty();
        return true;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.Queue
    public E peek() {
        if (this.count.get() == 0) {
            return null;
        }
        ReentrantLock reentrantLock = this.takeLock;
        reentrantLock.lock();
        try {
            Node<E> node = this.head.next;
            if (node == null) {
                reentrantLock.unlock();
                return null;
            }
            E value = node.getValue();
            reentrantLock.unlock();
            return value;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.Queue
    public E poll() {
        AtomicInteger atomicInteger = this.count;
        E e = null;
        if (atomicInteger.get() == 0) {
            return null;
        }
        int i = -1;
        ReentrantLock reentrantLock = this.takeLock;
        reentrantLock.lock();
        try {
            if (atomicInteger.get() > 0) {
                E opQueue = opQueue(null);
                int andDecrement = atomicInteger.getAndDecrement();
                i = andDecrement;
                e = opQueue;
                if (andDecrement > 1) {
                    this.notEmpty.signal();
                    e = opQueue;
                    i = andDecrement;
                }
            }
            reentrantLock.unlock();
            if (i == this.capacity) {
                signalNotFull();
            }
            return e;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.BlockingQueue
    public E poll(long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j);
        AtomicInteger atomicInteger = this.count;
        ReentrantLock reentrantLock = this.takeLock;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == 0) {
            try {
                if (nanos <= 0) {
                    reentrantLock.unlock();
                    return null;
                }
                nanos = this.notEmpty.awaitNanos(nanos);
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        E opQueue = opQueue(null);
        int andDecrement = atomicInteger.getAndDecrement();
        if (andDecrement > 1) {
            this.notEmpty.signal();
        }
        reentrantLock.unlock();
        if (andDecrement == this.capacity) {
            signalNotFull();
        }
        return opQueue;
    }

    @Override // java.util.concurrent.BlockingQueue
    public void put(E e) {
        e.getClass();
        Node<E> node = new Node<>(e);
        ReentrantLock reentrantLock = this.putLock;
        AtomicInteger atomicInteger = this.count;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == this.capacity) {
            try {
                this.notFull.await();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        opQueue(node);
        int andIncrement = atomicInteger.getAndIncrement();
        if (andIncrement + 1 < this.capacity) {
            this.notFull.signal();
        }
        reentrantLock.unlock();
        if (andIncrement == 0) {
            signalNotEmpty();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public int remainingCapacity() {
        return this.capacity - this.count.get();
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public boolean remove(Object obj) {
        Node<E> node;
        if (obj == null) {
            return false;
        }
        fullyLock();
        try {
            Node<E> node2 = this.head;
            do {
                node = node2.next;
                if (node != null) {
                    node2 = node;
                } else {
                    fullyUnlock();
                    return false;
                }
            } while (!obj.equals(node.getValue()));
            unlink(node, node2);
            fullyUnlock();
            return true;
        } catch (Throwable th) {
            fullyUnlock();
            throw th;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.count.get();
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.BlockingQueue
    public E take() {
        AtomicInteger atomicInteger = this.count;
        ReentrantLock reentrantLock = this.takeLock;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == 0) {
            try {
                this.notEmpty.await();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        E opQueue = opQueue(null);
        int andDecrement = atomicInteger.getAndDecrement();
        if (andDecrement > 1) {
            this.notEmpty.signal();
        }
        reentrantLock.unlock();
        if (andDecrement == this.capacity) {
            signalNotFull();
        }
        return opQueue;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        fullyLock();
        try {
            Object[] objArr = new Object[this.count.get()];
            int i = 0;
            Node node = this.head.next;
            while (node != null) {
                objArr[i] = node.getValue();
                node = node.next;
                i++;
            }
            fullyUnlock();
            return objArr;
        } catch (Throwable th) {
            fullyUnlock();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        fullyLock();
        try {
            int i = this.count.get();
            T[] tArr2 = tArr;
            if (tArr.length < i) {
                tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
            }
            int i2 = 0;
            Node node = this.head.next;
            while (node != null) {
                tArr2[i2] = node.getValue();
                node = node.next;
                i2++;
            }
            if (tArr2.length > i2) {
                tArr2[i2] = null;
            }
            fullyUnlock();
            return tArr2;
        } catch (Throwable th) {
            fullyUnlock();
            throw th;
        }
    }

    void unlink(Node<E> node, Node<E> node2) {
        node.setValue(null);
        node2.next = (Node<E>) node.next;
        if (this.last == node) {
            this.last = node2;
        }
        if (this.count.getAndDecrement() == this.capacity) {
            this.notFull.signal();
        }
    }
}
