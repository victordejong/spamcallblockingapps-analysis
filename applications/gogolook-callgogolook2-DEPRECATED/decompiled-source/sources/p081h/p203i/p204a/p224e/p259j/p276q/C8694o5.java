package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.q.o5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/o5.class */
public final class C8694o5<T> implements AbstractC8797z5<T> {

    /* renamed from: a */
    public final AbstractC8648j5 f19908a;

    /* renamed from: b */
    public final AbstractC8722r6<?, ?> f19909b;

    /* renamed from: c */
    public final boolean f19910c;

    /* renamed from: d */
    public final AbstractC8710q3<?> f19911d;

    public C8694o5(AbstractC8722r6<?, ?> r6Var, AbstractC8710q3<?> q3Var, AbstractC8648j5 j5Var) {
        this.f19909b = r6Var;
        this.f19910c = q3Var.mo17229a(j5Var);
        this.f19911d = q3Var;
        this.f19908a = j5Var;
    }

    /* renamed from: a */
    public static <T> C8694o5<T> m17277a(AbstractC8722r6<?, ?> r6Var, AbstractC8710q3<?> q3Var, AbstractC8648j5 j5Var) {
        return new C8694o5<>(r6Var, q3Var, j5Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8797z5
    /* renamed from: a */
    public final int mo16942a(T t) {
        int hashCode = this.f19909b.mo17132c(t).hashCode();
        int i = hashCode;
        if (this.f19910c) {
            i = (hashCode * 53) + this.f19911d.mo17223a(t).hashCode();
        }
        return i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8797z5
    /* renamed from: a */
    public final T mo16943a() {
        return (T) this.f19908a.mo17433c().mo17428L();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8797z5
    /* renamed from: a */
    public final void mo16941a(T t, AbstractC8677m7 m7Var) throws IOException {
        Iterator<Map.Entry<?, Object>> e = this.f19911d.mo17223a(t).m17152e();
        while (e.hasNext()) {
            Map.Entry<?, Object> next = e.next();
            AbstractC8755v3 v3Var = (AbstractC8755v3) next.getKey();
            if (v3Var.m17104U() != EnumC8668l7.MESSAGE || v3Var.m17103V() || v3Var.m17106B()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            } else if (next instanceof C8693o4) {
                m7Var.mo17379a(v3Var.m17105C(), (Object) ((C8693o4) next).m17278a().m17218a());
            } else {
                m7Var.mo17379a(v3Var.m17105C(), next.getValue());
            }
        }
        AbstractC8722r6<?, ?> r6Var = this.f19909b;
        r6Var.mo17134b((AbstractC8722r6<?, ?>) r6Var.mo17132c(t), m7Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8797z5
    /* renamed from: a */
    public final void mo16940a(T t, AbstractC8788y5 y5Var, C8691o3 o3Var) throws IOException {
        boolean z;
        AbstractC8722r6<?, ?> r6Var = this.f19909b;
        AbstractC8710q3<?> q3Var = this.f19911d;
        Object d = r6Var.mo17130d(t);
        C8737t3<?> b = q3Var.mo17220b(t);
        do {
            try {
                if (y5Var.mo16982d() != Integer.MAX_VALUE) {
                    int tag = y5Var.getTag();
                    if (tag == 11) {
                        Object obj = null;
                        AbstractC8736t2 t2Var = null;
                        int i = 0;
                        while (y5Var.mo16982d() != Integer.MAX_VALUE) {
                            int tag2 = y5Var.getTag();
                            if (tag2 == 16) {
                                i = y5Var.mo16974h();
                                obj = q3Var.mo17227a(o3Var, this.f19908a, i);
                            } else if (tag2 == 26) {
                                if (obj == null) {
                                    t2Var = y5Var.mo16962n();
                                } else {
                                    q3Var.mo17225a(y5Var, obj, o3Var, b);
                                    throw null;
                                }
                            } else if (!y5Var.mo16992a()) {
                                break;
                            }
                        }
                        if (y5Var.getTag() == 12) {
                            if (t2Var != null) {
                                if (obj == null) {
                                    r6Var.mo17141a((AbstractC8722r6<?, ?>) d, i, t2Var);
                                } else {
                                    q3Var.mo17226a(t2Var, obj, o3Var, b);
                                    throw null;
                                }
                            }
                            z = true;
                        } else {
                            throw C8647j4.m17440d();
                        }
                    } else if ((tag & 7) == 2) {
                        Object a = q3Var.mo17227a(o3Var, this.f19908a, tag >>> 3);
                        if (a == null) {
                            z = r6Var.m17213a((AbstractC8722r6<?, ?>) d, y5Var);
                        } else {
                            q3Var.mo17225a(y5Var, a, o3Var, b);
                            throw null;
                        }
                    } else {
                        z = y5Var.mo16992a();
                    }
                } else {
                    return;
                }
            } finally {
                r6Var.mo17133b((Object) t, (T) d);
            }
        } while (z);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8797z5
    /* renamed from: a */
    public final boolean mo16939a(T t, T t2) {
        if (!this.f19909b.mo17132c(t).equals(this.f19909b.mo17132c(t2))) {
            return false;
        }
        if (this.f19910c) {
            return this.f19911d.mo17223a(t).equals(this.f19911d.mo17223a(t2));
        }
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8797z5
    /* renamed from: b */
    public final void mo16937b(T t, T t2) {
        C8561b6.m17812a(this.f19909b, t, t2);
        if (this.f19910c) {
            C8561b6.m17813a(this.f19911d, t, t2);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8797z5
    /* renamed from: b */
    public final boolean mo16938b(T t) {
        return this.f19911d.mo17223a(t).m17153d();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8797z5
    /* renamed from: c */
    public final void mo16936c(T t) {
        this.f19909b.mo17128f(t);
        this.f19911d.mo17219c(t);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8797z5
    /* renamed from: d */
    public final int mo16935d(T t) {
        AbstractC8722r6<?, ?> r6Var = this.f19909b;
        int e = r6Var.mo17129e(r6Var.mo17132c(t)) + 0;
        int i = e;
        if (this.f19910c) {
            i = e + this.f19911d.mo17223a(t).m17149h();
        }
        return i;
    }
}
