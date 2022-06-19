package com.bumptech.glide.load.engine.p021y;

import com.bumptech.glide.p029o.C0856j;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.bumptech.glide.load.engine.y.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/c.class */
final class C0778c {

    /* renamed from: a */
    private final Map<String, C0779a> f3625a = new HashMap();

    /* renamed from: b */
    private final C0780b f3626b = new C0780b();

    /* renamed from: com.bumptech.glide.load.engine.y.c$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/c$a.class */
    public static class C0779a {

        /* renamed from: a */
        final Lock f3627a = new ReentrantLock();

        /* renamed from: b */
        int f3628b;

        C0779a() {
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.y.c$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/c$b.class */
    private static class C0780b {

        /* renamed from: a */
        private final Queue<C0779a> f3629a = new ArrayDeque();

        C0780b() {
        }

        /* renamed from: a */
        C0779a m11036a() {
            C0779a poll;
            synchronized (this.f3629a) {
                poll = this.f3629a.poll();
            }
            C0779a c0779a = poll;
            if (poll == null) {
                c0779a = new C0779a();
            }
            return c0779a;
        }

        /* renamed from: b */
        void m11035b(C0779a c0779a) {
            synchronized (this.f3629a) {
                if (this.f3629a.size() < 10) {
                    this.f3629a.offer(c0779a);
                }
            }
        }
    }

    C0778c() {
    }

    /* renamed from: a */
    void m11038a(String str) {
        C0779a c0779a;
        synchronized (this) {
            C0779a c0779a2 = this.f3625a.get(str);
            c0779a = c0779a2;
            if (c0779a2 == null) {
                c0779a = this.f3626b.m11036a();
                this.f3625a.put(str, c0779a);
            }
            c0779a.f3628b++;
        }
        c0779a.f3627a.lock();
    }

    /* renamed from: b */
    void m11037b(String str) {
        C0779a c0779a;
        synchronized (this) {
            C0779a c0779a2 = this.f3625a.get(str);
            C0856j.m10759d(c0779a2);
            c0779a = c0779a2;
            int i = c0779a.f3628b;
            if (i < 1) {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + c0779a.f3628b);
            }
            int i2 = i - 1;
            c0779a.f3628b = i2;
            if (i2 == 0) {
                C0779a remove = this.f3625a.remove(str);
                if (!remove.equals(c0779a)) {
                    throw new IllegalStateException("Removed the wrong lock, expected to remove: " + c0779a + ", but actually removed: " + remove + ", safeKey: " + str);
                }
                this.f3626b.m11035b(remove);
            }
        }
        c0779a.f3627a.unlock();
    }
}
