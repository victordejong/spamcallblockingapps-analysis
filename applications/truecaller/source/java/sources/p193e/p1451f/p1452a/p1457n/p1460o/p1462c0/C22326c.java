package p193e.p1451f.p1452a.p1457n.p1460o.p1462c0;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: e.f.a.n.o.c0.c */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/c0/c.class */
public final class C22326c {

    /* renamed from: a */
    public final Map<String, C22327a> f61998a = new HashMap();

    /* renamed from: b */
    public final C22328b f61999b = new C22328b();

    /* renamed from: e.f.a.n.o.c0.c$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/c0/c$a.class */
    public static class C22327a {

        /* renamed from: a */
        public final Lock f62000a = new ReentrantLock();

        /* renamed from: b */
        public int f62001b;
    }

    /* renamed from: e.f.a.n.o.c0.c$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/c0/c$b.class */
    public static class C22328b {

        /* renamed from: a */
        public final Queue<C22327a> f62002a = new ArrayDeque();
    }

    /* renamed from: a */
    public void m8311a(String str) {
        C22327a c22327a;
        synchronized (this) {
            C22327a c22327a2 = this.f61998a.get(str);
            Objects.requireNonNull(c22327a2, "Argument must not be null");
            c22327a = c22327a2;
            int i = c22327a.f62001b;
            if (i < 1) {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + c22327a.f62001b);
            }
            int i2 = i - 1;
            c22327a.f62001b = i2;
            if (i2 == 0) {
                C22327a remove = this.f61998a.remove(str);
                if (!remove.equals(c22327a)) {
                    throw new IllegalStateException("Removed the wrong lock, expected to remove: " + c22327a + ", but actually removed: " + remove + ", safeKey: " + str);
                }
                C22328b c22328b = this.f61999b;
                synchronized (c22328b.f62002a) {
                    if (c22328b.f62002a.size() < 10) {
                        c22328b.f62002a.offer(remove);
                    }
                }
            }
        }
        c22327a.f62000a.unlock();
    }
}
