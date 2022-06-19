package p020b.p041h.p049k;
/* renamed from: b.h.k.d */
/* loaded from: classes-dex2jar.jar:b/h/k/d.class */
public class C1593d<F, S> {

    /* renamed from: a */
    public final F f6187a;

    /* renamed from: b */
    public final S f6188b;

    public C1593d(F f, S s) {
        this.f6187a = f;
        this.f6188b = s;
    }

    /* renamed from: a */
    public static <A, B> C1593d<A, B> m29665a(A a, B b) {
        return new C1593d<>(a, b);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C1593d)) {
            return false;
        }
        C1593d c1593d = (C1593d) obj;
        boolean z = false;
        if (C1592c.m29668a(c1593d.f6187a, this.f6187a)) {
            z = false;
            if (C1592c.m29668a(c1593d.f6188b, this.f6188b)) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        F f = this.f6187a;
        int i = 0;
        int hashCode = f == null ? 0 : f.hashCode();
        S s = this.f6188b;
        if (s != null) {
            i = s.hashCode();
        }
        return hashCode ^ i;
    }

    public String toString() {
        return "Pair{" + this.f6187a + " " + this.f6188b + "}";
    }
}
