package p193e.p1545k.p1546a.p1556c.p1569k0;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1552w.C23400f;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
/* renamed from: e.k.a.c.k0.u */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/k0/u.class */
public class C23755u extends AbstractC23756v {

    /* renamed from: b */
    public static final C23755u f65826b = new C23755u("");

    /* renamed from: a */
    public final String f65827a;

    public C23755u(String str) {
        this.f65827a = str;
    }

    /* renamed from: M */
    public static C23755u m6147M(String str) {
        if (str == null) {
            return null;
        }
        return str.isEmpty() ? f65826b : new C23755u(str);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: L */
    public String mo6135L() {
        return this.f65827a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23756v, p193e.p1545k.p1546a.p1548b.AbstractC23388t
    /* renamed from: a */
    public EnumC23381m mo6146a() {
        return EnumC23381m.VALUE_STRING;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23736b, p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: c */
    public final void mo5714c(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        String str = this.f65827a;
        if (str == null) {
            abstractC23372g.mo5888D0();
        } else {
            abstractC23372g.mo5868T1(str);
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C23755u)) {
            return false;
        }
        return ((C23755u) obj).f65827a.equals(this.f65827a);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: f */
    public boolean mo6133f(boolean z) {
        String str = this.f65827a;
        boolean z2 = z;
        if (str != null) {
            String trim = str.trim();
            if ("true".equals(trim)) {
                return true;
            }
            z2 = z;
            if ("false".equals(trim)) {
                z2 = false;
            }
        }
        return z2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [double] */
    /* JADX WARN: Type inference failed for: r4v0, types: [double] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: h */
    public double mo6131h(double d) {
        String str = this.f65827a;
        String str2 = C23400f.f64796a;
        if (str != null) {
            String trim = str.trim();
            if (trim.length() != 0) {
                try {
                    d = C23400f.m7118e(trim);
                } catch (NumberFormatException e) {
                }
            }
        }
        return d;
    }

    public int hashCode() {
        return this.f65827a.hashCode();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: j */
    public int mo6129j(int i) {
        return C23400f.m7121b(this.f65827a, i);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: l */
    public long mo6127l(long j) {
        return C23400f.m7120c(this.f65827a, j);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: m */
    public String mo6126m() {
        return this.f65827a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: v */
    public EnumC23747m mo6118v() {
        return EnumC23747m.STRING;
    }
}
