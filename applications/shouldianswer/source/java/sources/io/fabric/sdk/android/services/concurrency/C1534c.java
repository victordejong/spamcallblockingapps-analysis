package io.fabric.sdk.android.services.concurrency;

import io.fabric.sdk.android.services.concurrency.AbstractC1533b;
import io.fabric.sdk.android.services.concurrency.AbstractC1542i;
import io.fabric.sdk.android.services.concurrency.AbstractC1546l;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: io.fabric.sdk.android.services.concurrency.c */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/concurrency/c.class */
public class C1534c<E extends AbstractC1533b & AbstractC1546l & AbstractC1542i> extends PriorityBlockingQueue<E> {

    /* renamed from: a */
    final Queue<E> f4184a = new LinkedList();

    /* renamed from: b */
    private final ReentrantLock f4185b = new ReentrantLock();

    /* renamed from: a */
    public E take() {
        return m3354b(0, null, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [io.fabric.sdk.android.services.concurrency.b] */
    /* JADX WARN: Type inference failed for: r0v16, types: [io.fabric.sdk.android.services.concurrency.b] */
    /* JADX WARN: Type inference failed for: r0v4, types: [io.fabric.sdk.android.services.concurrency.b] */
    /* JADX WARN: Type inference failed for: r0v8, types: [io.fabric.sdk.android.services.concurrency.b] */
    /* renamed from: a */
    E m3359a(int i, Long l, TimeUnit timeUnit) {
        E e;
        if (i == 0) {
            e = (AbstractC1533b) super.take();
        } else if (i == 1) {
            e = (AbstractC1533b) super.peek();
        } else if (i == 2) {
            e = (AbstractC1533b) super.poll();
        } else if (i != 3) {
            return null;
        } else {
            e = (AbstractC1533b) super.poll(l.longValue(), timeUnit);
        }
        return e;
    }

    /* renamed from: a */
    public E poll(long j, TimeUnit timeUnit) {
        return m3354b(3, Long.valueOf(j), timeUnit);
    }

    /* renamed from: a */
    boolean m3360a(int i, E e) {
        try {
            this.f4185b.lock();
            if (i == 1) {
                super.remove(e);
            }
            return this.f4184a.offer(e);
        } finally {
            this.f4185b.unlock();
        }
    }

    /* renamed from: a */
    boolean m3357a(E e) {
        return e.areDependenciesMet();
    }

    /* renamed from: a */
    <T> T[] m3356a(T[] tArr, T[] tArr2) {
        int length = tArr.length;
        int length2 = tArr2.length;
        T[] tArr3 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), length + length2));
        System.arraycopy(tArr, 0, tArr3, 0, length);
        System.arraycopy(tArr2, 0, tArr3, length, length2);
        return tArr3;
    }

    /* renamed from: b */
    public E peek() {
        try {
            return m3354b(1, null, null);
        } catch (InterruptedException e) {
            return null;
        }
    }

    /* renamed from: b */
    E m3354b(int i, Long l, TimeUnit timeUnit) {
        E m3359a;
        while (true) {
            m3359a = m3359a(i, l, timeUnit);
            if (m3359a == null || m3357a(m3359a)) {
                break;
            }
            m3360a(i, (int) m3359a);
        }
        return m3359a;
    }

    /* renamed from: c */
    public E poll() {
        try {
            return m3354b(2, null, null);
        } catch (InterruptedException e) {
            return null;
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        try {
            this.f4185b.lock();
            this.f4184a.clear();
            super.clear();
        } finally {
            this.f4185b.unlock();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public boolean contains(Object obj) {
        boolean z;
        try {
            this.f4185b.lock();
            if (!super.contains(obj)) {
                if (!this.f4184a.contains(obj)) {
                    z = false;
                    this.f4185b.unlock();
                    return z;
                }
            }
            z = true;
            this.f4185b.unlock();
            return z;
        } catch (Throwable th) {
            this.f4185b.unlock();
            throw th;
        }
    }

    /* renamed from: d */
    public void m3352d() {
        try {
            this.f4185b.lock();
            Iterator<E> it = this.f4184a.iterator();
            while (it.hasNext()) {
                E next = it.next();
                if (m3357a(next)) {
                    super.offer(next);
                    it.remove();
                }
            }
        } finally {
            this.f4185b.unlock();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection) {
        try {
            this.f4185b.lock();
            int drainTo = super.drainTo(collection);
            int size = this.f4184a.size();
            while (!this.f4184a.isEmpty()) {
                collection.add(this.f4184a.poll());
            }
            this.f4185b.unlock();
            return drainTo + size;
        } catch (Throwable th) {
            this.f4185b.unlock();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection, int i) {
        try {
            this.f4185b.lock();
            int drainTo = super.drainTo(collection, i);
            while (!this.f4184a.isEmpty() && drainTo <= i) {
                collection.add(this.f4184a.poll());
                drainTo++;
            }
            this.f4185b.unlock();
            return drainTo;
        } catch (Throwable th) {
            this.f4185b.unlock();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public boolean remove(Object obj) {
        boolean z;
        try {
            this.f4185b.lock();
            if (!super.remove(obj)) {
                if (!this.f4184a.remove(obj)) {
                    z = false;
                    this.f4185b.unlock();
                    return z;
                }
            }
            z = true;
            this.f4185b.unlock();
            return z;
        } catch (Throwable th) {
            this.f4185b.unlock();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        try {
            this.f4185b.lock();
            boolean removeAll = super.removeAll(collection);
            boolean removeAll2 = this.f4184a.removeAll(collection);
            this.f4185b.unlock();
            return removeAll2 | removeAll;
        } catch (Throwable th) {
            this.f4185b.unlock();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection
    public int size() {
        try {
            this.f4185b.lock();
            int size = this.f4184a.size();
            int size2 = super.size();
            this.f4185b.unlock();
            return size + size2;
        } catch (Throwable th) {
            this.f4185b.unlock();
            throw th;
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        try {
            this.f4185b.lock();
            return m3356a(super.toArray(), this.f4184a.toArray());
        } finally {
            this.f4185b.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        try {
            this.f4185b.lock();
            return (T[]) m3356a(super.toArray(tArr), this.f4184a.toArray(tArr));
        } finally {
            this.f4185b.unlock();
        }
    }
}
