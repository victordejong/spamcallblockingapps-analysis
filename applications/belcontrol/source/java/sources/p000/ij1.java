package p000;
/* renamed from: ij1 */
/* loaded from: classes3-dex2jar.jar:ij1.class */
public final class ij1 implements Comparable<ij1> {

    /* renamed from: f */
    public static final ij1 f6775f = new ij1(1, 3, 61);

    /* renamed from: a */
    public final int f6776a;

    /* renamed from: b */
    public final int f6777b;

    /* renamed from: c */
    public final int f6778c;

    /* renamed from: d */
    public final int f6779d;

    public ij1(int i, int i2, int i3) {
        this.f6777b = i;
        this.f6778c = i2;
        this.f6779d = i3;
        this.f6776a = m1568b(i, i2, i3);
    }

    /* renamed from: a */
    public int compareTo(ij1 ij1Var) {
        qk1.m744c(ij1Var, "other");
        return this.f6776a - ij1Var.f6776a;
    }

    /* renamed from: b */
    public final int m1568b(int i, int i2, int i3) {
        if (i >= 0 && 255 >= i && i2 >= 0 && 255 >= i2 && i3 >= 0 && 255 >= i3) {
            return (i << 16) + (i2 << 8) + i3;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + i + '.' + i2 + '.' + i3).toString());
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        Object obj2 = obj;
        if (!(obj instanceof ij1)) {
            obj2 = null;
        }
        ij1 ij1Var = (ij1) obj2;
        if (ij1Var == null) {
            return false;
        }
        if (this.f6776a != ij1Var.f6776a) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f6776a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f6777b);
        sb.append('.');
        sb.append(this.f6778c);
        sb.append('.');
        sb.append(this.f6779d);
        return sb.toString();
    }
}
