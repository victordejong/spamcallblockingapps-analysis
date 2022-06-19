package androidx.core.p025g;
/* renamed from: androidx.core.g.d */
/* loaded from: classes-dex2jar.jar:androidx/core/g/d.class */
public class C0522d<F, S> {

    /* renamed from: a */
    public final F f1954a;

    /* renamed from: b */
    public final S f1955b;

    public boolean equals(Object obj) {
        boolean z;
        if (!(obj instanceof C0522d)) {
            z = false;
        } else {
            C0522d c0522d = (C0522d) obj;
            z = false;
            if (C0521c.m20648a(c0522d.f1954a, this.f1954a)) {
                z = false;
                if (C0521c.m20648a(c0522d.f1955b, this.f1955b)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.f1954a == null ? 0 : this.f1954a.hashCode();
        if (this.f1955b != null) {
            i = this.f1955b.hashCode();
        }
        return hashCode ^ i;
    }

    public String toString() {
        return "Pair{" + String.valueOf(this.f1954a) + " " + String.valueOf(this.f1955b) + "}";
    }
}
