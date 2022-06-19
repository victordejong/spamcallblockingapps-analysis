package p193e.p1545k.p1546a.p1556c;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23384p;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23355g;
import p193e.p1545k.p1546a.p1548b.p1552w.C23403i;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.v */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/v.class */
public class C23951v implements Serializable {

    /* renamed from: d */
    public static final C23951v f66302d = new C23951v("", null);

    /* renamed from: e */
    public static final C23951v f66303e = new C23951v(new String(""), null);

    /* renamed from: a */
    public final String f66304a;

    /* renamed from: b */
    public final String f66305b;

    /* renamed from: c */
    public AbstractC23384p f66306c;

    public C23951v(String str) {
        Annotation[] annotationArr = C23914g.f66156a;
        this.f66304a = str == null ? "" : str;
        this.f66305b = null;
    }

    public C23951v(String str, String str2) {
        Annotation[] annotationArr = C23914g.f66156a;
        this.f66304a = str == null ? "" : str;
        this.f66305b = str2;
    }

    /* renamed from: a */
    public static C23951v m5665a(String str) {
        return (str == null || str.isEmpty()) ? f66302d : new C23951v(C23355g.f64580b.m7244c(str), null);
    }

    /* renamed from: b */
    public static C23951v m5664b(String str, String str2) {
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        return (str2 != null || !str3.isEmpty()) ? new C23951v(C23355g.f64580b.m7244c(str3), str2) : f66302d;
    }

    /* renamed from: c */
    public boolean m5663c() {
        return !this.f66304a.isEmpty();
    }

    /* renamed from: d */
    public C23951v m5662d() {
        String m7244c;
        if (!this.f66304a.isEmpty() && (m7244c = C23355g.f64580b.m7244c(this.f66304a)) != this.f66304a) {
            return new C23951v(m7244c, this.f66305b);
        }
        return this;
    }

    /* renamed from: e */
    public boolean m5661e() {
        return this.f66305b == null && this.f66304a.isEmpty();
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        C23951v c23951v = (C23951v) obj;
        String str = this.f66304a;
        if (str == null) {
            if (c23951v.f66304a != null) {
                return false;
            }
        } else if (!str.equals(c23951v.f66304a)) {
            return false;
        }
        String str2 = this.f66305b;
        if (str2 != null) {
            return str2.equals(c23951v.f66305b);
        }
        if (c23951v.f66305b != null) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public AbstractC23384p m5660f(AbstractC23458k<?> abstractC23458k) {
        AbstractC23384p abstractC23384p = this.f66306c;
        C23403i c23403i = abstractC23384p;
        if (abstractC23384p == null) {
            C23403i c23403i2 = abstractC23458k == null ? new C23403i(this.f66304a) : new C23403i(this.f66304a);
            this.f66306c = c23403i2;
            c23403i = c23403i2;
        }
        return c23403i;
    }

    /* renamed from: g */
    public C23951v m5659g(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2.equals(this.f66304a) ? this : new C23951v(str2, this.f66305b);
    }

    public int hashCode() {
        String str = this.f66305b;
        return str == null ? this.f66304a.hashCode() : str.hashCode() ^ this.f66304a.hashCode();
    }

    public Object readResolve() {
        String str;
        return (this.f66305b != null || ((str = this.f66304a) != null && !"".equals(str))) ? this : f66302d;
    }

    public String toString() {
        if (this.f66305b == null) {
            return this.f66304a;
        }
        StringBuilder m8728C = C22128a.m8728C("{");
        m8728C.append(this.f66305b);
        m8728C.append("}");
        m8728C.append(this.f66304a);
        return m8728C.toString();
    }
}
