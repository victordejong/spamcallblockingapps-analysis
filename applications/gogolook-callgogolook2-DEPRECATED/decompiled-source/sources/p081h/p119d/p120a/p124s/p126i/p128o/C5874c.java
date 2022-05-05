package p081h.p119d.p120a.p124s.p126i.p128o;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import p081h.p119d.p120a.p124s.AbstractC5806c;
/* renamed from: h.d.a.s.i.o.c */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/o/c.class */
public final class C5874c {

    /* renamed from: a */
    public final Map<AbstractC5806c, C5876b> f14795a = new HashMap();

    /* renamed from: b */
    public final C5877c f14796b = new C5877c();

    /* renamed from: h.d.a.s.i.o.c$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/o/c$b.class */
    public static class C5876b {

        /* renamed from: a */
        public final Lock f14797a;

        /* renamed from: b */
        public int f14798b;

        public C5876b() {
            this.f14797a = new ReentrantLock();
        }
    }

    /* renamed from: h.d.a.s.i.o.c$c */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/o/c$c.class */
    public static class C5877c {

        /* renamed from: a */
        public final Queue<C5876b> f14799a;

        public C5877c() {
            this.f14799a = new ArrayDeque();
        }

        /* renamed from: a */
        public C5876b m24191a() {
            C5876b poll;
            synchronized (this.f14799a) {
                poll = this.f14799a.poll();
            }
            C5876b bVar = poll;
            if (poll == null) {
                bVar = new C5876b();
            }
            return bVar;
        }

        /* renamed from: a */
        public void m24190a(C5876b bVar) {
            synchronized (this.f14799a) {
                if (this.f14799a.size() < 10) {
                    this.f14799a.offer(bVar);
                }
            }
        }
    }

    /* renamed from: a */
    public void m24193a(AbstractC5806c cVar) {
        C5876b bVar;
        synchronized (this) {
            C5876b bVar2 = this.f14795a.get(cVar);
            bVar = bVar2;
            if (bVar2 == null) {
                bVar = this.f14796b.m24191a();
                this.f14795a.put(cVar, bVar);
            }
            bVar.f14798b++;
        }
        bVar.f14797a.lock();
    }

    /* renamed from: b */
    public void m24192b(AbstractC5806c cVar) {
        C5876b bVar;
        synchronized (this) {
            bVar = this.f14795a.get(cVar);
            if (bVar != null && bVar.f14798b > 0) {
                int i = bVar.f14798b - 1;
                bVar.f14798b = i;
                if (i == 0) {
                    C5876b remove = this.f14795a.remove(cVar);
                    if (remove.equals(bVar)) {
                        this.f14796b.m24190a(remove);
                    } else {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + bVar + ", but actually removed: " + remove + ", key: " + cVar);
                    }
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Cannot release a lock that is not held, key: ");
            sb.append(cVar);
            sb.append(", interestedThreads: ");
            sb.append(bVar == null ? 0 : bVar.f14798b);
            throw new IllegalArgumentException(sb.toString());
        }
        bVar.f14797a.unlock();
    }
}
