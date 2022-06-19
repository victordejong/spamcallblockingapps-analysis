package p000;
/* renamed from: cs */
/* loaded from: classes-dex2jar.jar:cs.class */
public final class C1259cs {

    /* renamed from: a */
    public final int f5670a;

    /* renamed from: b */
    public final lh[] f5671b;

    /* renamed from: c */
    public final zr f5672c;

    /* renamed from: d */
    public final Object f5673d;

    public C1259cs(lh[] lhVarArr, yr[] yrVarArr, Object obj) {
        this.f5671b = lhVarArr;
        this.f5672c = new zr(yrVarArr);
        this.f5673d = obj;
        this.f5670a = lhVarArr.length;
    }

    /* renamed from: a */
    public boolean m3003a(C1259cs c1259cs) {
        if (c1259cs == null || c1259cs.f5672c.a != this.f5672c.a) {
            return false;
        }
        for (int i = 0; i < this.f5672c.a; i++) {
            if (!m3002b(c1259cs, i)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public boolean m3002b(C1259cs c1259cs, int i) {
        if (c1259cs == null) {
            return false;
        }
        boolean z = false;
        if (nu.b(this.f5671b[i], c1259cs.f5671b[i])) {
            z = false;
            if (nu.b(this.f5672c.a(i), c1259cs.f5672c.a(i))) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: c */
    public boolean m3001c(int i) {
        return this.f5671b[i] != null;
    }
}
