package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
/* renamed from: h.i.a.e.j.j.d4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/d4.class */
public abstract class AbstractC7787d4<T, B> {
    /* renamed from: a */
    public abstract B mo19425a();

    /* renamed from: a */
    public abstract void mo19423a(Object obj);

    /* renamed from: a */
    public abstract void mo19422a(B b, int i, int i2);

    /* renamed from: a */
    public abstract void mo19421a(B b, int i, long j);

    /* renamed from: a */
    public abstract void mo19420a(B b, int i, AbstractC7791e0 e0Var);

    /* renamed from: a */
    public abstract void mo19419a(B b, int i, T t);

    /* renamed from: a */
    public abstract void mo19417a(T t, AbstractC7962y4 y4Var) throws IOException;

    /* renamed from: a */
    public abstract void mo19416a(Object obj, T t);

    /* renamed from: a */
    public abstract boolean mo19424a(AbstractC7837j3 j3Var);

    /* renamed from: a */
    public final boolean m19483a(B b, AbstractC7837j3 j3Var) throws IOException {
        int tag = j3Var.getTag();
        int i = tag >>> 3;
        int i2 = tag & 7;
        if (i2 == 0) {
            mo19421a((AbstractC7787d4<T, B>) b, i, j3Var.mo19006m());
            return true;
        } else if (i2 == 1) {
            mo19414b(b, i, j3Var.mo18997z());
            return true;
        } else if (i2 == 2) {
            mo19420a((AbstractC7787d4<T, B>) b, i, j3Var.mo19018g());
            return true;
        } else if (i2 == 3) {
            B a = mo19425a();
            while (j3Var.mo19012j() != Integer.MAX_VALUE && m19483a((AbstractC7787d4<T, B>) a, j3Var)) {
            }
            if ((4 | (i << 3)) == j3Var.getTag()) {
                mo19419a((AbstractC7787d4<T, B>) b, i, (int) mo19415b(a));
                return true;
            }
            throw C7924t1.m18889d();
        } else if (i2 == 4) {
            return false;
        } else {
            if (i2 == 5) {
                mo19422a((AbstractC7787d4<T, B>) b, i, j3Var.mo19022e());
                return true;
            }
            throw C7924t1.m18888e();
        }
    }

    /* renamed from: b */
    public abstract T mo19415b(B b);

    /* renamed from: b */
    public abstract void mo19414b(B b, int i, long j);

    /* renamed from: b */
    public abstract void mo19413b(T t, AbstractC7962y4 y4Var) throws IOException;

    /* renamed from: b */
    public abstract void mo19412b(Object obj, B b);

    /* renamed from: c */
    public abstract int mo19411c(T t);

    /* renamed from: c */
    public abstract T mo19410c(T t, T t2);

    /* renamed from: d */
    public abstract T mo19409d(Object obj);

    /* renamed from: e */
    public abstract B mo19408e(Object obj);

    /* renamed from: f */
    public abstract int mo19407f(T t);
}
