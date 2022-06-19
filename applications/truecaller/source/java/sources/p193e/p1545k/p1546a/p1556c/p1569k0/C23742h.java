package p193e.p1545k.p1546a.p1556c.p1569k0;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1552w.C23401g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
/* renamed from: e.k.a.c.k0.h */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/k0/h.class */
public class C23742h extends AbstractC23752r {

    /* renamed from: a */
    public final double f65801a;

    public C23742h(double d) {
        this.f65801a = d;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: A */
    public boolean mo6145A() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: K */
    public long mo6136K() {
        return (long) this.f65801a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23756v, p193e.p1545k.p1546a.p1548b.AbstractC23388t
    /* renamed from: a */
    public EnumC23381m mo6146a() {
        return EnumC23381m.VALUE_NUMBER_FLOAT;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23736b, p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: c */
    public final void mo5714c(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        abstractC23372g.mo5885F0(this.f65801a);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C23742h)) {
            return false;
        }
        if (Double.compare(this.f65801a, ((C23742h) obj).f65801a) != 0) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f65801a);
        return ((int) (doubleToLongBits >> 32)) ^ ((int) doubleToLongBits);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: m */
    public String mo6126m() {
        double d = this.f65801a;
        String str = C23401g.f64798a;
        return Double.toString(d);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: o */
    public boolean mo6124o() {
        double d = this.f65801a;
        return d >= -2.147483648E9d && d <= 2.147483647E9d;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: p */
    public boolean mo6123p() {
        double d = this.f65801a;
        return d >= -9.223372036854776E18d && d <= 9.223372036854776E18d;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: q */
    public double mo6122q() {
        return this.f65801a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: x */
    public int mo6116x() {
        return (int) this.f65801a;
    }
}
