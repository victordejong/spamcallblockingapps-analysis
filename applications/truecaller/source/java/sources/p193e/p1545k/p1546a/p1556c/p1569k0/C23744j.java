package p193e.p1545k.p1546a.p1556c.p1569k0;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1552w.C23401g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
/* renamed from: e.k.a.c.k0.j */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/k0/j.class */
public class C23744j extends AbstractC23752r {

    /* renamed from: b */
    public static final C23744j[] f65803b = new C23744j[12];

    /* renamed from: a */
    public final int f65804a;

    static {
        for (int i = 0; i < 12; i++) {
            f65803b[i] = new C23744j(i - 1);
        }
    }

    public C23744j(int i) {
        this.f65804a = i;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: C */
    public boolean mo6143C() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: D */
    public boolean mo6142D() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: K */
    public long mo6136K() {
        return this.f65804a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23756v, p193e.p1545k.p1546a.p1548b.AbstractC23388t
    /* renamed from: a */
    public EnumC23381m mo6146a() {
        return EnumC23381m.VALUE_NUMBER_INT;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23736b, p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: c */
    public final void mo5714c(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException, C23379k {
        abstractC23372g.mo5880J0(this.f65804a);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C23744j)) {
            return false;
        }
        if (((C23744j) obj).f65804a != this.f65804a) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: f */
    public boolean mo6133f(boolean z) {
        return this.f65804a != 0;
    }

    public int hashCode() {
        return this.f65804a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: m */
    public String mo6126m() {
        return C23401g.m7101m(this.f65804a);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: o */
    public boolean mo6124o() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: p */
    public boolean mo6123p() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: q */
    public double mo6122q() {
        return this.f65804a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: x */
    public int mo6116x() {
        return this.f65804a;
    }
}
