package com.bumptech.glide.load.engine.p120b;

import com.bumptech.glide.p116g.C3643j;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.bumptech.glide.load.engine.b.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/c.class */
final class C3735c {

    /* renamed from: a */
    final Map<String, C3736a> f13919a = new HashMap();

    /* renamed from: b */
    final C3737b f13920b = new C3737b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.b.c$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/c$a.class */
    public static final class C3736a {

        /* renamed from: a */
        final Lock f13921a = new ReentrantLock();

        /* renamed from: b */
        int f13922b;

        C3736a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.b.c$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/c$b.class */
    public static final class C3737b {

        /* renamed from: a */
        final Queue<C3736a> f13923a = new ArrayDeque();

        C3737b() {
        }

        /* renamed from: a */
        public final C3736a m37438a() {
            C3736a poll;
            synchronized (this.f13923a) {
                poll = this.f13923a.poll();
            }
            C3736a c3736a = poll;
            if (poll == null) {
                c3736a = new C3736a();
            }
            return c3736a;
        }
    }

    /* renamed from: a */
    public final void m37439a(String str) {
        C3736a c3736a;
        synchronized (this) {
            c3736a = (C3736a) C3643j.m37588a(this.f13919a.get(str), "Argument must not be null");
            if (c3736a.f13922b <= 0) {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + c3736a.f13922b);
            }
            c3736a.f13922b--;
            if (c3736a.f13922b == 0) {
                C3736a remove = this.f13919a.remove(str);
                if (!remove.equals(c3736a)) {
                    throw new IllegalStateException("Removed the wrong lock, expected to remove: " + c3736a + ", but actually removed: " + remove + ", safeKey: " + str);
                }
                C3737b c3737b = this.f13920b;
                synchronized (c3737b.f13923a) {
                    if (c3737b.f13923a.size() < 10) {
                        c3737b.f13923a.offer(remove);
                    }
                }
            }
        }
        c3736a.f13921a.unlock();
    }
}
