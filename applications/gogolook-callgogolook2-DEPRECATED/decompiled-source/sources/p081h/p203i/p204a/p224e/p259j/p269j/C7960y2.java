package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.j.y2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/y2.class */
public final class C7960y2<T> implements AbstractC7849k3<T> {

    /* renamed from: a */
    public final AbstractC7925t2 f18675a;

    /* renamed from: b */
    public final AbstractC7787d4<?, ?> f18676b;

    /* renamed from: c */
    public final boolean f18677c;

    /* renamed from: d */
    public final AbstractC7768b1<?> f18678d;

    public C7960y2(AbstractC7787d4<?, ?> d4Var, AbstractC7768b1<?> b1Var, AbstractC7925t2 t2Var) {
        this.f18676b = d4Var;
        this.f18677c = b1Var.mo19501a(t2Var);
        this.f18678d = b1Var;
        this.f18675a = t2Var;
    }

    /* renamed from: a */
    public static <T> C7960y2<T> m18799a(AbstractC7787d4<?, ?> d4Var, AbstractC7768b1<?> b1Var, AbstractC7925t2 t2Var) {
        return new C7960y2<>(d4Var, b1Var, t2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7849k3
    /* renamed from: a */
    public final int mo18798a(T t) {
        int hashCode = this.f18676b.mo19409d(t).hashCode();
        int i = hashCode;
        if (this.f18677c) {
            i = (hashCode * 53) + this.f18678d.mo19498a(t).hashCode();
        }
        return i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7849k3
    /* renamed from: a */
    public final T mo18800a() {
        return (T) this.f18675a.mo18883b().mo18865K();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7849k3
    /* renamed from: a */
    public final void mo18797a(T t, AbstractC7837j3 j3Var, C7965z0 z0Var) throws IOException {
        boolean z;
        AbstractC7787d4<?, ?> d4Var = this.f18676b;
        AbstractC7768b1<?> b1Var = this.f18678d;
        Object e = d4Var.mo19408e(t);
        C7792e1<?> b = b1Var.mo19495b(t);
        do {
            try {
                if (j3Var.mo19012j() != Integer.MAX_VALUE) {
                    int tag = j3Var.getTag();
                    if (tag == 11) {
                        Object obj = null;
                        AbstractC7791e0 e0Var = null;
                        int i = 0;
                        while (j3Var.mo19012j() != Integer.MAX_VALUE) {
                            int tag2 = j3Var.getTag();
                            if (tag2 == 16) {
                                i = j3Var.mo19014i();
                                obj = b1Var.mo19499a(z0Var, this.f18675a, i);
                            } else if (tag2 == 26) {
                                if (obj == null) {
                                    e0Var = j3Var.mo19018g();
                                } else {
                                    b1Var.mo19503a(j3Var, obj, z0Var, b);
                                    throw null;
                                }
                            } else if (!j3Var.mo19016h()) {
                                break;
                            }
                        }
                        if (j3Var.getTag() == 12) {
                            if (e0Var != null) {
                                if (obj == null) {
                                    d4Var.mo19420a((AbstractC7787d4<?, ?>) e, i, e0Var);
                                } else {
                                    b1Var.mo19504a(e0Var, obj, z0Var, b);
                                    throw null;
                                }
                            }
                            z = true;
                        } else {
                            throw C7924t1.m18889d();
                        }
                    } else if ((tag & 7) == 2) {
                        Object a = b1Var.mo19499a(z0Var, this.f18675a, tag >>> 3);
                        if (a == null) {
                            z = d4Var.m19483a((AbstractC7787d4<?, ?>) e, j3Var);
                        } else {
                            b1Var.mo19503a(j3Var, a, z0Var, b);
                            throw null;
                        }
                    } else {
                        z = j3Var.mo19016h();
                    }
                } else {
                    return;
                }
            } finally {
                d4Var.mo19412b((Object) t, (T) e);
            }
        } while (z);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7849k3
    /* renamed from: a */
    public final void mo18796a(T t, AbstractC7962y4 y4Var) throws IOException {
        Iterator<Map.Entry<?, Object>> e = this.f18678d.mo19498a(t).m19453e();
        while (e.hasNext()) {
            Map.Entry<?, Object> next = e.next();
            AbstractC7809g1 g1Var = (AbstractC7809g1) next.getKey();
            if (g1Var.m19385e0() != EnumC7955x4.MESSAGE || g1Var.m19390Z() || g1Var.m19387a0()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            } else if (next instanceof C7959y1) {
                y4Var.mo18782a(g1Var.m19391F(), (Object) ((C7959y1) next).m18801a().m19517a());
            } else {
                y4Var.mo18782a(g1Var.m19391F(), next.getValue());
            }
        }
        AbstractC7787d4<?, ?> d4Var = this.f18676b;
        d4Var.mo19413b((AbstractC7787d4<?, ?>) d4Var.mo19409d(t), y4Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7849k3
    /* renamed from: a */
    public final boolean mo18795a(T t, T t2) {
        if (!this.f18676b.mo19409d(t).equals(this.f18676b.mo19409d(t2))) {
            return false;
        }
        if (this.f18677c) {
            return this.f18678d.mo19498a(t).equals(this.f18678d.mo19498a(t2));
        }
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7849k3
    /* renamed from: b */
    public final void mo18794b(T t) {
        this.f18676b.mo19423a(t);
        this.f18678d.mo19494c(t);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7849k3
    /* renamed from: b */
    public final void mo18793b(T t, T t2) {
        C7864m3.m19232a(this.f18676b, t, t2);
        if (this.f18677c) {
            C7864m3.m19233a(this.f18678d, t, t2);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7849k3
    /* renamed from: c */
    public final int mo18792c(T t) {
        AbstractC7787d4<?, ?> d4Var = this.f18676b;
        int f = d4Var.mo19407f(d4Var.mo19409d(t)) + 0;
        int i = f;
        if (this.f18677c) {
            i = f + this.f18678d.mo19498a(t).m19450h();
        }
        return i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7849k3
    /* renamed from: d */
    public final boolean mo18791d(T t) {
        return this.f18678d.mo19498a(t).m19454d();
    }
}
