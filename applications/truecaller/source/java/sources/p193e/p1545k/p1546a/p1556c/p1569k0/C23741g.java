package p193e.p1545k.p1546a.p1556c.p1569k0;

import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.math.BigDecimal;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
/* renamed from: e.k.a.c.k0.g */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/k0/g.class */
public class C23741g extends AbstractC23752r {

    /* renamed from: b */
    public static final C23741g f65795b = new C23741g(BigDecimal.ZERO);

    /* renamed from: c */
    public static final BigDecimal f65796c = BigDecimal.valueOf(-2147483648L);

    /* renamed from: d */
    public static final BigDecimal f65797d = BigDecimal.valueOf(2147483647L);

    /* renamed from: e */
    public static final BigDecimal f65798e = BigDecimal.valueOf(Long.MIN_VALUE);

    /* renamed from: f */
    public static final BigDecimal f65799f = BigDecimal.valueOf((long) RecyclerView.FOREVER_NS);

    /* renamed from: a */
    public final BigDecimal f65800a;

    public C23741g(BigDecimal bigDecimal) {
        this.f65800a = bigDecimal;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: K */
    public long mo6136K() {
        return this.f65800a.longValue();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23756v, p193e.p1545k.p1546a.p1548b.AbstractC23388t
    /* renamed from: a */
    public EnumC23381m mo6146a() {
        return EnumC23381m.VALUE_NUMBER_FLOAT;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23736b, p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: c */
    public final void mo5714c(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException, C23379k {
        abstractC23372g.mo5872Q0(this.f65800a);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C23741g)) {
            return false;
        }
        if (((C23741g) obj).f65800a.compareTo(this.f65800a) != 0) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Double.valueOf(mo6122q()).hashCode();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: m */
    public String mo6126m() {
        return this.f65800a.toString();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: o */
    public boolean mo6124o() {
        return this.f65800a.compareTo(f65796c) >= 0 && this.f65800a.compareTo(f65797d) <= 0;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: p */
    public boolean mo6123p() {
        return this.f65800a.compareTo(f65798e) >= 0 && this.f65800a.compareTo(f65799f) <= 0;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: q */
    public double mo6122q() {
        return this.f65800a.doubleValue();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: x */
    public int mo6116x() {
        return this.f65800a.intValue();
    }
}
