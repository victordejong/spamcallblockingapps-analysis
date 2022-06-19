package p1727n3.p1834m0.p1835c0.p1844s;
/* renamed from: n3.m0.c0.s.g */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/s/g.class */
public class C26748g {

    /* renamed from: a */
    public final String f74885a;

    /* renamed from: b */
    public final int f74886b;

    public C26748g(String str, int i) {
        this.f74885a = str;
        this.f74886b = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C26748g)) {
            return false;
        }
        C26748g c26748g = (C26748g) obj;
        if (this.f74886b == c26748g.f74886b) {
            return this.f74885a.equals(c26748g.f74885a);
        }
        return false;
    }

    public int hashCode() {
        return (this.f74885a.hashCode() * 31) + this.f74886b;
    }
}
