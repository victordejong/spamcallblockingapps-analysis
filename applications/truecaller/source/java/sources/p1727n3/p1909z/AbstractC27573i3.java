package p1727n3.p1909z;

import s1.z.c.f;
/* renamed from: n3.z.i3 */
/* loaded from: classes-dex2jar.jar:n3/z/i3.class */
public abstract class AbstractC27573i3 {

    /* renamed from: a */
    public final int f77697a;

    /* renamed from: b */
    public final int f77698b;

    /* renamed from: c */
    public final int f77699c;

    /* renamed from: d */
    public final int f77700d;

    public AbstractC27573i3(int i, int i2, int i3, int i4, f fVar) {
        this.f77697a = i;
        this.f77698b = i2;
        this.f77699c = i3;
        this.f77700d = i4;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractC27573i3)) {
            return false;
        }
        AbstractC27573i3 abstractC27573i3 = (AbstractC27573i3) obj;
        if (this.f77697a != abstractC27573i3.f77697a || this.f77698b != abstractC27573i3.f77698b || this.f77699c != abstractC27573i3.f77699c || this.f77700d != abstractC27573i3.f77700d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f77697a + this.f77698b + this.f77699c + this.f77700d;
    }
}
