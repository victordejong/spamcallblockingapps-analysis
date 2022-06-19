package p193e.p1545k.p1546a.p1556c.p1569k0;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1552w.C23401g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
/* renamed from: e.k.a.c.k0.n */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/k0/n.class */
public class C23748n extends AbstractC23752r {

    /* renamed from: a */
    public final long f65820a;

    public C23748n(long j) {
        this.f65820a = j;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: D */
    public boolean mo6142D() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: E */
    public boolean mo6141E() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: K */
    public long mo6136K() {
        return this.f65820a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23756v, p193e.p1545k.p1546a.p1548b.AbstractC23388t
    /* renamed from: a */
    public EnumC23381m mo6146a() {
        return EnumC23381m.VALUE_NUMBER_INT;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23736b, p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: c */
    public final void mo5714c(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException, C23379k {
        abstractC23372g.mo5878K0(this.f65820a);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C23748n)) {
            return false;
        }
        if (((C23748n) obj).f65820a != this.f65820a) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: f */
    public boolean mo6133f(boolean z) {
        return this.f65820a != 0;
    }

    public int hashCode() {
        long j = this.f65820a;
        return ((int) (j >> 32)) ^ ((int) j);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: m */
    public String mo6126m() {
        long j = this.f65820a;
        String str = C23401g.f64798a;
        return (j > 2147483647L || j < -2147483648L) ? Long.toString(j) : C23401g.m7101m((int) j);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: o */
    public boolean mo6124o() {
        long j = this.f65820a;
        return j >= -2147483648L && j <= 2147483647L;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: p */
    public boolean mo6123p() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: q */
    public double mo6122q() {
        return this.f65820a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: x */
    public int mo6116x() {
        return (int) this.f65820a;
    }
}
