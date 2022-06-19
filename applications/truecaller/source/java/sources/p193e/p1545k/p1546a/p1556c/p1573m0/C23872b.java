package p193e.p1545k.p1546a.p1556c.p1573m0;

import java.io.Serializable;
/* renamed from: e.k.a.c.m0.b */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/m0/b.class */
public final class C23872b implements Comparable<C23872b>, Serializable {

    /* renamed from: a */
    public String f66021a;

    /* renamed from: b */
    public Class<?> f66022b;

    /* renamed from: c */
    public int f66023c;

    public C23872b() {
        this.f66022b = null;
        this.f66021a = null;
        this.f66023c = 0;
    }

    public C23872b(Class<?> cls) {
        this.f66022b = cls;
        String name = cls.getName();
        this.f66021a = name;
        this.f66023c = name.hashCode();
    }

    @Override // java.lang.Comparable
    public int compareTo(C23872b c23872b) {
        return this.f66021a.compareTo(c23872b.f66021a);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != C23872b.class) {
            return false;
        }
        if (((C23872b) obj).f66022b != this.f66022b) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f66023c;
    }

    public String toString() {
        return this.f66021a;
    }
}
