package com.bumptech.glide.load.engine.p091b;

import com.bumptech.glide.p077h.C1456i;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.bumptech.glide.load.engine.b.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/c.class */
final class C1701c {

    /* renamed from: a */
    private final Map<String, C1702a> f5169a = new HashMap();

    /* renamed from: b */
    private final C1703b f5170b = new C1703b();

    /* renamed from: com.bumptech.glide.load.engine.b.c$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/c$a.class */
    public static class C1702a {

        /* renamed from: a */
        final Lock f5171a = new ReentrantLock();

        /* renamed from: b */
        int f5172b;

        C1702a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.engine.b.c$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/c$b.class */
    public static class C1703b {

        /* renamed from: a */
        private final Queue<C1702a> f5173a = new ArrayDeque();

        C1703b() {
        }

        /* renamed from: a */
        C1702a m16507a() {
            C1702a poll;
            synchronized (this.f5173a) {
                poll = this.f5173a.poll();
            }
            C1702a c1702a = poll;
            if (poll == null) {
                c1702a = new C1702a();
            }
            return c1702a;
        }

        /* renamed from: a */
        void m16506a(C1702a c1702a) {
            synchronized (this.f5173a) {
                if (this.f5173a.size() < 10) {
                    this.f5173a.offer(c1702a);
                }
            }
        }
    }

    /* renamed from: a */
    public void m16509a(String str) {
        C1702a c1702a;
        synchronized (this) {
            C1702a c1702a2 = this.f5169a.get(str);
            c1702a = c1702a2;
            if (c1702a2 == null) {
                c1702a = this.f5170b.m16507a();
                this.f5169a.put(str, c1702a);
            }
            c1702a.f5172b++;
        }
        c1702a.f5171a.lock();
    }

    /* renamed from: b */
    public void m16508b(String str) {
        C1702a c1702a;
        synchronized (this) {
            c1702a = (C1702a) C1456i.m16989a(this.f5169a.get(str));
            if (c1702a.f5172b < 1) {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + c1702a.f5172b);
            }
            c1702a.f5172b--;
            if (c1702a.f5172b == 0) {
                C1702a remove = this.f5169a.remove(str);
                if (!remove.equals(c1702a)) {
                    throw new IllegalStateException("Removed the wrong lock, expected to remove: " + c1702a + ", but actually removed: " + remove + ", safeKey: " + str);
                }
                this.f5170b.m16506a(remove);
            }
        }
        c1702a.f5171a.unlock();
    }
}
