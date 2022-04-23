package com.bumptech.glide.load.engine.b;

import com.bumptech.glide.g.j;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/c.class */
final class c {

    /* renamed from: a  reason: collision with root package name */
    final Map<String, a> f7474a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    final b f7475b = new b();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/c$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Lock f7476a = new ReentrantLock();

        /* renamed from: b  reason: collision with root package name */
        int f7477b;

        a() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/c$b.class */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        final Queue<a> f7478a = new ArrayDeque();

        b() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a a() {
            a poll;
            synchronized (this.f7478a) {
                poll = this.f7478a.poll();
            }
            a aVar = poll;
            if (poll == null) {
                aVar = new a();
            }
            return aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        a aVar;
        synchronized (this) {
            aVar = (a) j.a(this.f7474a.get(str), "Argument must not be null");
            if (aVar.f7477b > 0) {
                aVar.f7477b--;
                if (aVar.f7477b == 0) {
                    a remove = this.f7474a.remove(str);
                    if (remove.equals(aVar)) {
                        b bVar = this.f7475b;
                        synchronized (bVar.f7478a) {
                            if (bVar.f7478a.size() < 10) {
                                bVar.f7478a.offer(remove);
                            }
                        }
                    } else {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + aVar + ", but actually removed: " + remove + ", safeKey: " + str);
                    }
                }
            } else {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + aVar.f7477b);
            }
        }
        aVar.f7476a.unlock();
    }
}
