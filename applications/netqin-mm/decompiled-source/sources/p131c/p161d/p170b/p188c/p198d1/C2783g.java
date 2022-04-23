package p131c.p161d.p170b.p188c.p198d1;

import java.util.Arrays;
/* renamed from: c.d.b.c.d1.g */
/* loaded from: classes-dex2jar.jar:c/d/b/c/d1/g.class */
public final class C2783g {

    /* renamed from: a */
    public final int f10133a;

    /* renamed from: b */
    public final AbstractC2780f[] f10134b;

    /* renamed from: c */
    public int f10135c;

    public C2783g(AbstractC2780f... fVarArr) {
        this.f10134b = fVarArr;
        this.f10133a = fVarArr.length;
    }

    /* renamed from: a */
    public AbstractC2780f m29019a(int i) {
        return this.f10134b[i];
    }

    /* renamed from: a */
    public AbstractC2780f[] m29020a() {
        return (AbstractC2780f[]) this.f10134b.clone();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2783g.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f10134b, ((C2783g) obj).f10134b);
    }

    public int hashCode() {
        if (this.f10135c == 0) {
            this.f10135c = 527 + Arrays.hashCode(this.f10134b);
        }
        return this.f10135c;
    }
}
