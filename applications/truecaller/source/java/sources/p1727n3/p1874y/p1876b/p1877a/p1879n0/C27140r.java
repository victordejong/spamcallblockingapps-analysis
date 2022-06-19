package p1727n3.p1874y.p1876b.p1877a.p1879n0;
/* renamed from: n3.y.b.a.n0.r */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/r.class */
public final class C27140r {

    /* renamed from: a */
    public final int f75892a;

    /* renamed from: b */
    public final float f75893b;

    public C27140r(int i, float f) {
        this.f75892a = i;
        this.f75893b = f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C27140r.class != obj.getClass()) {
            return false;
        }
        C27140r c27140r = (C27140r) obj;
        if (this.f75892a != c27140r.f75892a || Float.compare(c27140r.f75893b, this.f75893b) != 0) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.f75893b) + ((527 + this.f75892a) * 31);
    }
}
