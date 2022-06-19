package p193e.p1545k.p1546a.p1556c.p1567j0;

import java.io.IOException;
import p193e.p1545k.p1546a.p1547a.AbstractC23295e0;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
/* renamed from: e.k.a.c.j0.e */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/j0/e.class */
public abstract class AbstractC23709e {
    /* renamed from: a */
    public static Object m6217a(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23698i abstractC23698i) throws IOException {
        Class<?> cls = abstractC23698i.f65728a;
        EnumC23381m mo7142l = abstractC23376j.mo7142l();
        Comparable comparable = null;
        if (mo7142l != null) {
            switch (mo7142l.ordinal()) {
                case 7:
                    if (cls.isAssignableFrom(String.class)) {
                        comparable = abstractC23376j.mo5817U0();
                        break;
                    }
                    break;
                case 8:
                    if (cls.isAssignableFrom(Integer.class)) {
                        comparable = Integer.valueOf(abstractC23376j.mo5800z0());
                        break;
                    }
                    break;
                case 9:
                    if (cls.isAssignableFrom(Double.class)) {
                        comparable = Double.valueOf(abstractC23376j.mo5805n0());
                        break;
                    }
                    break;
                case 10:
                    if (cls.isAssignableFrom(Boolean.class)) {
                        comparable = Boolean.TRUE;
                        break;
                    }
                    break;
                case 11:
                    if (cls.isAssignableFrom(Boolean.class)) {
                        comparable = Boolean.FALSE;
                        break;
                    }
                    break;
            }
        }
        return comparable;
    }

    /* renamed from: b */
    public abstract Object mo6208b(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException;

    /* renamed from: c */
    public abstract Object mo6207c(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException;

    /* renamed from: d */
    public abstract Object mo6206d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException;

    /* renamed from: e */
    public abstract Object mo6205e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException;

    /* renamed from: f */
    public abstract AbstractC23709e mo6204f(AbstractC23462d abstractC23462d);

    /* renamed from: g */
    public abstract Class<?> mo6180g();

    /* renamed from: h */
    public abstract String mo6179h();

    /* renamed from: i */
    public abstract AbstractC23710f mo6178i();

    /* renamed from: j */
    public abstract AbstractC23295e0.EnumC23296a mo6203j();

    /* renamed from: k */
    public boolean mo6177k() {
        return mo6180g() != null;
    }
}
