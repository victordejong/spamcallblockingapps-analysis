package androidx.work.impl.p055b;
/* renamed from: androidx.work.impl.b.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/b/g.class */
public class C1176g {

    /* renamed from: a */
    public final String f3990a;

    /* renamed from: b */
    public final int f3991b;

    public C1176g(String str, int i) {
        this.f3990a = str;
        this.f3991b = i;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else {
            z = false;
            if (obj instanceof C1176g) {
                C1176g c1176g = (C1176g) obj;
                z = false;
                if (this.f3991b == c1176g.f3991b) {
                    z = this.f3990a.equals(c1176g.f3990a);
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return (this.f3990a.hashCode() * 31) + this.f3991b;
    }
}
