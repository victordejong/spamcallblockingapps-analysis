package p193e.p1512i.p1516b.p1537z1;

import java.util.List;
/* renamed from: e.i.b.z1.t */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/t.class */
public class C23201t<T> implements AbstractC23202u<T> {

    /* renamed from: a */
    public final AbstractC23202u<T> f64243a;

    /* renamed from: b */
    public final Object f64244b = new Object();

    /* renamed from: c */
    public final AbstractC23188h<T> f64245c;

    public C23201t(AbstractC23202u<T> abstractC23202u, AbstractC23188h<T> abstractC23188h) {
        this.f64243a = abstractC23202u;
        this.f64245c = abstractC23188h;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23202u
    /* renamed from: a */
    public int mo7390a() {
        return this.f64243a.mo7390a();
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23202u
    /* renamed from: a */
    public List<T> mo7389a(int i) {
        List<T> mo7389a;
        synchronized (this.f64244b) {
            mo7389a = this.f64243a.mo7389a(i);
        }
        return mo7389a;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23202u
    /* renamed from: a */
    public boolean mo7388a(T t) {
        boolean mo7388a;
        synchronized (this.f64244b) {
            if (mo7390a() >= this.f64245c.mo7417c()) {
                this.f64243a.mo7389a(1);
            }
            mo7388a = this.f64243a.mo7388a((AbstractC23202u<T>) t);
        }
        return mo7388a;
    }
}
