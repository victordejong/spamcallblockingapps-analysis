package p193e.p1577m.p1578a.p1596c.p1598c1;
/* renamed from: e.m.a.c.c1.q */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/q.class */
public final class C24227q {

    /* renamed from: a */
    public final int f67065a;

    /* renamed from: b */
    public final float f67066b;

    public C24227q(int i, float f) {
        this.f67065a = i;
        this.f67066b = f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C24227q.class != obj.getClass()) {
            return false;
        }
        C24227q c24227q = (C24227q) obj;
        if (this.f67065a != c24227q.f67065a || Float.compare(c24227q.f67066b, this.f67066b) != 0) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.f67066b) + ((527 + this.f67065a) * 31);
    }
}
