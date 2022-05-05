package p081h.p119d.p120a.p149y;
/* renamed from: h.d.a.y.g */
/* loaded from: classes-dex2jar.jar:h/d/a/y/g.class */
public class C6095g {

    /* renamed from: a */
    public Class<?> f15152a;

    /* renamed from: b */
    public Class<?> f15153b;

    public C6095g() {
    }

    public C6095g(Class<?> cls, Class<?> cls2) {
        m23866a(cls, cls2);
    }

    /* renamed from: a */
    public void m23866a(Class<?> cls, Class<?> cls2) {
        this.f15152a = cls;
        this.f15153b = cls2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C6095g.class != obj.getClass()) {
            return false;
        }
        C6095g gVar = (C6095g) obj;
        return this.f15152a.equals(gVar.f15152a) && this.f15153b.equals(gVar.f15153b);
    }

    public int hashCode() {
        return (this.f15152a.hashCode() * 31) + this.f15153b.hashCode();
    }

    public String toString() {
        return "MultiClassKey{first=" + this.f15152a + ", second=" + this.f15153b + '}';
    }
}
