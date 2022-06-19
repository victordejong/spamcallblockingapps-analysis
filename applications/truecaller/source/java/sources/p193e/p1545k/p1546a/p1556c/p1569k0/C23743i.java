package p193e.p1545k.p1546a.p1556c.p1569k0;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1552w.C23401g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
/* renamed from: e.k.a.c.k0.i */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/k0/i.class */
public class C23743i extends AbstractC23752r {

    /* renamed from: a */
    public final float f65802a;

    public C23743i(float f) {
        this.f65802a = f;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: B */
    public boolean mo6144B() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: K */
    public long mo6136K() {
        return this.f65802a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23756v, p193e.p1545k.p1546a.p1548b.AbstractC23388t
    /* renamed from: a */
    public EnumC23381m mo6146a() {
        return EnumC23381m.VALUE_NUMBER_FLOAT;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23736b, p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: c */
    public final void mo5714c(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        abstractC23372g.mo5883G0(this.f65802a);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C23743i)) {
            return false;
        }
        if (Float.compare(this.f65802a, ((C23743i) obj).f65802a) != 0) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.f65802a);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: m */
    public String mo6126m() {
        float f = this.f65802a;
        String str = C23401g.f64798a;
        return Float.toString(f);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: o */
    public boolean mo6124o() {
        float f = this.f65802a;
        return f >= -2.14748365E9f && f <= 2.14748365E9f;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: p */
    public boolean mo6123p() {
        float f = this.f65802a;
        return f >= -9.223372E18f && f <= 9.223372E18f;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: q */
    public double mo6122q() {
        return this.f65802a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: x */
    public int mo6116x() {
        return (int) this.f65802a;
    }
}
