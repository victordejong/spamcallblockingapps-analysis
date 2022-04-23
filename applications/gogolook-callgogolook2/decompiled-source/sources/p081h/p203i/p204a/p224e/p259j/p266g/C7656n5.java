package p081h.p203i.p204a.p224e.p259j.p266g;

import java.io.IOException;
/* renamed from: h.i.a.e.j.g.n5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/n5.class */
public final class C7656n5 extends C7683r4<C7656n5> implements Cloneable {

    /* renamed from: e */
    public static volatile C7656n5[] f17980e;

    /* renamed from: c */
    public String f17981c = "";

    /* renamed from: d */
    public String f17982d = "";

    public C7656n5() {
        this.f18023b = null;
        this.f18071a = -1;
    }

    /* renamed from: i */
    public static C7656n5[] m19962i() {
        if (f17980e == null) {
            synchronized (C7711v4.f18051a) {
                if (f17980e == null) {
                    f17980e = new C7656n5[0];
                }
            }
        }
        return f17980e;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7683r4, p081h.p203i.p204a.p224e.p259j.p266g.C7718w4
    /* renamed from: a */
    public final void mo19697a(C7669p4 p4Var) throws IOException {
        String str = this.f17981c;
        if (str != null && !str.equals("")) {
            p4Var.m19850a(1, this.f17981c);
        }
        String str2 = this.f17982d;
        if (str2 != null && !str2.equals("")) {
            p4Var.m19850a(2, this.f17982d);
        }
        super.mo19697a(p4Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7683r4, p081h.p203i.p204a.p224e.p259j.p266g.C7718w4
    /* renamed from: e */
    public final int mo19694e() {
        int e = super.mo19694e();
        String str = this.f17981c;
        int i = e;
        if (str != null) {
            i = e;
            if (!str.equals("")) {
                i = e + C7669p4.m19837b(1, this.f17981c);
            }
        }
        String str2 = this.f17982d;
        int i2 = i;
        if (str2 != null) {
            i2 = i;
            if (!str2.equals("")) {
                i2 = i + C7669p4.m19837b(2, this.f17982d);
            }
        }
        return i2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7656n5)) {
            return false;
        }
        C7656n5 n5Var = (C7656n5) obj;
        String str = this.f17981c;
        if (str == null) {
            if (n5Var.f17981c != null) {
                return false;
            }
        } else if (!str.equals(n5Var.f17981c)) {
            return false;
        }
        String str2 = this.f17982d;
        if (str2 == null) {
            if (n5Var.f17982d != null) {
                return false;
            }
        } else if (!str2.equals(n5Var.f17982d)) {
            return false;
        }
        C7697t4 t4Var = this.f18023b;
        if (t4Var != null && !t4Var.m19790d()) {
            return this.f18023b.equals(n5Var.f18023b);
        }
        C7697t4 t4Var2 = n5Var.f18023b;
        return t4Var2 == null || t4Var2.m19790d();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7683r4, p081h.p203i.p204a.p224e.p259j.p266g.C7718w4
    /* renamed from: f */
    public final /* synthetic */ C7718w4 mo19693f() throws CloneNotSupportedException {
        return (C7656n5) clone();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7683r4
    /* renamed from: g */
    public final /* synthetic */ C7656n5 mo19812g() throws CloneNotSupportedException {
        return (C7656n5) clone();
    }

    /* renamed from: h */
    public final C7656n5 clone() {
        try {
            return (C7656n5) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final int hashCode() {
        int hashCode = C7656n5.class.getName().hashCode();
        String str = this.f17981c;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.f17982d;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        C7697t4 t4Var = this.f18023b;
        int i = 0;
        if (t4Var != null) {
            i = t4Var.m19790d() ? 0 : this.f18023b.hashCode();
        }
        return ((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }
}
