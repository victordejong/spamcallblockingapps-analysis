package androidx.work.impl.p018n;
/* renamed from: androidx.work.impl.n.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/n/g.class */
public class C1329g {

    /* renamed from: a */
    public final String f5555a;

    /* renamed from: b */
    public final int f5556b;

    public C1329g(String str, int i) {
        this.f5555a = str;
        this.f5556b = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1329g)) {
            return false;
        }
        C1329g c1329g = (C1329g) obj;
        if (this.f5556b == c1329g.f5556b) {
            return this.f5555a.equals(c1329g.f5555a);
        }
        return false;
    }

    public int hashCode() {
        return (this.f5555a.hashCode() * 31) + this.f5556b;
    }
}
