package p1727n3.p1874y.p1876b.p1877a.p1895t0;
/* renamed from: n3.y.b.a.t0.f0$f */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/f0$f.class */
public final class f0$f {

    /* renamed from: a */
    public final int f76921a;

    /* renamed from: b */
    public final boolean f76922b;

    public f0$f(int i, boolean z) {
        this.f76921a = i;
        this.f76922b = z;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || f0$f.class != obj.getClass()) {
            return false;
        }
        f0$f f0_f = (f0$f) obj;
        if (this.f76921a != f0_f.f76921a || this.f76922b != f0_f.f76922b) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (this.f76921a * 31) + (this.f76922b ? 1 : 0);
    }
}
