package p193e.p1545k.p1546a.p1556c.p1569k0;

import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.math.BigInteger;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
/* renamed from: e.k.a.c.k0.c */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/k0/c.class */
public class C23737c extends AbstractC23752r {

    /* renamed from: b */
    public static final BigInteger f65784b = BigInteger.valueOf(-2147483648L);

    /* renamed from: c */
    public static final BigInteger f65785c = BigInteger.valueOf(2147483647L);

    /* renamed from: d */
    public static final BigInteger f65786d = BigInteger.valueOf(Long.MIN_VALUE);

    /* renamed from: e */
    public static final BigInteger f65787e = BigInteger.valueOf(RecyclerView.FOREVER_NS);

    /* renamed from: a */
    public final BigInteger f65788a;

    public C23737c(BigInteger bigInteger) {
        this.f65788a = bigInteger;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: D */
    public boolean mo6142D() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: K */
    public long mo6136K() {
        return this.f65788a.longValue();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23756v, p193e.p1545k.p1546a.p1548b.AbstractC23388t
    /* renamed from: a */
    public EnumC23381m mo6146a() {
        return EnumC23381m.VALUE_NUMBER_INT;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1569k0.AbstractC23736b, p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: c */
    public final void mo5714c(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException, C23379k {
        abstractC23372g.mo5867U0(this.f65788a);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C23737c)) {
            return false;
        }
        return ((C23737c) obj).f65788a.equals(this.f65788a);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: f */
    public boolean mo6133f(boolean z) {
        return !BigInteger.ZERO.equals(this.f65788a);
    }

    public int hashCode() {
        return this.f65788a.hashCode();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: m */
    public String mo6126m() {
        return this.f65788a.toString();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: o */
    public boolean mo6124o() {
        return this.f65788a.compareTo(f65784b) >= 0 && this.f65788a.compareTo(f65785c) <= 0;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: p */
    public boolean mo6123p() {
        return this.f65788a.compareTo(f65786d) >= 0 && this.f65788a.compareTo(f65787e) <= 0;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: q */
    public double mo6122q() {
        return this.f65788a.doubleValue();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    /* renamed from: x */
    public int mo6116x() {
        return this.f65788a.intValue();
    }
}
