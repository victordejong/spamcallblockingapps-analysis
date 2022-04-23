package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
/* renamed from: h.i.a.e.j.j.m */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/m.class */
public final class C7860m extends AbstractC7788d5<C7860m> {

    /* renamed from: c */
    public String f18407c = null;

    /* renamed from: d */
    public String f18408d = null;

    /* renamed from: e */
    public C7853l f18409e = null;

    /* renamed from: f */
    public C7832j f18410f = null;

    /* renamed from: g */
    public Integer f18411g = null;

    /* renamed from: h */
    public C7867n[] f18412h = C7867n.m19171d();

    public C7860m() {
        this.f18218b = null;
        this.f18376a = -1;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final int mo18862a() {
        int a = super.mo18862a();
        String str = this.f18407c;
        int i = a;
        if (str != null) {
            i = a + C7764a5.m19528b(1, str);
        }
        String str2 = this.f18408d;
        int i2 = i;
        if (str2 != null) {
            i2 = i + C7764a5.m19528b(2, str2);
        }
        C7853l lVar = this.f18409e;
        int i3 = i2;
        if (lVar != null) {
            i3 = i2 + C7764a5.m19529b(3, lVar);
        }
        C7832j jVar = this.f18410f;
        int i4 = i3;
        if (jVar != null) {
            i4 = i3 + AbstractC7918t0.m18961c(4, jVar);
        }
        Integer num = this.f18411g;
        int i5 = i4;
        if (num != null) {
            i5 = i4 + C7764a5.m19525c(5, num.intValue());
        }
        C7867n[] nVarArr = this.f18412h;
        int i6 = i5;
        if (nVarArr != null) {
            i6 = i5;
            if (nVarArr.length > 0) {
                int i7 = 0;
                while (true) {
                    C7867n[] nVarArr2 = this.f18412h;
                    i6 = i5;
                    if (i7 >= nVarArr2.length) {
                        break;
                    }
                    C7867n nVar = nVarArr2[i7];
                    i5 = i5;
                    if (nVar != null) {
                        i5 += C7764a5.m19529b(6, nVar);
                    }
                    i7++;
                }
            }
        }
        return i6;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final /* synthetic */ AbstractC7843j5 mo18860a(C7970z4 z4Var) throws IOException {
        m19245b(z4Var);
        return this;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final void mo18861a(C7764a5 a5Var) throws IOException {
        String str = this.f18407c;
        if (str != null) {
            a5Var.m19538a(1, str);
        }
        String str2 = this.f18408d;
        if (str2 != null) {
            a5Var.m19538a(2, str2);
        }
        C7853l lVar = this.f18409e;
        if (lVar != null) {
            a5Var.m19540a(3, lVar);
        }
        C7832j jVar = this.f18410f;
        if (jVar != null) {
            a5Var.m19539a(4, jVar);
        }
        Integer num = this.f18411g;
        if (num != null) {
            a5Var.m19531b(5, num.intValue());
        }
        C7867n[] nVarArr = this.f18412h;
        if (nVarArr != null && nVarArr.length > 0) {
            int i = 0;
            while (true) {
                C7867n[] nVarArr2 = this.f18412h;
                if (i >= nVarArr2.length) {
                    break;
                }
                C7867n nVar = nVarArr2[i];
                if (nVar != null) {
                    a5Var.m19540a(6, nVar);
                }
                i++;
            }
        }
        super.mo18861a(a5Var);
    }

    /* renamed from: b */
    public final C7860m m19245b(C7970z4 z4Var) throws IOException {
        while (true) {
            int c = z4Var.m18726c();
            if (c == 0) {
                return this;
            }
            if (c == 10) {
                this.f18407c = z4Var.m18729b();
            } else if (c == 18) {
                this.f18408d = z4Var.m18729b();
            } else if (c == 26) {
                if (this.f18409e == null) {
                    this.f18409e = new C7853l();
                }
                z4Var.m18731a(this.f18409e);
            } else if (c == 34) {
                this.f18410f = (C7832j) z4Var.m18732a(C7832j.m19339h());
            } else if (c == 40) {
                int a = z4Var.m18735a();
                try {
                    int d = z4Var.m18724d();
                    if (d < 0 || d > 3) {
                        StringBuilder sb = new StringBuilder(55);
                        sb.append(d);
                        sb.append(" is not a valid enum ApplicationProcessState");
                        throw new IllegalArgumentException(sb.toString());
                        break;
                    }
                    this.f18411g = Integer.valueOf(d);
                } catch (IllegalArgumentException e) {
                    z4Var.m18734a(a);
                    m19482a(z4Var, c);
                }
            } else if (c == 50) {
                int a2 = C7866m5.m19172a(z4Var, 50);
                C7867n[] nVarArr = this.f18412h;
                int length = nVarArr == null ? 0 : nVarArr.length;
                C7867n[] nVarArr2 = new C7867n[a2 + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.f18412h, 0, nVarArr2, 0, length);
                    i = length;
                }
                while (i < nVarArr2.length - 1) {
                    nVarArr2[i] = new C7867n();
                    z4Var.m18731a(nVarArr2[i]);
                    z4Var.m18726c();
                    i++;
                }
                nVarArr2[i] = new C7867n();
                z4Var.m18731a(nVarArr2[i]);
                this.f18412h = nVarArr2;
            } else if (!super.m19482a(z4Var, c)) {
                return this;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7860m)) {
            return false;
        }
        C7860m mVar = (C7860m) obj;
        String str = this.f18407c;
        if (str == null) {
            if (mVar.f18407c != null) {
                return false;
            }
        } else if (!str.equals(mVar.f18407c)) {
            return false;
        }
        String str2 = this.f18408d;
        if (str2 == null) {
            if (mVar.f18408d != null) {
                return false;
            }
        } else if (!str2.equals(mVar.f18408d)) {
            return false;
        }
        C7853l lVar = this.f18409e;
        if (lVar == null) {
            if (mVar.f18409e != null) {
                return false;
            }
        } else if (!lVar.equals(mVar.f18409e)) {
            return false;
        }
        C7832j jVar = this.f18410f;
        if (jVar == null) {
            if (mVar.f18410f != null) {
                return false;
            }
        } else if (!jVar.equals(mVar.f18410f)) {
            return false;
        }
        Integer num = this.f18411g;
        if (num == null) {
            if (mVar.f18411g != null) {
                return false;
            }
        } else if (!num.equals(mVar.f18411g)) {
            return false;
        }
        if (!C7822h5.m19354a(this.f18412h, mVar.f18412h)) {
            return false;
        }
        C7805f5 f5Var = this.f18218b;
        if (f5Var != null && !f5Var.m19402d()) {
            return this.f18218b.equals(mVar.f18218b);
        }
        C7805f5 f5Var2 = mVar.f18218b;
        return f5Var2 == null || f5Var2.m19402d();
    }

    public final int hashCode() {
        int hashCode = C7860m.class.getName().hashCode();
        String str = this.f18407c;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.f18408d;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        C7853l lVar = this.f18409e;
        int hashCode4 = lVar == null ? 0 : lVar.hashCode();
        C7832j jVar = this.f18410f;
        int hashCode5 = jVar == null ? 0 : jVar.hashCode();
        Integer num = this.f18411g;
        int intValue = num == null ? 0 : num.intValue();
        int a = C7822h5.m19355a(this.f18412h);
        C7805f5 f5Var = this.f18218b;
        int i = 0;
        if (f5Var != null) {
            i = f5Var.m19402d() ? 0 : this.f18218b.hashCode();
        }
        return ((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + intValue) * 31) + a) * 31) + i;
    }
}
