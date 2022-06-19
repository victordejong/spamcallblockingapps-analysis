package p1727n3.p1874y.p1876b.p1877a.p1902v0;

import java.util.Arrays;
/* renamed from: n3.y.b.a.v0.f */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/v0/f.class */
public final class C27386f {

    /* renamed from: a */
    public final int f77090a;

    /* renamed from: b */
    public final AbstractC27383e[] f77091b;

    /* renamed from: c */
    public int f77092c;

    public C27386f(AbstractC27383e... abstractC27383eArr) {
        this.f77091b = abstractC27383eArr;
        this.f77090a = abstractC27383eArr.length;
    }

    /* renamed from: a */
    public AbstractC27383e[] m416a() {
        return (AbstractC27383e[]) this.f77091b.clone();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C27386f.class == obj.getClass()) {
            return Arrays.equals(this.f77091b, ((C27386f) obj).f77091b);
        }
        return false;
    }

    public int hashCode() {
        if (this.f77092c == 0) {
            this.f77092c = 527 + Arrays.hashCode(this.f77091b);
        }
        return this.f77092c;
    }
}
