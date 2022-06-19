package p282x1;
/* renamed from: x1.g */
/* loaded from: classes-dex2jar.jar:x1/g.class */
public class C4817g {

    /* renamed from: a */
    public final String f14816a;

    /* renamed from: b */
    public final int f14817b;

    public C4817g(String str, int i) {
        this.f14816a = str;
        this.f14817b = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4817g)) {
            return false;
        }
        C4817g c4817g = (C4817g) obj;
        if (this.f14817b == c4817g.f14817b) {
            return this.f14816a.equals(c4817g.f14816a);
        }
        return false;
    }

    public int hashCode() {
        return (this.f14816a.hashCode() * 31) + this.f14817b;
    }
}
