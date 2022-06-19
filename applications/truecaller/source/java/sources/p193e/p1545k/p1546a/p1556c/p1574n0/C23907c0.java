package p193e.p1545k.p1546a.p1556c.p1574n0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
/* renamed from: e.k.a.c.n0.c0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/c0.class */
public class C23907c0 {

    /* renamed from: a */
    public int f66145a;

    /* renamed from: b */
    public Class<?> f66146b;

    /* renamed from: c */
    public AbstractC23698i f66147c;

    /* renamed from: d */
    public boolean f66148d;

    public C23907c0() {
    }

    public C23907c0(AbstractC23698i abstractC23698i, boolean z) {
        this.f66147c = abstractC23698i;
        this.f66146b = null;
        this.f66148d = z;
        this.f66145a = z ? abstractC23698i.f65729b - 2 : abstractC23698i.f65729b - 1;
    }

    public C23907c0(Class<?> cls, boolean z) {
        this.f66146b = cls;
        this.f66147c = null;
        this.f66148d = z;
        this.f66145a = z ? cls.getName().hashCode() + 1 : cls.getName().hashCode();
    }

    public final boolean equals(Object obj) {
        boolean z = false;
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj.getClass() != C23907c0.class) {
            return false;
        }
        C23907c0 c23907c0 = (C23907c0) obj;
        if (c23907c0.f66148d != this.f66148d) {
            return false;
        }
        Class<?> cls = this.f66146b;
        if (cls == null) {
            return this.f66147c.equals(c23907c0.f66147c);
        }
        if (c23907c0.f66146b == cls) {
            z = true;
        }
        return z;
    }

    public final int hashCode() {
        return this.f66145a;
    }

    public final String toString() {
        if (this.f66146b != null) {
            StringBuilder m8728C = C22128a.m8728C("{class: ");
            C22128a.m8545z0(this.f66146b, m8728C, ", typed? ");
            return C22128a.m8590o(m8728C, this.f66148d, "}");
        }
        StringBuilder m8728C2 = C22128a.m8728C("{type: ");
        m8728C2.append(this.f66147c);
        m8728C2.append(", typed? ");
        return C22128a.m8590o(m8728C2, this.f66148d, "}");
    }
}
