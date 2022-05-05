package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
/* renamed from: h.i.a.e.j.j.t */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/t.class */
public final class C7917t extends AbstractC7788d5<C7917t> {

    /* renamed from: k */
    public static volatile C7917t[] f18567k;

    /* renamed from: c */
    public String f18568c = null;

    /* renamed from: d */
    public Boolean f18569d = null;

    /* renamed from: e */
    public Long f18570e = null;

    /* renamed from: f */
    public Long f18571f = null;

    /* renamed from: g */
    public C7929u[] f18572g = C7929u.m18866d();

    /* renamed from: h */
    public C7917t[] f18573h = m18992d();

    /* renamed from: i */
    public C7936v[] f18574i = C7936v.m18859d();

    /* renamed from: j */
    public C7910s[] f18575j = C7910s.m19043d();

    public C7917t() {
        this.f18218b = null;
        this.f18376a = -1;
    }

    /* renamed from: d */
    public static C7917t[] m18992d() {
        if (f18567k == null) {
            synchronized (C7822h5.f18340b) {
                if (f18567k == null) {
                    f18567k = new C7917t[0];
                }
            }
        }
        return f18567k;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final int mo18862a() {
        int a = super.mo18862a();
        String str = this.f18568c;
        int i = a;
        if (str != null) {
            i = a + C7764a5.m19528b(1, str);
        }
        Boolean bool = this.f18569d;
        int i2 = i;
        if (bool != null) {
            bool.booleanValue();
            i2 = i + C7764a5.m19523e(2) + 1;
        }
        Long l = this.f18570e;
        int i3 = i2;
        if (l != null) {
            i3 = i2 + C7764a5.m19530b(4, l.longValue());
        }
        Long l2 = this.f18571f;
        int i4 = i3;
        if (l2 != null) {
            i4 = i3 + C7764a5.m19530b(5, l2.longValue());
        }
        C7929u[] uVarArr = this.f18572g;
        int i5 = 0;
        int i6 = i4;
        if (uVarArr != null) {
            i6 = i4;
            if (uVarArr.length > 0) {
                i6 = i4;
                int i7 = 0;
                while (true) {
                    C7929u[] uVarArr2 = this.f18572g;
                    if (i7 >= uVarArr2.length) {
                        break;
                    }
                    C7929u uVar = uVarArr2[i7];
                    i6 = i6;
                    if (uVar != null) {
                        i6 += C7764a5.m19529b(6, uVar);
                    }
                    i7++;
                }
            }
        }
        C7917t[] tVarArr = this.f18573h;
        int i8 = i6;
        if (tVarArr != null) {
            i8 = i6;
            if (tVarArr.length > 0) {
                int i9 = 0;
                while (true) {
                    C7917t[] tVarArr2 = this.f18573h;
                    if (i9 >= tVarArr2.length) {
                        break;
                    }
                    C7917t tVar = tVarArr2[i9];
                    i6 = i6;
                    if (tVar != null) {
                        i6 += C7764a5.m19529b(7, tVar);
                    }
                    i9++;
                }
                i8 = i6;
            }
        }
        C7936v[] vVarArr = this.f18574i;
        int i10 = i8;
        if (vVarArr != null) {
            i10 = i8;
            if (vVarArr.length > 0) {
                i10 = i8;
                int i11 = 0;
                while (true) {
                    C7936v[] vVarArr2 = this.f18574i;
                    if (i11 >= vVarArr2.length) {
                        break;
                    }
                    C7936v vVar = vVarArr2[i11];
                    i10 = i10;
                    if (vVar != null) {
                        i10 += C7764a5.m19529b(8, vVar);
                    }
                    i11++;
                }
            }
        }
        C7910s[] sVarArr = this.f18575j;
        int i12 = i10;
        if (sVarArr != null) {
            i12 = i10;
            if (sVarArr.length > 0) {
                while (true) {
                    C7910s[] sVarArr2 = this.f18575j;
                    i12 = i10;
                    if (i5 >= sVarArr2.length) {
                        break;
                    }
                    C7910s sVar = sVarArr2[i5];
                    i10 = i10;
                    if (sVar != null) {
                        i10 += C7764a5.m19529b(9, sVar);
                    }
                    i5++;
                }
            }
        }
        return i12;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final /* synthetic */ AbstractC7843j5 mo18860a(C7970z4 z4Var) throws IOException {
        while (true) {
            int c = z4Var.m18726c();
            if (c == 0) {
                return this;
            }
            if (c != 10) {
                boolean z = true;
                if (c == 16) {
                    if (z4Var.m18724d() == 0) {
                        z = false;
                    }
                    this.f18569d = Boolean.valueOf(z);
                } else if (c == 32) {
                    this.f18570e = Long.valueOf(z4Var.m18722e());
                } else if (c == 40) {
                    this.f18571f = Long.valueOf(z4Var.m18722e());
                } else if (c == 50) {
                    int a = C7866m5.m19172a(z4Var, 50);
                    C7929u[] uVarArr = this.f18572g;
                    int length = uVarArr == null ? 0 : uVarArr.length;
                    C7929u[] uVarArr2 = new C7929u[a + length];
                    int i = length;
                    if (length != 0) {
                        System.arraycopy(this.f18572g, 0, uVarArr2, 0, length);
                        i = length;
                    }
                    while (i < uVarArr2.length - 1) {
                        uVarArr2[i] = new C7929u();
                        z4Var.m18731a(uVarArr2[i]);
                        z4Var.m18726c();
                        i++;
                    }
                    uVarArr2[i] = new C7929u();
                    z4Var.m18731a(uVarArr2[i]);
                    this.f18572g = uVarArr2;
                } else if (c == 58) {
                    int a2 = C7866m5.m19172a(z4Var, 58);
                    C7917t[] tVarArr = this.f18573h;
                    int length2 = tVarArr == null ? 0 : tVarArr.length;
                    C7917t[] tVarArr2 = new C7917t[a2 + length2];
                    int i2 = length2;
                    if (length2 != 0) {
                        System.arraycopy(this.f18573h, 0, tVarArr2, 0, length2);
                        i2 = length2;
                    }
                    while (i2 < tVarArr2.length - 1) {
                        tVarArr2[i2] = new C7917t();
                        z4Var.m18731a(tVarArr2[i2]);
                        z4Var.m18726c();
                        i2++;
                    }
                    tVarArr2[i2] = new C7917t();
                    z4Var.m18731a(tVarArr2[i2]);
                    this.f18573h = tVarArr2;
                } else if (c == 66) {
                    int a3 = C7866m5.m19172a(z4Var, 66);
                    C7936v[] vVarArr = this.f18574i;
                    int length3 = vVarArr == null ? 0 : vVarArr.length;
                    C7936v[] vVarArr2 = new C7936v[a3 + length3];
                    int i3 = length3;
                    if (length3 != 0) {
                        System.arraycopy(this.f18574i, 0, vVarArr2, 0, length3);
                        i3 = length3;
                    }
                    while (i3 < vVarArr2.length - 1) {
                        vVarArr2[i3] = new C7936v();
                        z4Var.m18731a(vVarArr2[i3]);
                        z4Var.m18726c();
                        i3++;
                    }
                    vVarArr2[i3] = new C7936v();
                    z4Var.m18731a(vVarArr2[i3]);
                    this.f18574i = vVarArr2;
                } else if (c == 74) {
                    int a4 = C7866m5.m19172a(z4Var, 74);
                    C7910s[] sVarArr = this.f18575j;
                    int length4 = sVarArr == null ? 0 : sVarArr.length;
                    C7910s[] sVarArr2 = new C7910s[a4 + length4];
                    int i4 = length4;
                    if (length4 != 0) {
                        System.arraycopy(this.f18575j, 0, sVarArr2, 0, length4);
                        i4 = length4;
                    }
                    while (i4 < sVarArr2.length - 1) {
                        sVarArr2[i4] = new C7910s();
                        z4Var.m18731a(sVarArr2[i4]);
                        z4Var.m18726c();
                        i4++;
                    }
                    sVarArr2[i4] = new C7910s();
                    z4Var.m18731a(sVarArr2[i4]);
                    this.f18575j = sVarArr2;
                } else if (!super.m19482a(z4Var, c)) {
                    return this;
                }
            } else {
                this.f18568c = z4Var.m18729b();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final void mo18861a(C7764a5 a5Var) throws IOException {
        String str = this.f18568c;
        if (str != null) {
            a5Var.m19538a(1, str);
        }
        Boolean bool = this.f18569d;
        int i = 0;
        if (bool != null) {
            boolean booleanValue = bool.booleanValue();
            a5Var.m19542a(2, 0);
            a5Var.m19544a(booleanValue ? (byte) 1 : (byte) 0);
        }
        Long l = this.f18570e;
        if (l != null) {
            a5Var.m19541a(4, l.longValue());
        }
        Long l2 = this.f18571f;
        if (l2 != null) {
            a5Var.m19541a(5, l2.longValue());
        }
        C7929u[] uVarArr = this.f18572g;
        if (uVarArr != null && uVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                C7929u[] uVarArr2 = this.f18572g;
                if (i2 >= uVarArr2.length) {
                    break;
                }
                C7929u uVar = uVarArr2[i2];
                if (uVar != null) {
                    a5Var.m19540a(6, uVar);
                }
                i2++;
            }
        }
        C7917t[] tVarArr = this.f18573h;
        if (tVarArr != null && tVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                C7917t[] tVarArr2 = this.f18573h;
                if (i3 >= tVarArr2.length) {
                    break;
                }
                C7917t tVar = tVarArr2[i3];
                if (tVar != null) {
                    a5Var.m19540a(7, tVar);
                }
                i3++;
            }
        }
        C7936v[] vVarArr = this.f18574i;
        if (vVarArr != null && vVarArr.length > 0) {
            int i4 = 0;
            while (true) {
                C7936v[] vVarArr2 = this.f18574i;
                if (i4 >= vVarArr2.length) {
                    break;
                }
                C7936v vVar = vVarArr2[i4];
                if (vVar != null) {
                    a5Var.m19540a(8, vVar);
                }
                i4++;
            }
        }
        C7910s[] sVarArr = this.f18575j;
        if (sVarArr != null && sVarArr.length > 0) {
            while (true) {
                C7910s[] sVarArr2 = this.f18575j;
                if (i >= sVarArr2.length) {
                    break;
                }
                C7910s sVar = sVarArr2[i];
                if (sVar != null) {
                    a5Var.m19540a(9, sVar);
                }
                i++;
            }
        }
        super.mo18861a(a5Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7917t)) {
            return false;
        }
        C7917t tVar = (C7917t) obj;
        String str = this.f18568c;
        if (str == null) {
            if (tVar.f18568c != null) {
                return false;
            }
        } else if (!str.equals(tVar.f18568c)) {
            return false;
        }
        Boolean bool = this.f18569d;
        if (bool == null) {
            if (tVar.f18569d != null) {
                return false;
            }
        } else if (!bool.equals(tVar.f18569d)) {
            return false;
        }
        Long l = this.f18570e;
        if (l == null) {
            if (tVar.f18570e != null) {
                return false;
            }
        } else if (!l.equals(tVar.f18570e)) {
            return false;
        }
        Long l2 = this.f18571f;
        if (l2 == null) {
            if (tVar.f18571f != null) {
                return false;
            }
        } else if (!l2.equals(tVar.f18571f)) {
            return false;
        }
        if (!C7822h5.m19354a(this.f18572g, tVar.f18572g) || !C7822h5.m19354a(this.f18573h, tVar.f18573h) || !C7822h5.m19354a(this.f18574i, tVar.f18574i) || !C7822h5.m19354a(this.f18575j, tVar.f18575j)) {
            return false;
        }
        C7805f5 f5Var = this.f18218b;
        if (f5Var != null && !f5Var.m19402d()) {
            return this.f18218b.equals(tVar.f18218b);
        }
        C7805f5 f5Var2 = tVar.f18218b;
        return f5Var2 == null || f5Var2.m19402d();
    }

    public final int hashCode() {
        int hashCode = C7917t.class.getName().hashCode();
        String str = this.f18568c;
        int hashCode2 = str == null ? 0 : str.hashCode();
        Boolean bool = this.f18569d;
        int hashCode3 = bool == null ? 0 : bool.hashCode();
        Long l = this.f18570e;
        int hashCode4 = l == null ? 0 : l.hashCode();
        Long l2 = this.f18571f;
        int hashCode5 = l2 == null ? 0 : l2.hashCode();
        int a = C7822h5.m19355a(this.f18572g);
        int a2 = C7822h5.m19355a(this.f18573h);
        int a3 = C7822h5.m19355a(this.f18574i);
        int a4 = C7822h5.m19355a(this.f18575j);
        C7805f5 f5Var = this.f18218b;
        int i = 0;
        if (f5Var != null) {
            i = f5Var.m19402d() ? 0 : this.f18218b.hashCode();
        }
        return ((((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + a) * 31) + a2) * 31) + a3) * 31) + a4) * 31) + i;
    }
}
