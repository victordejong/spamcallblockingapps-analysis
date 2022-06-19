package p193e.p1451f.p1452a.p1457n.p1460o.p1461b0;

import java.util.ArrayDeque;
import java.util.Queue;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22316l;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.n.o.b0.c */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/b0/c.class */
public abstract class AbstractC22302c<T extends AbstractC22316l> {

    /* renamed from: a */
    public final Queue<T> f61960a = new ArrayDeque(20);

    public AbstractC22302c() {
        char[] cArr = C22623j.f62648a;
    }

    /* renamed from: a */
    public abstract T mo8313a();

    /* renamed from: b */
    public T m8347b() {
        T poll = this.f61960a.poll();
        T t = poll;
        if (poll == null) {
            t = mo8313a();
        }
        return t;
    }

    /* renamed from: c */
    public void m8346c(T t) {
        if (this.f61960a.size() < 20) {
            this.f61960a.offer(t);
        }
    }
}
