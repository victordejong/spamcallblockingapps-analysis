package p193e.p194a.p1129p5.p1137x0;

import p1727n3.p1806j0.AbstractC26410a;
import s1.z.b.l;
/* renamed from: e.a.p5.x0.b */
/* loaded from: classes15-dex2jar.jar:e/a/p5/x0/b.class */
public class C19351b<R, T extends AbstractC26410a> {

    /* renamed from: a */
    public T f53820a;

    /* renamed from: b */
    public final l<R, T> f53821b;

    /* JADX WARN: Multi-variable type inference failed */
    public C19351b(l<? super R, ? extends T> lVar) {
        s1.z.c.l.e(lVar, "viewBinder");
        this.f53821b = lVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [n3.j0.a] */
    /* renamed from: a */
    public T m13418a(R r, s1.a.l<?> lVar) {
        T t;
        s1.z.c.l.e(r, "thisRef");
        s1.z.c.l.e(lVar, "property");
        T t2 = this.f53820a;
        if (t2 != null) {
            t = t2;
        } else {
            t = (AbstractC26410a) this.f53821b.d(r);
            this.f53820a = t;
        }
        return t;
    }
}
