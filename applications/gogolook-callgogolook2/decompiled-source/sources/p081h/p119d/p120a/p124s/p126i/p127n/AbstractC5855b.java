package p081h.p119d.p120a.p124s.p126i.p127n;

import java.util.Queue;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5865h;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.s.i.n.b */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/n/b.class */
public abstract class AbstractC5855b<T extends AbstractC5865h> {

    /* renamed from: a */
    public final Queue<T> f14767a = C6096h.m23864a(20);

    /* renamed from: a */
    public abstract T mo24196a();

    /* renamed from: a */
    public void m24236a(T t) {
        if (this.f14767a.size() < 20) {
            this.f14767a.offer(t);
        }
    }

    /* renamed from: b */
    public T m24235b() {
        T poll = this.f14767a.poll();
        T t = poll;
        if (poll == null) {
            t = mo24196a();
        }
        return t;
    }
}
