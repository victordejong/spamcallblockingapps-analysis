package com.bumptech.glide.load.engine.p210y;

import com.bumptech.glide.p223p.C4382j;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.bumptech.glide.load.engine.y.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/c.class */
final class C4118c {

    /* renamed from: a */
    private final Map<String, C4119a> f12956a = new HashMap();

    /* renamed from: b */
    private final C4120b f12957b = new C4120b();

    /* renamed from: com.bumptech.glide.load.engine.y.c$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/c$a.class */
    public static class C4119a {

        /* renamed from: a */
        final Lock f12958a = new ReentrantLock();

        /* renamed from: b */
        int f12959b;

        C4119a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.engine.y.c$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/c$b.class */
    public static class C4120b {

        /* renamed from: a */
        private final Queue<C4119a> f12960a = new ArrayDeque();

        C4120b() {
        }

        /* renamed from: a */
        C4119a m23223a() {
            C4119a poll;
            synchronized (this.f12960a) {
                poll = this.f12960a.poll();
            }
            C4119a c4119a = poll;
            if (poll == null) {
                c4119a = new C4119a();
            }
            return c4119a;
        }

        /* renamed from: b */
        void m23222b(C4119a c4119a) {
            synchronized (this.f12960a) {
                if (this.f12960a.size() < 10) {
                    this.f12960a.offer(c4119a);
                }
            }
        }
    }

    /* renamed from: a */
    public void m23225a(String str) {
        C4119a c4119a;
        synchronized (this) {
            C4119a c4119a2 = this.f12956a.get(str);
            c4119a = c4119a2;
            if (c4119a2 == null) {
                c4119a = this.f12957b.m23223a();
                this.f12956a.put(str, c4119a);
            }
            c4119a.f12959b++;
        }
        c4119a.f12958a.lock();
    }

    /* renamed from: b */
    public void m23224b(String str) {
        C4119a c4119a;
        synchronized (this) {
            c4119a = (C4119a) C4382j.m22719d(this.f12956a.get(str));
            int i = c4119a.f12959b;
            if (i < 1) {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + c4119a.f12959b);
            }
            int i2 = i - 1;
            c4119a.f12959b = i2;
            if (i2 == 0) {
                C4119a remove = this.f12956a.remove(str);
                if (!remove.equals(c4119a)) {
                    throw new IllegalStateException("Removed the wrong lock, expected to remove: " + c4119a + ", but actually removed: " + remove + ", safeKey: " + str);
                }
                this.f12957b.m23222b(remove);
            }
        }
        c4119a.f12958a.unlock();
    }
}
