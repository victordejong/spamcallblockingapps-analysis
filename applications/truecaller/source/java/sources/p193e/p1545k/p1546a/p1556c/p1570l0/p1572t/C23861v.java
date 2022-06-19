package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i;
@AbstractC23429a
/* renamed from: e.k.a.c.l0.t.v */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/v.class */
public class C23861v extends AbstractC23849p0<Number> implements AbstractC23766i {

    /* renamed from: c */
    public static final C23861v f66013c = new C23861v(Number.class);

    /* renamed from: e.k.a.c.l0.t.v$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/v$a.class */
    public static final class C23862a extends AbstractC23860u0 {

        /* renamed from: c */
        public static final C23862a f66014c = new C23862a();

        public C23862a() {
            super(BigDecimal.class);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23860u0, p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: d */
        public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
            return false;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23860u0, p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: f */
        public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            String str;
            if (abstractC23372g.mo5887E(AbstractC23372g.EnumC23373a.WRITE_BIGDECIMAL_AS_PLAIN)) {
                BigDecimal bigDecimal = (BigDecimal) obj;
                int scale = bigDecimal.scale();
                if (!(scale >= -9999 && scale <= 9999)) {
                    abstractC23425a0.m6886P(String.format("Attempt to write plain `java.math.BigDecimal` (see JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN) with illegal scale (%d): needs to be between [-%d, %d]", Integer.valueOf(bigDecimal.scale()), 9999, 9999), new Object[0]);
                    throw null;
                }
                str = bigDecimal.toPlainString();
            } else {
                str = obj.toString();
            }
            abstractC23372g.mo5868T1(str);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23860u0
        /* renamed from: p */
        public String mo5994p(Object obj) {
            throw new IllegalStateException();
        }
    }

    public C23861v(Class<? extends Number> cls) {
        super(cls, false);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i
    /* renamed from: b */
    public AbstractC23890n<?> mo5992b(AbstractC23425a0 abstractC23425a0, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23311k.C23315d m6014l = m6014l(abstractC23425a0, abstractC23462d, this.f65984a);
        return (m6014l == null || m6014l.f64499b.ordinal() != 8) ? this : this.f65984a == BigDecimal.class ? C23862a.f66014c : C23858t0.f66011c;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        Number number = (Number) obj;
        if (number instanceof BigDecimal) {
            abstractC23372g.mo5872Q0((BigDecimal) number);
        } else if (number instanceof BigInteger) {
            abstractC23372g.mo5867U0((BigInteger) number);
        } else if (number instanceof Long) {
            abstractC23372g.mo5878K0(number.longValue());
        } else if (number instanceof Double) {
            abstractC23372g.mo5885F0(number.doubleValue());
        } else if (number instanceof Float) {
            abstractC23372g.mo5883G0(number.floatValue());
        } else if ((number instanceof Integer) || (number instanceof Byte) || (number instanceof Short)) {
            abstractC23372g.mo5880J0(number.intValue());
        } else {
            abstractC23372g.mo5877L0(number.toString());
        }
    }
}
