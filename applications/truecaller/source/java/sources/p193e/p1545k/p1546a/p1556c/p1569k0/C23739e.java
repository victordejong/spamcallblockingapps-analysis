package p193e.p1545k.p1546a.p1556c.p1569k0;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
/* renamed from: e.k.a.c.k0.e */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/k0/e.class */
public class C23739e extends AbstractC23756v {

    /* renamed from: b */
    public static final C23739e f65791b = new C23739e(true);

    /* renamed from: c */
    public static final C23739e f65792c = new C23739e(false);

    /* renamed from: a */
    public final boolean f65793a;

    public C23739e(boolean z) {
        this.f65793a = z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23756v, p193e.p1545k.p1546a.p1548b.AbstractC23388t
    /* renamed from: a */
    public EnumC23381m mo6146a() {
        return this.f65793a ? EnumC23381m.VALUE_TRUE : EnumC23381m.VALUE_FALSE;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23736b, p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: c */
    public final void mo5714c(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        abstractC23372g.mo5855k0(this.f65793a);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: e */
    public boolean mo6134e() {
        return this.f65793a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C23739e)) {
            return false;
        }
        if (this.f65793a != ((C23739e) obj).f65793a) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: f */
    public boolean mo6133f(boolean z) {
        return this.f65793a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: h */
    public double mo6131h(double d) {
        return this.f65793a ? (char) 0 : (char) 0;
    }

    public int hashCode() {
        return this.f65793a ? 3 : 1;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: j */
    public int mo6129j(int i) {
        return this.f65793a ? 1 : 0;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: l */
    public long mo6127l(long j) {
        return this.f65793a ? (char) 1 : (char) 0;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: m */
    public String mo6126m() {
        return this.f65793a ? "true" : "false";
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: n */
    public boolean mo6125n() {
        return this.f65793a;
    }

    public Object readResolve() {
        return this.f65793a ? f65791b : f65792c;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: v */
    public EnumC23747m mo6118v() {
        return EnumC23747m.BOOLEAN;
    }
}
