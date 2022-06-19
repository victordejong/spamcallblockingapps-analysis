package p193e.p1432d.p1436b.p1437a.p1438b;

import java.util.Vector;
/* renamed from: e.d.b.a.b.j */
/* loaded from: classes-dex2jar.jar:e/d/b/a/b/j.class */
public class C22115j {

    /* renamed from: a */
    public final Vector<C22124o> f61429a = new Vector<>();

    /* renamed from: a */
    public C22124o m8789a(int i) {
        return this.f61429a.get(i);
    }

    /* renamed from: b */
    public int m8788b() {
        return this.f61429a.size();
    }

    /* renamed from: c */
    public int m8787c() {
        int i = 0;
        for (int size = this.f61429a.size() - 1; size >= 0; size--) {
            i += this.f61429a.get(size).f61461d;
        }
        return i;
    }
}
