package p012b.p076s.p078b.p079a.p110y0;

import p012b.p076s.p078b.p079a.C1240j0;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* renamed from: b.s.b.a.y0.m */
/* loaded from: classes-dex2jar.jar:b/s/b/a/y0/m.class */
public final class C1675m {

    /* renamed from: a */
    public final int f6856a;

    /* renamed from: b */
    public final C1240j0[] f6857b;

    /* renamed from: c */
    public final C1671j f6858c;

    /* renamed from: d */
    public final Object f6859d;

    public C1675m(C1240j0[] j0VarArr, AbstractC1668i[] iVarArr, Object obj) {
        this.f6857b = j0VarArr;
        this.f6858c = new C1671j(iVarArr);
        this.f6859d = obj;
        this.f6856a = j0VarArr.length;
    }

    /* renamed from: a */
    public boolean m32399a(int i) {
        return this.f6857b[i] != null;
    }

    /* renamed from: a */
    public boolean m32398a(C1675m mVar) {
        if (mVar == null || mVar.f6858c.f6851a != this.f6858c.f6851a) {
            return false;
        }
        for (int i = 0; i < this.f6858c.f6851a; i++) {
            if (!m32397a(mVar, i)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public boolean m32397a(C1675m mVar, int i) {
        if (mVar == null) {
            return false;
        }
        boolean z = false;
        if (C1167d0.m34478a(this.f6857b[i], mVar.f6857b[i])) {
            z = false;
            if (C1167d0.m34478a(this.f6858c.m32407a(i), mVar.f6858c.m32407a(i))) {
                z = true;
            }
        }
        return z;
    }
}
