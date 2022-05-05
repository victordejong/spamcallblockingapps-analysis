package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.r6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/r6.class */
public abstract class AbstractC8722r6<T, B> {
    /* renamed from: a */
    public abstract B mo17146a();

    /* renamed from: a */
    public abstract T mo17144a(B b);

    /* renamed from: a */
    public abstract void mo17143a(B b, int i, int i2);

    /* renamed from: a */
    public abstract void mo17142a(B b, int i, long j);

    /* renamed from: a */
    public abstract void mo17141a(B b, int i, AbstractC8736t2 t2Var);

    /* renamed from: a */
    public abstract void mo17140a(B b, int i, T t);

    /* renamed from: a */
    public abstract void mo17139a(T t, AbstractC8677m7 m7Var) throws IOException;

    /* renamed from: a */
    public abstract void mo17137a(Object obj, T t);

    /* renamed from: a */
    public abstract boolean mo17145a(AbstractC8788y5 y5Var);

    /* renamed from: a */
    public final boolean m17213a(B b, AbstractC8788y5 y5Var) throws IOException {
        int tag = y5Var.getTag();
        int i = tag >>> 3;
        int i2 = tag & 7;
        if (i2 == 0) {
            mo17142a((AbstractC8722r6<T, B>) b, i, y5Var.mo16966l());
            return true;
        } else if (i2 == 1) {
            mo17135b(b, i, y5Var.mo16970j());
            return true;
        } else if (i2 == 2) {
            mo17141a((AbstractC8722r6<T, B>) b, i, y5Var.mo16962n());
            return true;
        } else if (i2 == 3) {
            B a = mo17146a();
            while (y5Var.mo16982d() != Integer.MAX_VALUE && m17213a((AbstractC8722r6<T, B>) a, y5Var)) {
            }
            if ((4 | (i << 3)) == y5Var.getTag()) {
                mo17140a((AbstractC8722r6<T, B>) b, i, (int) mo17144a((AbstractC8722r6<T, B>) a));
                return true;
            }
            throw C8647j4.m17440d();
        } else if (i2 == 4) {
            return false;
        } else {
            if (i2 == 5) {
                mo17143a((AbstractC8722r6<T, B>) b, i, y5Var.mo16958p());
                return true;
            }
            throw C8647j4.m17439e();
        }
    }

    /* renamed from: b */
    public abstract int mo17136b(T t);

    /* renamed from: b */
    public abstract void mo17135b(B b, int i, long j);

    /* renamed from: b */
    public abstract void mo17134b(T t, AbstractC8677m7 m7Var) throws IOException;

    /* renamed from: b */
    public abstract void mo17133b(Object obj, B b);

    /* renamed from: c */
    public abstract T mo17132c(Object obj);

    /* renamed from: c */
    public abstract T mo17131c(T t, T t2);

    /* renamed from: d */
    public abstract B mo17130d(Object obj);

    /* renamed from: e */
    public abstract int mo17129e(T t);

    /* renamed from: f */
    public abstract void mo17128f(Object obj);
}
