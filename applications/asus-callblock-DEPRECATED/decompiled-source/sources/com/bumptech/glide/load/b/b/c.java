package com.bumptech.glide.load.b.b;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/b/c.class */
final class c {

    /* renamed from: a  reason: collision with root package name */
    final Map<com.bumptech.glide.load.c, a> f3506a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    final b f3507b = new b((byte) 0);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/b/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Lock f3508a;

        /* renamed from: b  reason: collision with root package name */
        int f3509b;

        private a() {
            this.f3508a = new ReentrantLock();
        }

        /* synthetic */ a(byte b2) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/b/c$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final Queue<a> f3510a;

        private b() {
            this.f3510a = new ArrayDeque();
        }

        /* synthetic */ b(byte b2) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a a() {
            a poll;
            synchronized (this.f3510a) {
                poll = this.f3510a.poll();
            }
            a aVar = poll;
            if (poll == null) {
                aVar = new a((byte) 0);
            }
            return aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(com.bumptech.glide.load.c cVar) {
        a aVar;
        synchronized (this) {
            aVar = this.f3506a.get(cVar);
            if (aVar == null || aVar.f3509b <= 0) {
                throw new IllegalArgumentException("Cannot release a lock that is not held, key: " + cVar + ", interestedThreads: " + (aVar == null ? 0 : aVar.f3509b));
            }
            int i = aVar.f3509b - 1;
            aVar.f3509b = i;
            if (i == 0) {
                a remove = this.f3506a.remove(cVar);
                if (!remove.equals(aVar)) {
                    throw new IllegalStateException("Removed the wrong lock, expected to remove: " + aVar + ", but actually removed: " + remove + ", key: " + cVar);
                }
                b bVar = this.f3507b;
                synchronized (bVar.f3510a) {
                    if (bVar.f3510a.size() < 10) {
                        bVar.f3510a.offer(remove);
                    }
                }
            }
        }
        aVar.f3508a.unlock();
    }
}
