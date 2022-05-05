package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
/* renamed from: h.i.a.e.j.j.r */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/r.class */
public final class C7903r extends AbstractC7788d5<C7903r> {

    /* renamed from: c */
    public C7860m f18524c = null;

    /* renamed from: d */
    public C7917t f18525d = null;

    /* renamed from: e */
    public C7889p f18526e = null;

    /* renamed from: f */
    public C7815h f18527f = null;

    public C7903r() {
        this.f18218b = null;
        this.f18376a = -1;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final int mo18862a() {
        int a = super.mo18862a();
        C7860m mVar = this.f18524c;
        int i = a;
        if (mVar != null) {
            i = a + C7764a5.m19529b(1, mVar);
        }
        C7917t tVar = this.f18525d;
        int i2 = i;
        if (tVar != null) {
            i2 = i + C7764a5.m19529b(2, tVar);
        }
        C7889p pVar = this.f18526e;
        int i3 = i2;
        if (pVar != null) {
            i3 = i2 + C7764a5.m19529b(3, pVar);
        }
        C7815h hVar = this.f18527f;
        int i4 = i3;
        if (hVar != null) {
            i4 = i3 + AbstractC7918t0.m18961c(4, hVar);
        }
        return i4;
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
                if (this.f18524c == null) {
                    this.f18524c = new C7860m();
                }
                z4Var.m18731a(this.f18524c);
            } else if (c == 18) {
                if (this.f18525d == null) {
                    this.f18525d = new C7917t();
                }
                z4Var.m18731a(this.f18525d);
            } else if (c == 26) {
                if (this.f18526e == null) {
                    this.f18526e = new C7889p();
                }
                z4Var.m18731a(this.f18526e);
            } else if (c == 34) {
                this.f18527f = (C7815h) z4Var.m18732a(C7815h.m19366h());
            } else if (!super.m19482a(z4Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final void mo18861a(C7764a5 a5Var) throws IOException {
        C7860m mVar = this.f18524c;
        if (mVar != null) {
            a5Var.m19540a(1, mVar);
        }
        C7917t tVar = this.f18525d;
        if (tVar != null) {
            a5Var.m19540a(2, tVar);
        }
        C7889p pVar = this.f18526e;
        if (pVar != null) {
            a5Var.m19540a(3, pVar);
        }
        C7815h hVar = this.f18527f;
        if (hVar != null) {
            a5Var.m19539a(4, hVar);
        }
        super.mo18861a(a5Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7903r)) {
            return false;
        }
        C7903r rVar = (C7903r) obj;
        C7860m mVar = this.f18524c;
        if (mVar == null) {
            if (rVar.f18524c != null) {
                return false;
            }
        } else if (!mVar.equals(rVar.f18524c)) {
            return false;
        }
        C7917t tVar = this.f18525d;
        if (tVar == null) {
            if (rVar.f18525d != null) {
                return false;
            }
        } else if (!tVar.equals(rVar.f18525d)) {
            return false;
        }
        C7889p pVar = this.f18526e;
        if (pVar == null) {
            if (rVar.f18526e != null) {
                return false;
            }
        } else if (!pVar.equals(rVar.f18526e)) {
            return false;
        }
        C7815h hVar = this.f18527f;
        if (hVar == null) {
            if (rVar.f18527f != null) {
                return false;
            }
        } else if (!hVar.equals(rVar.f18527f)) {
            return false;
        }
        C7805f5 f5Var = this.f18218b;
        if (f5Var != null && !f5Var.m19402d()) {
            return this.f18218b.equals(rVar.f18218b);
        }
        C7805f5 f5Var2 = rVar.f18218b;
        return f5Var2 == null || f5Var2.m19402d();
    }

    public final int hashCode() {
        int hashCode = C7903r.class.getName().hashCode();
        C7860m mVar = this.f18524c;
        int hashCode2 = mVar == null ? 0 : mVar.hashCode();
        C7917t tVar = this.f18525d;
        int hashCode3 = tVar == null ? 0 : tVar.hashCode();
        C7889p pVar = this.f18526e;
        int hashCode4 = pVar == null ? 0 : pVar.hashCode();
        C7815h hVar = this.f18527f;
        int hashCode5 = hVar == null ? 0 : hVar.hashCode();
        C7805f5 f5Var = this.f18218b;
        int i = 0;
        if (f5Var != null) {
            i = f5Var.m19402d() ? 0 : this.f18218b.hashCode();
        }
        return ((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }
}
