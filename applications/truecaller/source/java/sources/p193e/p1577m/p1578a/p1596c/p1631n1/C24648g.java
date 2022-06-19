package p193e.p1577m.p1578a.p1596c.p1631n1;

import java.util.Arrays;
/* renamed from: e.m.a.c.n1.g */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/n1/g.class */
public final class C24648g {

    /* renamed from: a */
    public final int f69026a;

    /* renamed from: b */
    public final AbstractC24645f[] f69027b;

    /* renamed from: c */
    public int f69028c;

    public C24648g(AbstractC24645f... abstractC24645fArr) {
        this.f69027b = abstractC24645fArr;
        this.f69026a = abstractC24645fArr.length;
    }

    /* renamed from: a */
    public AbstractC24645f[] m4793a() {
        return (AbstractC24645f[]) this.f69027b.clone();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C24648g.class == obj.getClass()) {
            return Arrays.equals(this.f69027b, ((C24648g) obj).f69027b);
        }
        return false;
    }

    public int hashCode() {
        if (this.f69028c == 0) {
            this.f69028c = 527 + Arrays.hashCode(this.f69027b);
        }
        return this.f69028c;
    }
}
