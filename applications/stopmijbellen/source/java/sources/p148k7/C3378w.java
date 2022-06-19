package p148k7;

import java.util.LinkedList;
import java.util.WeakHashMap;
import java.util.concurrent.Semaphore;
/* renamed from: k7.w */
/* loaded from: classes2-dex2jar.jar:k7/w.class */
public class C3378w extends LinkedList<Runnable> {

    /* renamed from: c */
    public static final WeakHashMap<Thread, C3378w> f11415c = new WeakHashMap<>();

    /* renamed from: a */
    public C3340e f11416a;

    /* renamed from: b */
    public Semaphore f11417b = new Semaphore(0);

    /* renamed from: b */
    public static C3378w m2329b(Thread thread) {
        C3378w c3378w;
        WeakHashMap<Thread, C3378w> weakHashMap = f11415c;
        synchronized (weakHashMap) {
            C3378w c3378w2 = weakHashMap.get(thread);
            c3378w = c3378w2;
            if (c3378w2 == null) {
                c3378w = new C3378w();
                weakHashMap.put(thread, c3378w);
            }
        }
        return c3378w;
    }

    /* renamed from: a */
    public boolean m2330a(Runnable runnable) {
        boolean add;
        synchronized (this) {
            add = super.add(runnable);
        }
        return add;
    }

    @Override // java.util.LinkedList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.Deque, java.util.Queue
    public boolean add(Object obj) {
        boolean add;
        Runnable runnable = (Runnable) obj;
        synchronized (this) {
            add = super.add(runnable);
        }
        return add;
    }

    /* renamed from: c */
    public Runnable remove() {
        synchronized (this) {
            if (isEmpty()) {
                return null;
            }
            return (Runnable) super.remove();
        }
    }

    @Override // java.util.LinkedList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.Deque
    public boolean remove(Object obj) {
        boolean remove;
        synchronized (this) {
            remove = super.remove(obj);
        }
        return remove;
    }
}
