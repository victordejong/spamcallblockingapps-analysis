package androidx.recyclerview.widget;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a$b.class */
final class a$b {

    /* renamed from: a */
    int f2329a;

    /* renamed from: b */
    int f2330b;

    /* renamed from: c */
    Object f2331c;

    /* renamed from: d */
    int f2332d;

    a$b(int i, int i2, int i3, Object obj) {
        this.f2329a = i;
        this.f2330b = i2;
        this.f2332d = i3;
        this.f2331c = obj;
    }

    /* renamed from: a */
    String m12442a() {
        int i = this.f2329a;
        return i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a$b)) {
            return false;
        }
        a$b a_b = (a$b) obj;
        int i = this.f2329a;
        if (i != a_b.f2329a) {
            return false;
        }
        if (i == 8 && Math.abs(this.f2332d - this.f2330b) == 1 && this.f2332d == a_b.f2330b && this.f2330b == a_b.f2332d) {
            return true;
        }
        if (this.f2332d != a_b.f2332d || this.f2330b != a_b.f2330b) {
            return false;
        }
        Object obj2 = this.f2331c;
        Object obj3 = a_b.f2331c;
        return obj2 != null ? obj2.equals(obj3) : obj3 == null;
    }

    public int hashCode() {
        return (((this.f2329a * 31) + this.f2330b) * 31) + this.f2332d;
    }

    public String toString() {
        return Integer.toHexString(System.identityHashCode(this)) + "[" + m12442a() + ",s:" + this.f2330b + "c:" + this.f2332d + ",p:" + this.f2331c + "]";
    }
}
