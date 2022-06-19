package p1727n3.p1868v;

import java.util.ArrayDeque;
import java.util.Queue;
/* renamed from: n3.v.k */
/* loaded from: classes-dex2jar.jar:n3/v/k.class */
public final class C27009k {

    /* renamed from: b */
    public boolean f75538b;

    /* renamed from: c */
    public boolean f75539c;

    /* renamed from: a */
    public boolean f75537a = true;

    /* renamed from: d */
    public final Queue<Runnable> f75540d = new ArrayDeque();

    /* renamed from: a */
    public final boolean m1004a() {
        return this.f75538b || !this.f75537a;
    }

    /* renamed from: b */
    public final void m1003b() {
        if (this.f75539c) {
            return;
        }
        try {
            this.f75539c = true;
            while ((!this.f75540d.isEmpty()) && m1004a()) {
                Runnable poll = this.f75540d.poll();
                if (poll != null) {
                    poll.run();
                }
            }
        } finally {
            this.f75539c = false;
        }
    }

    /* renamed from: c */
    public final void m1002c(Runnable runnable) {
        if (this.f75540d.offer(runnable)) {
            m1003b();
            return;
        }
        throw new IllegalStateException("cannot enqueue any more runnables".toString());
    }
}
