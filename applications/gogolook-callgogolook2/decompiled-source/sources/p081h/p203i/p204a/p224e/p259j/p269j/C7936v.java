package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
/* renamed from: h.i.a.e.j.j.v */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/v.class */
public final class C7936v extends AbstractC7788d5<C7936v> {

    /* renamed from: e */
    public static volatile C7936v[] f18613e;

    /* renamed from: c */
    public String f18614c = null;

    /* renamed from: d */
    public String f18615d = null;

    public C7936v() {
        this.f18218b = null;
        this.f18376a = -1;
    }

    /* renamed from: d */
    public static C7936v[] m18859d() {
        if (f18613e == null) {
            synchronized (C7822h5.f18340b) {
                if (f18613e == null) {
                    f18613e = new C7936v[0];
                }
            }
        }
        return f18613e;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final int mo18862a() {
        int a = super.mo18862a();
        String str = this.f18614c;
        int i = a;
        if (str != null) {
            i = a + C7764a5.m19528b(1, str);
        }
        String str2 = this.f18615d;
        int i2 = i;
        if (str2 != null) {
            i2 = i + C7764a5.m19528b(2, str2);
        }
        return i2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final /* synthetic */ AbstractC7843j5 mo18860a(C7970z4 z4Var) throws IOException {
        while (true) {
            int c = z4Var.m18726c();
            if (c == 0) {
                return this;
            }
            if (c == 10) {
                this.f18614c = z4Var.m18729b();
            } else if (c == 18) {
                this.f18615d = z4Var.m18729b();
            } else if (!super.m19482a(z4Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final void mo18861a(C7764a5 a5Var) throws IOException {
        String str = this.f18614c;
        if (str != null) {
            a5Var.m19538a(1, str);
        }
        String str2 = this.f18615d;
        if (str2 != null) {
            a5Var.m19538a(2, str2);
        }
        super.mo18861a(a5Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7936v)) {
            return false;
        }
        C7936v vVar = (C7936v) obj;
        String str = this.f18614c;
        if (str == null) {
            if (vVar.f18614c != null) {
                return false;
            }
        } else if (!str.equals(vVar.f18614c)) {
            return false;
        }
        String str2 = this.f18615d;
        if (str2 == null) {
            if (vVar.f18615d != null) {
                return false;
            }
        } else if (!str2.equals(vVar.f18615d)) {
            return false;
        }
        C7805f5 f5Var = this.f18218b;
        if (f5Var != null && !f5Var.m19402d()) {
            return this.f18218b.equals(vVar.f18218b);
        }
        C7805f5 f5Var2 = vVar.f18218b;
        return f5Var2 == null || f5Var2.m19402d();
    }

    public final int hashCode() {
        int hashCode = C7936v.class.getName().hashCode();
        String str = this.f18614c;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.f18615d;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        C7805f5 f5Var = this.f18218b;
        int i = 0;
        if (f5Var != null) {
            i = f5Var.m19402d() ? 0 : this.f18218b.hashCode();
        }
        return ((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }
}
