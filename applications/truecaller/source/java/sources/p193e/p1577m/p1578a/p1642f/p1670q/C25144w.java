package p193e.p1577m.p1578a.p1642f.p1670q;

import com.google.android.gms.tasks.Task;
import java.util.ArrayDeque;
import java.util.Queue;
/* renamed from: e.m.a.f.q.w */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/q/w.class */
public final class C25144w<TResult> {

    /* renamed from: a */
    public final Object f70384a = new Object();

    /* renamed from: b */
    public Queue<AbstractC25143v<TResult>> f70385b;

    /* renamed from: c */
    public boolean f70386c;

    /* renamed from: a */
    public final void m4156a(AbstractC25143v<TResult> abstractC25143v) {
        synchronized (this.f70384a) {
            if (this.f70385b == null) {
                this.f70385b = new ArrayDeque();
            }
            this.f70385b.add(abstractC25143v);
        }
    }

    /* renamed from: b */
    public final void m4155b(Task<TResult> task) {
        AbstractC25143v<TResult> poll;
        synchronized (this.f70384a) {
            if (this.f70385b != null && !this.f70386c) {
                this.f70386c = true;
                while (true) {
                    synchronized (this.f70384a) {
                        poll = this.f70385b.poll();
                        if (poll == null) {
                            this.f70386c = false;
                            return;
                        }
                    }
                    poll.m4157a(task);
                }
            }
        }
    }
}
